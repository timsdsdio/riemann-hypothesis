#!/usr/bin/env python3
"""Read-only guard for a pinned research candidate, without executing its code."""
import argparse, json, pathlib, re, subprocess, sys

FROZEN = (
    "src/Challenge.lean", "comparator.json", "export-targets.txt",
    "comparator/FormalConjecturesChallenge.lean",
    "comparator/formal-conjectures.json",
    "comparator/formal-conjectures-export-targets.txt",
    "src/Statements.lean", "lean-toolchain", "lake-manifest.json", "lakefile.toml",
)
def guard(repo, manifest):
    def git(*args):
        return subprocess.check_output(["git", "-C", str(repo), *args])
    def sha(s):
        if not isinstance(s, str) or not re.fullmatch(r"[0-9a-f]{40}", s):
            raise ValueError("Expected a full immutable Git object ID")
        return s
    def tree(commit):
        rows = {}
        for row in git("ls-tree", "-r", "-z", commit).split(b"\0"):
            if not row:
                continue
            info, path = row.split(b"\t", 1)
            rows[path.decode("utf-8")] = info.decode("ascii")
        return rows
    baseline, candidate = sha(manifest["baseline"]), sha(manifest["candidate"])
    expected = sha(manifest["candidate_tree"])
    if git("rev-parse", candidate + "^{tree}").decode().strip() != expected:
        raise ValueError("Candidate tree does not match the manifest")
    a, b = tree(baseline), tree(candidate)
    if any(p not in a for p in FROZEN):
        raise ValueError("Missing protected baseline file")
    changed = sorted(p for p in a.keys() | b.keys() if a.get(p) != b.get(p))
    protected = [p for p in FROZEN if a.get(p) != b.get(p)]
    nonproof = [p for p in changed if not (p.startswith("src/") and p.endswith(".lean"))]
    modes = [p for p in changed if p in b and not b[p].startswith("100644 blob ")]
    if protected or nonproof or modes:
        raise ValueError(json.dumps({"protected_changes": protected, "nonproof_changes": nonproof, "unexpected_modes": modes}))
    return {
        "baseline": baseline, "candidate": candidate, "candidate_tree": expected,
        "static_guard": "pass", "changed_lean_files": len(changed), "changed_paths": changed,
        "incremental_build": "not_run", "independent_comparator": "not_run",
        "note": "Static source-integrity checks only. No mathematical verification or build was performed."
    }

if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo", type=pathlib.Path, required=True)
    ap.add_argument("--manifest", type=pathlib.Path, required=True)
    ap.add_argument("--output", type=pathlib.Path, required=True)
    args = ap.parse_args()
    result = guard(args.repo, json.loads(args.manifest.read_text()))
    args.output.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))

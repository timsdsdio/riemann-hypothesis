# ProofMiner staging protocol

The research fork stages substantial experiments without adding work to the upstream review queue. The fork is public. Do not store secrets, machine credentials, or private material in these branches.

## Branch separation

- Frozen benchmark: research-baseline-2026-11-24-9282d3a1. Never move this tag.
- proofminer/staging: proof-only integration branch, initially at the frozen benchmark.
- proofminer/experiment/*: candidate mathematical changes, not necessarily verified.
- proofminer/ci: control plane only. Changes here are never part of a mathematical upstream PR.

The candidate manifest pins an exact commit and tree. Updating the manifest by pushing to proofminer/ci requests a read-only hosted static check. It does not execute candidate code. The report explicitly marks incremental build and independent Comparator as not run. It is not a proof verification badge.

## Gates for promotion

1. Static guard: preserve both challenge configurations, export targets, challenge files, Statements.lean, and pinned compiler/package/build configuration. Allow only ordinary Lean source files to change. This is deliberately stricter than upstream's challenge-files check. Run the regression fixtures before the guard.
2. Incremental build: on an isolated Linux worker, restore the pinned verified baseline cache, check its consistency (lake build --no-build), then apply the exact candidate and run lake build. Recheck lake build --no-build and record source SHA/tree, toolchain, dependency pins, commands, exit status, and logs. Use the upstream build harness when the required Linux facilities are available. Otherwise label the local equivalent as an incremental Lake build, not as upstream CI.
3. Proof audit: check every exported theorem in comparator.json, preservation of retained interfaces, and absence of new axiom dependencies. Compare the candidate to the frozen baseline for benchmark measurements.
4. Independent Comparator: fresh Linux checkout with bubblewrap, fetch only Mathlib's official cache and run the pinned upstream lake comparator procedure. Do not restore the project's compiled cache into this fresh replay. This checks the actual proof, not the formal-conjectures placeholder rehearsal. For the second challenge use the pinned repository's documented formal-conjectures bridge/export procedure and unchanged configuration. Preserve judge logs; never report a successful check unless it actually ran to completion.
5. Upstream publication: only after a significant, coherent change has been verified, inspect current main and overlapping PRs. Port a focused mathematical change onto current upstream main, fetch its cache, rerun the required full incremental build and applicable proof checks. Follow AGENTS.md; do not attach research CI files, an unrelated overhaul, or local build reports to the upstream PR.

## Infrastructure status

The upstream workflow uses its own RiemannHypothesisBuild runner group, large Linux hosts, trusted ci-prepare/ci-build scripts, and protected cache publication credentials. The fork has no registered runners. The static job is GitHub-hosted. Full builds can use our existing isolated Linux environment for bounded experiments; a dedicated sufficiently provisioned Linux worker is needed for reliable large fresh replays. Upstream recommends ideally 128 GiB RAM, at least 250 GiB free SSD, bubblewrap and a dedicated account. Do not enroll the personal laptop as a public-fork self-hosted runner.

No upstream queue, inbox, label, or cache-publication workflow is required for research. No upstream secrets or runner access assumed. Do not change the fork default branch or settings simply to obtain a green badge.

## Measurements

Record baseline/candidate SHA, exact declaration inventory, source-line count, dependency graph, elapsed time and CPU/memory/cache settings. Compare like-for-like builds. Keep exploratory model judgments and negative tests as artifacts; only accept claims supported by reproducible verification. Distinguish cumulative staging improvements from isolated upstream-ready contributions.

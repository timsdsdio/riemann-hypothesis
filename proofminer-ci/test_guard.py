#!/usr/bin/env python3
import pathlib, tempfile, unittest, subprocess
from check_stage import FROZEN, guard

class StageGuardTest(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.repo = pathlib.Path(self.tmp.name)
        self.git("init", "-q")
        self.git("config", "user.name", "Fixture")
        self.git("config", "user.email", "fixture@example.invalid")
        for path in FROZEN:
            p = self.repo / path
            p.parent.mkdir(parents=True, exist_ok=True)
            p.write_text("protected\n")
        (self.repo/"src"/"Proof.lean").write_text("original\n")
        self.commit()
        self.base = self.git("rev-parse", "HEAD")
    def git(self, *args):
        return subprocess.check_output(["git", "-C", str(self.repo), *args]).decode().strip()
    def commit(self):
        self.git("add", "-A")
        self.git("commit", "-qm", "fixture")
    def manifest(self):
        return {"baseline":self.base, "candidate":self.git("rev-parse","HEAD"),
                "candidate_tree":self.git("rev-parse","HEAD^{tree}")}
    def test_baseline(self):
        self.assertEqual(guard(self.repo,self.manifest())["changed_lean_files"], 0)
    def test_proof_change(self):
        (self.repo/"src"/"Proof.lean").write_text("changed\n")
        self.commit()
        r=guard(self.repo,self.manifest())
        self.assertEqual(r["changed_lean_files"],1)
        self.assertEqual(r["incremental_build"],"not_run")
    def test_challenge_change(self):
        (self.repo/"src"/"Challenge.lean").write_text("changed\n")
        self.commit()
        with self.assertRaises(ValueError): guard(self.repo,self.manifest())
    def test_nonproof_change(self):
        (self.repo/"script.py").write_text("print(1)\n")
        self.commit()
        with self.assertRaises(ValueError): guard(self.repo,self.manifest())
    def test_symlink(self):
        p=self.repo/"src"/"Proof.lean"
        p.unlink()
        p.symlink_to("Challenge.lean")
        self.commit()
        with self.assertRaises(ValueError): guard(self.repo,self.manifest())
    def test_tree_mismatch(self):
        m=self.manifest()
        m["candidate_tree"]="0"*40
        with self.assertRaises(ValueError): guard(self.repo,m)

if __name__=="__main__":
    unittest.main(verbosity=2)

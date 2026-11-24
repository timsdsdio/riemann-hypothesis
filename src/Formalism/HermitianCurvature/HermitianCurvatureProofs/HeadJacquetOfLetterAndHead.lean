module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelZeroKernel
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParamCommF
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DirectionsInParabolic
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExpFromBlocks
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGLet
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixTranspose
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffOfSnd
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.WordActionLetterSiteApply
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.MemLevelZeroOfMemGroup
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActOneVariableSmul
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocOfSmoothOnH
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.EHcChange
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Block3MulBlocks
import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving
import Mathlib.Tactic.ENatToNat
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateSizesOfHypotheses
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdjointInverseTranslate.SubsetUpperHessenberg
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CartanInvolutionConjTransposeMul
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator
import Mathlib.Algebra.Order.Archimedean.Real.Hom
import Mathlib.Analysis.Calculus.Deriv.Prod
import Mathlib.Analysis.Calculus.FDeriv.Symmetric
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsAdmissibleSplittingCharPairMulTwist

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadJOf, Formalism.HermitianCurvature.HermitianCurvatureProofs.BlockTwoApply, Formalism.HermitianCurvature.HermitianCurvatureProofs.SandwichApply, Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianPartLevi, Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelPointEntryContDiffOn, Formalism.HermitianCurvature.HermitianCurvatureProofs.RightDerivativeOperatorClass, Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffOnInvConjDet, Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnlyOfParts, Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnlyOfLeviCurve, Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnly, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.DzFamilySmooth, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.BasePointSmoothAndMem, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.WordInductionOfPartsHolds, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.WordInd, Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadJacquetOfLetterAndHead

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadJOf =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadJOf", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelZeroKernel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory

noncomputable section

namespace Formalism.FourierDecayAlt.P.LevelPointCoordinates

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

theorem kapJ_eq (P : M.Par) (j : ℕ) : kapJ P j = levelZeroKernel P.k P.r j := rfl

theorem headJ_of (hW : WordInd) (hB : HeadBridge) : HeadJ := by
  intro Wp Wq _ _ _ _ _ _ P p F j hj w h hh γ hF hw hγ hγ' φ hφ t ht e
  obtain ⟨X, _, μ, ℓ, Zx, Fx, Dm, φx, hDm, hDmsub, hR, hZ, hφx, hL, hRt⟩ :=
    hB Wp Wq P p F j hj w h hh γ hF hw hγ hγ' φ hφ t ht e
  have ht0 : t ≠ 0 := (ht.1 (1, t) (by simp)).2
  rw [hL, hRt]
  congr 1
  funext x
  rw [hW P.k P.r j hj _ _ (Wq →L[ℂ] Wp) Dm (Fx x) p.T.base.z_mem p.T.base.z'_mem hDm hDmsub (hR x) (Zx x) γ
    (hZ x).1 hγ (hZ x).2 w (φx x) (hφx x) t ht0 e, kapJ_eq]

end Formalism.FourierDecayAlt.P.LevelPointCoordinates
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadJOf =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.BlockTwoApply =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.BlockTwoApply", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParamCommF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DirectionsInParabolic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.WirtingerOperators.LeviExponential

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.LevelPointCoordinates

theorem fsym (m n : ℕ) (i : Fin (m + n)) : finSumFinEquiv.symm i =
    if h : i.val < m then Sum.inl ⟨i, h⟩ else Sum.inr ⟨i - m, by omega⟩ := by
  split_ifs with h
  · rw [Equiv.symm_apply_eq]; ext; simp
  · rw [Equiv.symm_apply_eq]; ext; simp; omega

theorem block_two_apply {p s : ℕ} (A : Matrix (Fin p) (Fin p) ℂ) (B' : Matrix (Fin p) (Fin s) ℂ)
    (C : Matrix (Fin s) (Fin p) ℂ) (D' : Matrix (Fin s) (Fin s) ℂ) (a b : Fin (p + s)) :
    U.blk2 A B' C D' a b =
      if ha : a.val < p then (if hb : b.val < p then A ⟨a, ha⟩ ⟨b, hb⟩ else B' ⟨a, ha⟩ ⟨b - p, by omega⟩)
      else (if hb : b.val < p then C ⟨a - p, by omega⟩ ⟨b, hb⟩ else D' ⟨a - p, by omega⟩ ⟨b - p, by omega⟩) := by
  simp only [U.blk2, Matrix.reindex_apply, Matrix.submatrix_apply]
  rw [fsym, fsym]
  split_ifs <;> rfl

theorem mul_w_apply {d : ℕ} {ι : Type*} [Fintype ι] (M : Matrix ι (Fin d) ℂ) (a : ι) (b : Fin d) :
    (M * G.wMat d) a b = M a b.rev := by
  simp only [G.wMat, Matrix.mul_apply, Matrix.of_apply, mul_ite, mul_one, mul_zero]
  rw [Finset.sum_eq_single b.rev]
  · simp
  · intro c _ hc; rw [if_neg]; intro h; apply hc; rw [h, Fin.rev_rev]
  · simp

theorem xcongr {j : ℕ} (x : MJ j) {a a' b b' : Fin j} (ha : a.val = a'.val) (hb : b.val = b'.val) :
    x a b = x a' b' := by
  rw [Fin.ext ha, Fin.ext hb]

theorem levi_eq {k r j : ℕ} (hj : j + 1 ≤ r) (x : MJ j) :
    levi k r j x = D.castM (by omega : j + 1 + (r - (j + 1)) = r)
      (U.blk3 (k := k) (j := j + 1) (ρ := r - (j + 1)) (U.blk2 x 0 0 0) 0 0 0 0 0 0 0
        (G.wMat (j + 1) * U.blk2 (-xᴴ) 0 0 0 * G.wMat (j + 1))) := by
  ext p q
  obtain ⟨X, hX⟩ := (U.eB k (j + 1) (r - (j + 1))).surjective (Fin.cast (by omega) p)
  obtain ⟨Y, hY⟩ := (U.eB k (j + 1) (r - (j + 1))).surjective (Fin.cast (by omega) q)
  have hp : p.val = (U.eB k (j + 1) (r - (j + 1)) X).val := by rw [hX]; rfl
  have hq : q.val = (U.eB k (j + 1) (r - (j + 1)) Y).val := by rw [hY]; rfl
  have e : ∀ M : B.Mat k (j + 1 + (r - (j + 1))),
      D.castM (by omega : j + 1 + (r - (j + 1)) = r) M p q =
        M (U.eB k (j + 1) (r - (j + 1)) X) (U.eB k (j + 1) (r - (j + 1)) Y) := by
    intro M
    rw [hX, hY]; rfl
  rw [e, Ux4.block3_apply]
  rcases X with ((a | v) | a) <;> rcases Y with ((b | w) | b) <;>
    simp only [Ux4.block_index_first_val_eq, Ux4.block_index_middle_val_eq, Ux4.block_index_last_val_eq] at hp hq <;>
    simp only [Matrix.fromBlocks_apply₁₁, Matrix.fromBlocks_apply₁₂, Matrix.fromBlocks_apply₂₁,
      Matrix.fromBlocks_apply₂₂, Matrix.fromRows_apply_inl, Matrix.fromRows_apply_inr, Matrix.fromCols_apply_inl,
      Matrix.fromCols_apply_inr, Matrix.zero_apply, levi, Matrix.of_apply, block_two_apply, _root_.Formalism.FourierDecayAlt.P.Ux3.wMat_mul_apply, mul_w_apply,
      Matrix.mul_assoc, Fin.val_rev, Matrix.neg_apply, Matrix.conjTranspose_apply] <;>
    split_ifs <;> first | rfl | (exfalso; omega) | skip
  all_goals first
    | exact xcongr x (by simp; omega) (by simp; omega)
    | (simp only [Complex.star_def]; congr 2; exact xcongr x (by simp; omega) (by simp; omega))

end Formalism.FourierDecayAlt.P.WirtingerOperators.LeviExponential
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.BlockTwoApply =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SandwichApply =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SandwichApply", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParamCommF\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.EHcChange\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.WirtingerOperators.LeviExponential

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.LevelPointCoordinates

theorem sandwich_apply {N : ℕ} (H : Matrix (Fin N) (Fin N) ℂ) (u v p q : Fin N) :
    (H * Matrix.single u v (1 : ℂ) * H) p q = H p u * H v q := by
  simp [Matrix.mul_apply, Matrix.single_apply, ite_and, Finset.sum_ite_eq, ite_mul]

theorem hpk_col_eI (k r : ℕ) (b : Fin r) (p : Fin (2 * r + k + 1)) :
    Hpk k r p (eI k r b) = if p.val + b.val = 2 * r + k then 1 else 0 := by
  have := b.isLt
  unfold Hpk eI
  simp only [Fin.ext_iff]
  split_ifs <;> first | rfl | omega

theorem hpk_row_eI (k r : ℕ) (a : Fin r) (q : Fin (2 * r + k + 1)) :
    Hpk k r (eI k r a) q = if a.val + q.val = 2 * r + k then 1 else 0 := by
  have := a.isLt
  unfold Hpk eI
  simp only [Fin.ext_iff]
  split_ifs <;> first | rfl | omega

theorem hpk_col_esI (k r : ℕ) (b : Fin r) (p : Fin (2 * r + k + 1)) :
    Hpk k r p (esI k r b) = if p.val = b.val then 1 else 0 := by
  have := b.isLt
  unfold Hpk esI
  simp only [Fin.ext_iff]
  split_ifs <;> first | rfl | omega

theorem hpk_row_esI (k r : ℕ) (a : Fin r) (q : Fin (2 * r + k + 1)) :
    Hpk k r (esI k r a) q = if q.val = a.val then 1 else 0 := by
  have := a.isLt
  unfold Hpk esI
  simp only [Fin.ext_iff]
  split_ifs <;> first | rfl | omega

theorem hpartLevi : HpartLevi := by
  intro k r j hj a b
  have ha := a.isLt
  have hb := b.isLt
  have hcI : (starRingEnd ℂ) (1 / (2 * Complex.I)) = -(1 / (2 * Complex.I)) := by
    rw [map_div₀, map_one, map_mul, Complex.conj_I, map_ofNat, mul_neg, div_neg]
  have hc2 : (starRingEnd ℂ) (1 / 2 : ℂ) = 1 / 2 := by
    rw [map_div₀, map_one, map_ofNat]
  refine ⟨?_, ?_, ?_, ?_⟩ <;> ext p q <;>
    simp only [hpart1, hpart2, _root_.Formalism.FourierDecayAlt.P.JFxE.Hinv, Matrix.conjTranspose_single, star_one, Matrix.smul_apply,
      Matrix.sub_apply, Matrix.add_apply, sandwich_apply, hpk_col_eI, hpk_row_eI, hpk_col_esI, hpk_row_esI] <;>
    simp only [levi, Matrix.of_apply, Matrix.single_apply, eI, esI, Fin.ext_iff, Fin.val_castLE, smul_eq_mul,
      Matrix.smul_apply] <;>
    split_ifs <;> first | (exfalso; omega) | skip
  all_goals first
    | (exfalso; omega)
    | (simp; done)
    | (simp [Complex.conj_I]; done)
    | (simp [Complex.conj_I]; ring; done)
    | (simp only [mul_one, mul_zero, sub_zero, zero_sub, add_zero, zero_add, map_neg, hcI, hc2, neg_neg] <;> ring)

end Formalism.FourierDecayAlt.P.WirtingerOperators.LeviExponential
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SandwichApply =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianPartLevi =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianPartLevi", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParamCommF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BlockTwoApply\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.DirectionsInParabolic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExpFromBlocks\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SandwichApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.Block3MulBlocks\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.WirtingerOperators.LeviExponential

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.LevelPointCoordinates

theorem exp_castM {k a b : ℕ} (h : a = b) (M : B.Mat k a) :
    NormedSpace.exp (D.castM h M) = D.castM h (NormedSpace.exp M) := by
  unfold D.castM; exact exp_reindex _ M

theorem exp_block_three_diagonal {k j ρ : ℕ} (A : Matrix (Fin j) (Fin j) ℂ) (Bm : B.Mat k ρ) (C : Matrix (Fin j) (Fin j) ℂ) :
    NormedSpace.exp (U.blk3 A 0 0 0 Bm 0 0 0 C) =
      U.blk3 (NormedSpace.exp A) 0 0 0 (NormedSpace.exp Bm) 0 0 0 (NormedSpace.exp C) := by
  unfold U.blk3
  rw [exp_reindex]
  have h1 : Matrix.fromRows (0 : Matrix (Fin j) (Fin j) ℂ) (0 : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ) = 0 := by
    ext i l; rcases i with i | i <;> rfl
  have h2 : Matrix.fromCols (0 : Matrix (Fin j) (Fin j) ℂ) (0 : Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ) = 0 := by
    ext i l; rcases l with l | l <;> rfl
  rw [h1, h2, exp_fromBlocks, exp_fromBlocks]

theorem exp_block_two_diagonal {p s : ℕ} (A : Matrix (Fin p) (Fin p) ℂ) (Dd : Matrix (Fin s) (Fin s) ℂ) :
    NormedSpace.exp (U.blk2 A 0 0 Dd) = U.blk2 (NormedSpace.exp A) 0 0 (NormedSpace.exp Dd) := by
  unfold U.blk2
  rw [exp_reindex, exp_fromBlocks]

theorem block_two_identity_conjTranspose {p s : ℕ} (A : Matrix (Fin p) (Fin p) ℂ) :
    (U.blk2 A 0 0 (1 : Matrix (Fin s) (Fin s) ℂ))ᴴ = U.blk2 Aᴴ 0 0 1 := by
  ext a b
  simp only [Matrix.conjTranspose_apply, block_two_apply]
  split_ifs <;> simp [Matrix.one_apply, Fin.ext_iff, eq_comm]

theorem w_inv (d : ℕ) : (G.wMat d)⁻¹ = G.wMat d :=
  Matrix.inv_eq_left_inv (Ux4.wMat_mul_self d)

theorem exp_w_conj (d : ℕ) (M : Matrix (Fin d) (Fin d) ℂ) :
    NormedSpace.exp (G.wMat d * M * G.wMat d) = G.wMat d * NormedSpace.exp M * G.wMat d := by
  have hu : IsUnit (G.wMat d) := ⟨⟨G.wMat d, G.wMat d, Ux4.wMat_mul_self d, Ux4.wMat_mul_self d⟩, rfl⟩
  have e := Matrix.exp_conj (G.wMat d) M hu
  rw [w_inv] at e
  exact e

theorem block_two_exp_conjTranspose_inv {j : ℕ} (y : MJ j) :
    (U.blk2 (NormedSpace.exp y) 0 0 (1 : Matrix (Fin 1) (Fin 1) ℂ))ᴴ⁻¹ = U.blk2 (NormedSpace.exp (-yᴴ)) 0 0 1 := by
  rw [block_two_identity_conjTranspose]
  apply Matrix.inv_eq_left_inv
  rw [Ux4.symmetricScalarBlockMatrix_mul]
  simp only [Matrix.mul_zero, Matrix.zero_mul, add_zero, zero_add, Matrix.mul_one]
  have hu : IsUnit (NormedSpace.exp yᴴ).det := (Matrix.isUnit_iff_isUnit_det _).mp (Matrix.isUnit_exp _)
  rw [Matrix.exp_neg, ← Matrix.exp_conjTranspose, Matrix.nonsing_inv_mul _ hu, _root_.Formalism.FourierDecayAlt.P.Ux5.block2_one]

theorem exp_levi {k r j : ℕ} (hj : j + 1 ≤ r) (x : MJ j) (t : ℝ) :
    NormedSpace.exp ((t : ℂ) • levi k r j x) = D.castM (by omega : j + 1 + (r - (j + 1)) = r)
      (U.muP k (j + 1) (r - (j + 1)) (U.blk2 (NormedSpace.exp ((t : ℂ) • x)) 0 0 1)) := by
  have hs : (t : ℂ) • levi k r j x = levi k r j ((t : ℂ) • x) := by
    ext p q
    simp only [levi, Matrix.of_apply, Matrix.smul_apply, smul_eq_mul]
    split_ifs <;> simp [Complex.conj_ofReal]
  rw [hs, levi_eq hj, exp_castM, exp_block_three_diagonal, exp_w_conj, exp_block_two_diagonal, exp_block_two_diagonal]
  simp only [NormedSpace.exp_zero]
  unfold U.muP
  rw [block_two_exp_conjTranspose_inv]

theorem zfull_mul {j : ℕ} (Z E : MJ j) (τ : ℂ) :
    zfull Z τ * U.blk2 E 0 0 (1 : Matrix (Fin 1) (Fin 1) ℂ) = zfull (Z * E) τ := by
  unfold zfull
  rw [Ux4.symmetricScalarBlockMatrix_mul]
  simp

theorem curveLevi : CurveLevi := by
  intro k r j hj Z τ γ x t
  rw [exp_levi hj]
  unfold x0
  rw [← _root_.Formalism.FourierDecayAlt.P.Dx2.Tower.castM_mul, Ux4.mMap_mul_muP, zfull_mul]

end Formalism.FourierDecayAlt.P.WirtingerOperators.LeviExponential

end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianPartLevi =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelPointEntryContDiffOn =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelPointEntryContDiffOn", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParamCommF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DirectionsInParabolic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGLet\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixTranspose\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateSizesOfHypotheses\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdjointInverseTranslate.SubsetUpperHessenberg\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Filter Topology
open scoped ComplexConjugate ContDiff

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace Formalism.FourierDecayAlt.P.WirtingerOperators.XiPf

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.LevelPointCoordinates

theorem fsym (m n : ℕ) (i : Fin (m + n)) : finSumFinEquiv.symm i =
    if h : i.val < m then Sum.inl ⟨i, h⟩ else Sum.inr ⟨i - m, by omega⟩ := by
  split_ifs with h
  · rw [Equiv.symm_apply_eq]; ext; simp
  · rw [Equiv.symm_apply_eq]; ext; simp; omega

theorem castM_apply' {k a b : ℕ} (h : a = b) (g : B.Mat k a) (p q : Fin (2 * b + k + 1)) :
    D.castM h g p q = g (Fin.cast (by omega) p) (Fin.cast (by omega) q) := by
  subst h; simp [D.castM, Matrix.reindex_apply]

theorem zfull_apply {j : ℕ} (Z : Matrix (Fin j) (Fin j) ℂ) (τ : ℂ) (c d : Fin (j + 1)) :
    zfull Z τ c d = if hc : c.val < j then (if hd : d.val < j then Z ⟨c.val, hc⟩ ⟨d.val, hd⟩ else 0)
      else (if d.val < j then 0 else τ) := by
  simp only [zfull, U.blk2, Matrix.reindex_apply, Matrix.submatrix_apply, fsym]
  split_ifs <;> simp [Matrix.fromBlocks]

theorem det_zfull {j : ℕ} (Z : Matrix (Fin j) (Fin j) ℂ) (τ : ℂ) : (zfull Z τ).det = Z.det * τ := by
  unfold zfull U.blk2
  rw [Matrix.det_reindex_self, Matrix.det_fromBlocks_zero₂₁]
  simp [Matrix.det_unique]

theorem level_point_first_lines (k r j : ℕ) (hj : j + 1 ≤ r) (Z : Matrix (Fin j) (Fin j) ℂ) (τ : ℂ) (γ : B.Mat k (r - (j + 1)))
    (a : Fin j) (q : Fin (2 * r + k + 1)) :
    x0 k r j hj Z τ γ (esI k r (Fin.castLE (by omega) a)) q = if hq : q.val < j then Z a ⟨q.val, hq⟩ else 0 := by
  unfold x0
  rw [castM_apply']
  have hrow : (Fin.cast (by omega) (esI k r (Fin.castLE (by omega) a)) : Fin (2 * (j + 1 + (r - (j + 1))) + k + 1)) =
      U.eB k (j + 1) (r - (j + 1)) (Sum.inr ⟨j - a.val, by omega⟩) := by
    ext; rw [Ux4.block_index_last_val_eq]; simp [esI]; omega
  rw [hrow]
  obtain ⟨y, hy⟩ : ∃ y, U.eB k (j + 1) (r - (j + 1)) y = Fin.cast (by omega) q := ⟨_, Equiv.apply_symm_apply _ _⟩
  rw [← hy]
  unfold U.mMap
  rw [Ux4.block3_apply]
  rcases y with ((c | c) | c)
  · have hq : q.val = c.val := by
      have := congrArg Fin.val hy; rw [Ux4.block_index_first_val_eq] at this; simp at this; omega
    simp only [Matrix.fromBlocks_apply₂₁, Matrix.fromCols_apply_inl]
    rw [_root_.Formalism.FourierDecayAlt.P.Ux6.wMat_mul_apply']
    have hrev : (⟨j - a.val, by omega⟩ : Fin (j + 1)).rev = ⟨a.val, by omega⟩ := by
      ext; simp [Fin.rev]; omega
    rw [hrev, zfull_apply, dite_eq_left (by simp)]
    by_cases h : c.val < j
    · rw [dite_eq_left h, dite_eq_left (by omega)]
      exact congrArg₂ Z (Fin.ext rfl) (Fin.ext hq.symm)
    · rw [dite_eq_right h, dite_eq_right (by omega)]
  · have hq : q.val = j + 1 + c.val := by
      have := congrArg Fin.val hy; rw [Ux4.block_index_middle_val_eq] at this; simp at this; omega
    simp only [Matrix.fromBlocks_apply₂₁, Matrix.fromCols_apply_inr, Matrix.zero_apply]
    rw [dite_eq_right (by omega)]
  · have hq : q.val = j + 1 + (2 * (r - (j + 1)) + k + 1) + c.val := by
      have := congrArg Fin.val hy; rw [Ux4.block_index_last_val_eq] at this; simp at this; omega
    simp only [Matrix.fromBlocks_apply₂₂, Matrix.zero_apply]
    rw [dite_eq_right (by omega)]

theorem Hpk_eI_col (k r : ℕ) (a : Fin r) (s : Fin (2 * r + k + 1)) :
    Hpk k r s (eI k r a) = if s = esI k r a then 1 else 0 := by
  simp only [Hpk, eI, esI, Fin.ext_iff, Fin.val_mk]
  split_ifs <;> first | rfl | (exfalso; omega)

theorem Hpk_low (k r : ℕ) (p s : Fin (2 * r + k + 1)) (hs : s.val < r) :
    Hpk k r p s = if p.val + s.val = 2 * r + k then 1 else 0 := by
  simp only [Hpk, Fin.ext_iff]
  split_ifs <;> first | rfl | (exfalso; omega)

theorem xiCoef : XiCoef := by
  intro k r j hj Z τ γ a p
  have h1 : ∀ v : Fin (2 * r + k + 1) → ℂ, herm (Hpk k r) v (bvec (eI k r (Fin.castLE (by omega) a))) =
      ∑ s, Hpk k r (eI k r (Fin.castLE (by omega) a)) s * v s := by
    intro v
    simp [herm, bvec, dotProduct, Matrix.mulVec, Pi.single_apply]
  rw [h1]
  simp only [_root_.AAInvW.lf_H_eI, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  simp only [bvec, Matrix.mulVec_single_one]
  exact level_point_first_lines k r j hj Z τ γ a p

theorem x0_GV (k r j : ℕ) (hj : j + 1 ≤ r) (Z : Matrix (Fin j) (Fin j) ℂ) (τ : ℂ) (γ : B.Mat k (r - (j + 1)))
    (hZ : Z.det ≠ 0) (hτ : τ ≠ 0) (hγ : γ ∈ B.GV k (r - (j + 1))) : x0 k r j hj Z τ γ ∈ B.GV k r := by
  unfold x0
  apply _root_.Formalism.FourierDecayAlt.P.PBE.castM_GV
  exact (Ux2.sliceMem k (j + 1) (r - (j + 1))).1 _ _ (by rw [det_zfull]; exact mul_ne_zero hZ hτ) hγ

theorem xiMem : XiMem := by
  intro k r j hj Z τ γ hZ hτ hγ
  exact ⟨x0_GV k r j hj Z τ γ hZ hτ hγ, fun a ha => absurd ha (by simp)⟩

theorem xiCoefV : XiCoefV := by
  intro k r j hj Z τ γ hZ hτ hγ a p
  have hinv := PBG.inv_GV (x0_GV k r j hj Z τ γ hZ hτ hγ)
  rw [hinv, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec]
  have hH : Hpk k r *ᵥ bvec (eI k r (Fin.castLE (by omega) a)) = bvec (esI k r (Fin.castLE (by omega) a)) := by
    ext s
    simp only [bvec, Matrix.mulVec_single_one, Matrix.col_apply, Hpk_eI_col, Pi.single_apply]
  rw [hH]
  simp only [bvec, Matrix.mulVec_single_one]
  simp only [Matrix.mulVec, dotProduct]
  simp only [Matrix.col_apply, Matrix.conjTranspose_apply, level_point_first_lines]
  split_ifs with hp
  · rw [Fintype.sum_eq_single ⟨2 * r + k - p.val, by omega⟩]
    · have hH1 : Hpk k r p ⟨2 * r + k - p.val, by omega⟩ = 1 := by
        rw [Hpk_low _ _ _ _ (by simp only [Fin.val_mk]; omega), if_pos (by simp only [Fin.val_mk]; omega)]
      rw [hH1, one_mul, dite_eq_left (by simp only [Fin.val_mk]; omega)]
      rfl
    · intro s hs
      by_cases h : s.val < j
      · rw [dite_eq_left h]
        have : Hpk k r p s = 0 := by
          rw [Hpk_low _ _ _ _ (by omega), if_neg (by intro h'; apply hs; ext; simp only [Fin.val_mk]; omega)]
        rw [this, zero_mul]
      · rw [dite_eq_right h, star_zero, mul_zero]
  · refine Finset.sum_eq_zero fun s _ => ?_
    by_cases h : s.val < j
    · rw [dite_eq_left h]
      have : Hpk k r p s = 0 := by
        rw [Hpk_low _ _ _ _ (by omega), if_neg (by omega)]
      rw [this, zero_mul]
    · rw [dite_eq_right h, star_zero, mul_zero]

section smooth

variable {j : ℕ}

theorem contDiff_zfull (τ : ℂ) (c d : Fin (j + 1)) {n : WithTop ℕ∞} :
    ContDiff ℝ n (fun Z : MJ j => zfull Z τ c d) := by
  simp only [zfull_apply]
  split_ifs
  · exact contDiff_apply_apply ℝ _ _
  · exact contDiff_const
  · exact contDiff_const
  · exact contDiff_const

theorem contDiff_adj_zfull (τ : ℂ) (c d : Fin (j + 1)) :
    ContDiff ℝ ⊤ (fun Z : MJ j => (zfull Z τ).adjugate c d) := by
  simp only [Matrix.adjugate_apply]
  apply PBG.contDiff_det'
  intro a b
  simp only [Matrix.updateRow_apply]
  split_ifs
  · exact contDiff_const
  · exact contDiff_zfull τ a b

theorem contDiffOn_inv_zfull (τ : ℂ) (c d : Fin (j + 1)) :
    ContDiffOn ℝ ∞ (fun Z : MJ j => (zfull Z τ)⁻¹ c d) {Z | Z.det ≠ 0} := by
  have he : ∀ Z : MJ j, (zfull Z τ)⁻¹ c d = (Z.det)⁻¹ * τ⁻¹ * (zfull Z τ).adjugate c d := by
    intro Z
    rw [Matrix.inv_def, Matrix.smul_apply, det_zfull, Ring.inverse_eq_inv', mul_inv, smul_eq_mul]
  simp only [he]
  have hdet : ContDiff ℝ ⊤ (fun Z : MJ j => Z.det) :=
    PBG.contDiff_det' (fun Z : MJ j => Z) (fun a b => contDiff_apply_apply ℝ a b)
  exact ((((hdet.of_le le_top).contDiffOn.inv (fun Z hZ => hZ)).mul contDiffOn_const).mul
    ((contDiff_adj_zfull τ c d).of_le le_top).contDiffOn)

theorem level_point_entry_contDiffOn (k r j : ℕ) (hj : j + 1 ≤ r) (τ : ℂ) (γ : B.Mat k (r - (j + 1)))
    (p q : Fin (2 * r + k + 1)) :
    ContDiffOn ℝ ∞ (fun Z : MJ j => x0 k r j hj Z τ γ p q) {Z | Z.det ≠ 0} := by
  obtain ⟨x, hx⟩ : ∃ x, U.eB k (j + 1) (r - (j + 1)) x = Fin.cast (by omega) p := ⟨_, Equiv.apply_symm_apply _ _⟩
  obtain ⟨y, hy⟩ : ∃ y, U.eB k (j + 1) (r - (j + 1)) y = Fin.cast (by omega) q := ⟨_, Equiv.apply_symm_apply _ _⟩
  have he : ∀ Z : MJ j, x0 k r j hj Z τ γ p q =
      Matrix.fromBlocks (Matrix.fromBlocks 0 0 0 γ) (Matrix.fromRows ((zfull Z τ)ᴴ⁻¹ * G.wMat (j + 1)) 0)
        (Matrix.fromCols (G.wMat (j + 1) * zfull Z τ) 0) 0 x y := by
    intro Z
    unfold x0 U.mMap
    rw [castM_apply', ← hx, ← hy, Ux4.block3_apply]
  simp only [he]
  have h13 : ∀ c d : Fin (j + 1),
      ContDiffOn ℝ ∞ (fun Z : MJ j => ((zfull Z τ)ᴴ⁻¹ * G.wMat (j + 1)) c d) {Z | Z.det ≠ 0} := by
    intro c d
    simp only [Matrix.mul_apply, ← Matrix.conjTranspose_nonsing_inv, Matrix.conjTranspose_apply]
    exact ContDiffOn.sum fun t _ =>
      (PBG.contDiff_starC.comp_contDiffOn (contDiffOn_inv_zfull τ t c)).mul contDiffOn_const
  have h31 : ∀ c d : Fin (j + 1),
      ContDiffOn ℝ ∞ (fun Z : MJ j => (G.wMat (j + 1) * zfull Z τ) c d) {Z | Z.det ≠ 0} := by
    intro c d
    simp only [Matrix.mul_apply]
    exact ContDiffOn.sum fun t _ => contDiffOn_const.mul (contDiff_zfull τ t d).contDiffOn
  rcases x with ((c | c) | c) <;> rcases y with ((d | d) | d) <;>
    simp only [Matrix.fromBlocks_apply₁₁, Matrix.fromBlocks_apply₁₂, Matrix.fromBlocks_apply₂₁,
      Matrix.fromBlocks_apply₂₂, Matrix.fromRows_apply_inl, Matrix.fromRows_apply_inr, Matrix.fromCols_apply_inl,
      Matrix.fromCols_apply_inr, Matrix.zero_apply]
  · exact contDiffOn_const
  · exact contDiffOn_const
  · exact h13 c d
  · exact contDiffOn_const
  · exact contDiffOn_const
  · exact contDiffOn_const
  · exact h31 c d
  · exact contDiffOn_const
  · exact contDiffOn_const

theorem xiSmooth : XiSmooth := by
  intro k r j hj τ γ
  exact contDiffOn_pi.2 fun p => contDiffOn_pi.2 fun q => level_point_entry_contDiffOn k r j hj τ γ p q

end smooth

end Formalism.FourierDecayAlt.P.WirtingerOperators.XiPf

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelPointEntryContDiffOn =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RightDerivativeOperatorClass =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RightDerivativeOperatorClass", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParamCommF\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.CartanInvolutionConjTransposeMul\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.Deriv.Prod\nimport Mathlib.Analysis.Calculus.FDeriv.Symmetric\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Filter Topology
open scoped ComplexConjugate ContDiff

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace Formalism.FourierDecayAlt.P.WirtingerOperators

open Formalism.REAL

abbrev rdzPZ (j : ℕ) : Type := ℂ × (Fin j → Fin j → ℂ)

def rdzLdL {j : ℕ} (x : MJ j) : rdzPZ j →ₗ[ℝ] rdzPZ j where
  toFun q := (0, fun a b => ∑ c, q.2 a c * x c b)
  map_add' p q := Prod.ext (by simp) (by funext a b; simp [add_mul, Finset.sum_add_distrib])
  map_smul' t q := Prod.ext (by simp) (by funext a b; simp [Finset.smul_sum, mul_assoc])

def rdzLd {j : ℕ} (x : MJ j) : rdzPZ j →L[ℝ] rdzPZ j := LinearMap.toContinuousLinearMap (rdzLdL x)

theorem rdzLd_apply {j : ℕ} (x : MJ j) (q : rdzPZ j) : rdzLd x q = (0, fun a b => ∑ c, q.2 a c * x c b) := rfl

theorem rdzLd_inl {j : ℕ} (x : MJ j) (v : ℂ) : rdzLd x ((v, 0) : rdzPZ j) = 0 := by
  rw [rdzLd_apply]
  exact Prod.ext rfl (by funext a b; simp)

theorem rdz_curve {j : ℕ} (x : MJ j) (τ : ℂ) (Z : MJ j) :
    HasDerivAt (fun t : ℝ => ((τ, (Z * NormedSpace.exp ((t : ℂ) • x) : MJ j)) : rdzPZ j)) (rdzLd x (τ, Z)) 0 := by
  refine HasDerivAt.congr_deriv ((hasDerivAt_const (0 : ℝ) τ).prodMk (hasDerivAt_mul_exp_smul_zero Z x)) ?_
  rw [rdzLd_apply]
  exact Prod.ext rfl (funext fun a => funext fun b => Matrix.mul_apply)

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

theorem rdz_da {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F] {h : F → E} {V : Set F} (hV : IsOpen V)
    (hh : ContDiffOn ℝ ∞ h V) {Z : F} (hZ : Z ∈ V) : DifferentiableAt ℝ h Z :=
  (hh.contDiffAt (hV.mem_nhds hZ)).differentiableAt (by simp)

theorem rdz_rd {j : ℕ} (x : MJ j) (G : rdzPZ j → E) (τ : ℂ) (Z : MJ j) (hd : DifferentiableAt ℝ G (τ, Z)) :
    RdV x (fun Z' : MJ j => G (τ, Z')) Z = fderiv ℝ G (τ, Z) (rdzLd x (τ, Z)) := by
  have h0 : ((τ, (Z * NormedSpace.exp (((0 : ℝ) : ℂ) • x) : MJ j)) : rdzPZ j) = (τ, Z) := by
    (simp [NormedSpace.exp_zero]; rfl)
  exact (hd.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) (rdz_curve x τ Z) h0.symm).deriv

theorem rdz_loc {j : ℕ} (x : MJ j) (h₁ h₂ : MJ j → E) (Z : MJ j) (h : h₁ =ᶠ[𝓝 Z] h₂) :
    RdV x h₁ Z = RdV x h₂ Z := by
  have ht : Tendsto (fun t : ℝ => Z * NormedSpace.exp ((t : ℂ) • x)) (𝓝 0) (𝓝 Z) := by
    have := (hasDerivAt_mul_exp_smul_zero Z x).continuousAt.tendsto
    simp only [Complex.ofReal_zero, zero_smul, NormedSpace.exp_zero, mul_one] at this
    exact this
  unfold RdV
  exact Filter.EventuallyEq.deriv_eq (ht.eventually h)

theorem rdz_hd {j : ℕ} (x : MJ j) {h : MJ j → E} {Z : MJ j} (hd : DifferentiableAt ℝ h Z) :
    HasDerivAt (fun t : ℝ => h (Z * NormedSpace.exp ((t : ℂ) • x))) (fderiv ℝ h Z (Z * x)) 0 := by
  have h0 : Z * NormedSpace.exp (((0 : ℝ) : ℂ) • x) = Z := by simp [NormedSpace.exp_zero]
  exact hd.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) (hasDerivAt_mul_exp_smul_zero Z x) h0.symm

def rdzK {j : ℕ} (κ : ℂ → MJ j → E) : rdzPZ j → E := fun q => κ q.1 (Matrix.of q.2)

theorem rdz_slice {j : ℕ} (κ : ℂ → MJ j → E) (τ₀ : ℂ) (Z₀ : MJ j)
    (hd : DifferentiableAt ℝ (rdzK κ) (τ₀, Z₀)) (v : ℂ) :
    fderiv ℝ (fun τ : ℂ => κ τ Z₀) τ₀ v = fderiv ℝ (rdzK κ) (τ₀, Z₀) (v, 0) := by
  have hι : HasFDerivAt (fun τ : ℂ => ((τ, Z₀) : rdzPZ j)) ((ContinuousLinearMap.id ℝ ℂ).prod 0) τ₀ :=
    (hasFDerivAt_id τ₀).prodMk (hasFDerivAt_const _ τ₀)
  have h2 := (hd.hasFDerivAt.comp τ₀ hι).fderiv
  rw [show (fun τ : ℂ => κ τ Z₀) = rdzK κ ∘ (fun τ : ℂ => ((τ, Z₀) : rdzPZ j)) from rfl, h2]
  rfl

def rdzH {j : ℕ} (κ : ℂ → MJ j → E) (c s : ℂ) : rdzPZ j → E := fun p =>
  c • (fderiv ℝ (rdzK κ) p (1, 0) + s • fderiv ℝ (rdzK κ) p (Complex.I, 0))

theorem rdz_dz_eq (f : ℂ → E) (τ : ℂ) :
    PBP.dz f τ = (1 / 2 : ℂ) • (fderiv ℝ f τ 1 + (-Complex.I) • fderiv ℝ f τ Complex.I) := by
  simp only [PBP.dz, neg_smul, sub_eq_add_neg]

theorem rdz_dzb_eq (f : ℂ → E) (τ : ℂ) :
    PBP.dzb f τ = (1 / 2 : ℂ) • (fderiv ℝ f τ 1 + Complex.I • fderiv ℝ f τ Complex.I) := rfl

theorem rdz_H_eq {j : ℕ} (κ : ℂ → MJ j → E) (c s : ℂ) (τ₀ : ℂ) (Z₀ : MJ j)
    (hd : DifferentiableAt ℝ (rdzK κ) (τ₀, Z₀)) :
    c • (fderiv ℝ (fun τ : ℂ => κ τ Z₀) τ₀ 1 + s • fderiv ℝ (fun τ : ℂ => κ τ Z₀) τ₀ Complex.I) =
      rdzH κ c s (τ₀, Z₀) := by
  rw [rdz_slice κ τ₀ Z₀ hd, rdz_slice κ τ₀ Z₀ hd]
  rfl

theorem rdz_H_smooth {j : ℕ} (κ : ℂ → MJ j → E) (c s : ℂ) {U : Set (rdzPZ j)} (hU : IsOpen U)
    (hK : ContDiffOn ℝ ∞ (rdzK κ) U) : ContDiffOn ℝ ∞ (rdzH κ c s) U := by
  have hK1 : ContDiffOn ℝ ∞ (fderiv ℝ (rdzK κ)) U := hK.fderiv_of_isOpen (m := ∞) hU withTop_enat_infty_add_one_le_infty
  exact ((hK1.clm_apply contDiffOn_const).add ((hK1.clm_apply contDiffOn_const).const_smul s)).const_smul c

theorem rdz_par {j : ℕ} (x : MJ j) : ParamCommF (E := E) (fun h => RdV x h) := by
  intro U κ hU _ hK
  have hKc : ContDiffOn ℝ ∞ (rdzK κ) U := hK
  have hKd : ∀ q ∈ U, DifferentiableAt ℝ (rdzK κ) q := fun q hq => rdz_da hU hKc hq
  have hK1 : ContDiffOn ℝ ∞ (fderiv ℝ (rdzK κ)) U := hKc.fderiv_of_isOpen (m := ∞) hU withTop_enat_infty_add_one_le_infty
  have hG1 : ContDiffOn ℝ ∞ (fun q => fderiv ℝ (rdzK κ) q (rdzLd x q)) U :=
    hK1.clm_apply (rdzLd x).contDiff.contDiffOn
  have hrd : ∀ q ∈ U, RdV x (κ q.1) (Matrix.of q.2) = fderiv ℝ (rdzK κ) q (rdzLd x q) :=
    fun q hq => rdz_rd x (rdzK κ) q.1 (Matrix.of q.2) (hKd q hq)
  refine ⟨hG1.congr fun q hq => hrd q hq, fun q hq => ?_⟩
  have hKa : ContDiffAt ℝ ∞ (rdzK κ) q := hKc.contDiffAt (hU.mem_nhds hq)
  have hc : DifferentiableAt ℝ (fderiv ℝ (rdzK κ)) q :=
    (hKa.fderiv_right (m := ∞) withTop_enat_infty_add_one_le_infty).differentiableAt (by simp)
  have hsym : IsSymmSndFDerivAt ℝ (rdzK κ) q := hKa.isSymmSndFDerivAt (by
    simp only [minSmoothness_of_isRCLikeNormedField]; exact WithTop.coe_le_coe.2 (le_top : (2 : ℕ∞) ≤ ⊤))
  have hG1d : HasFDerivAt (fun p => fderiv ℝ (rdzK κ) p (rdzLd x p))
      ((fderiv ℝ (rdzK κ) q).comp (rdzLd x) + (fderiv ℝ (fderiv ℝ (rdzK κ)) q).flip (rdzLd x q)) q :=
    hc.hasFDerivAt.clm_apply (rdzLd x).hasFDerivAt
  have hL : ∀ v : ℂ, fderiv ℝ (fun τ => RdV x (κ τ) (Matrix.of q.2)) q.1 v =
      fderiv ℝ (fderiv ℝ (rdzK κ)) q (v, 0) (rdzLd x q) := by
    intro v
    have hev : (fun τ => RdV x (κ τ) (Matrix.of q.2)) =ᶠ[𝓝 q.1]
        (fun τ => fderiv ℝ (rdzK κ) (τ, q.2) (rdzLd x (τ, q.2))) := by
      have hc' : ContinuousAt (fun τ : ℂ => ((τ, q.2) : rdzPZ j)) q.1 :=
        (continuous_id.prodMk continuous_const).continuousAt
      filter_upwards [hc'.preimage_mem_nhds (hU.mem_nhds hq)] with τ hτ
      exact hrd (τ, q.2) hτ
    have hι : HasFDerivAt (fun τ : ℂ => ((τ, q.2) : rdzPZ j)) ((ContinuousLinearMap.id ℝ ℂ).prod 0) q.1 :=
      (hasFDerivAt_id q.1).prodMk (hasFDerivAt_const _ q.1)
    rw [hev.fderiv_eq, show (fun τ => fderiv ℝ (rdzK κ) (τ, q.2) (rdzLd x (τ, q.2))) =
      (fun p => fderiv ℝ (rdzK κ) p (rdzLd x p)) ∘ (fun τ : ℂ => ((τ, q.2) : rdzPZ j)) from rfl,
      (hG1d.comp q.1 hι).fderiv]
    simp [rdzLd_inl]
  have hR : ∀ c s : ℂ, RdV x (fun Z => c • (fderiv ℝ (fun τ : ℂ => κ τ Z) q.1 1 +
      s • fderiv ℝ (fun τ : ℂ => κ τ Z) q.1 Complex.I)) (Matrix.of q.2) =
      c • (fderiv ℝ (fderiv ℝ (rdzK κ)) q (rdzLd x q) (1, 0) +
        s • fderiv ℝ (fderiv ℝ (rdzK κ)) q (rdzLd x q) (Complex.I, 0)) := by
    intro c s
    have hev : (fun Z : MJ j => c • (fderiv ℝ (fun τ : ℂ => κ τ Z) q.1 1 +
        s • fderiv ℝ (fun τ : ℂ => κ τ Z) q.1 Complex.I)) =ᶠ[𝓝 (Matrix.of q.2)]
        (fun Z : MJ j => rdzH κ c s (q.1, Z)) := by
      have hc' : ContinuousAt (fun Z : MJ j => ((q.1, Z) : rdzPZ j)) (Matrix.of q.2) :=
        (continuous_const.prodMk continuous_id).continuousAt
      filter_upwards [hc'.preimage_mem_nhds (hU.mem_nhds hq)] with Z hZ
      exact rdz_H_eq κ c s q.1 Z (hKd _ hZ)
    have hH : HasFDerivAt (rdzH κ c s)
        (c • (((fderiv ℝ (rdzK κ) q).comp 0 + (fderiv ℝ (fderiv ℝ (rdzK κ)) q).flip ((1, 0) : rdzPZ j)) +
          s • ((fderiv ℝ (rdzK κ) q).comp 0 +
            (fderiv ℝ (fderiv ℝ (rdzK κ)) q).flip ((Complex.I, 0) : rdzPZ j)))) q :=
      ((hc.hasFDerivAt.clm_apply (hasFDerivAt_const ((1, 0) : rdzPZ j) q)).add
        ((hc.hasFDerivAt.clm_apply (hasFDerivAt_const ((Complex.I, 0) : rdzPZ j) q)).const_smul s)).const_smul c
    rw [rdz_loc x _ _ _ hev, rdz_rd x (rdzH κ c s) q.1 (Matrix.of q.2) hH.differentiableAt,
      show ((q.1, Matrix.of q.2) : rdzPZ j) = q from rfl, hH.fderiv]
    simp
  have hS : ∀ v : ℂ, fderiv ℝ (fderiv ℝ (rdzK κ)) q (v, 0) (rdzLd x q) =
      fderiv ℝ (fderiv ℝ (rdzK κ)) q (rdzLd x q) (v, 0) := fun v => hsym _ _
  refine ⟨?_, ?_⟩
  · simp only [rdz_dz_eq]
    rw [hR, hL, hL, hS, hS]
  · simp only [rdz_dzb_eq]
    rw [hR, hL, hL, hS, hS]

end Formalism.FourierDecayAlt.P.WirtingerOperators

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.FourierDecayAlt.P.WirtingerOperators

theorem right_derivative_operator_class : WirtingerOperators.ZOpRd := by
  intro j E _ _ x
  refine ⟨fun h₁ h₂ Z h => rdz_loc x h₁ h₂ Z h, ?_, ?_, rdz_par x⟩
  · intro V h₁ h₂ hV _ c1 c2 Z hZ
    have d1 := rdz_hd x (rdz_da hV c1 hZ)
    have d2 := rdz_hd x (rdz_da hV c2 hZ)
    simp only [RdV]
    rw [d1.deriv, d2.deriv]
    exact (d1.add d2).deriv
  · intro V c h hV _ ch Z hZ
    have d := rdz_hd x (rdz_da hV ch hZ)
    simp only [RdV]
    rw [d.deriv]
    exact (d.const_smul c).deriv

theorem wirtinger_slice_smooth : WirtingerOperators.DzSlice := by
  intro j E _ _ U κ hU hK τ₀
  have hKc : ContDiffOn ℝ ∞ (rdzK κ) U := hK
  have hι : ContDiff ℝ ∞ (fun Z : MJ j => ((τ₀, Z) : rdzPZ j)) := contDiff_const.prodMk contDiff_id
  have key : ∀ c s : ℂ, ContDiffOn ℝ ∞ (fun Z : MJ j => c • (fderiv ℝ (fun τ : ℂ => κ τ Z) τ₀ 1 +
      s • fderiv ℝ (fun τ : ℂ => κ τ Z) τ₀ Complex.I)) {Z : MJ j | (τ₀, (Z : Fin j → Fin j → ℂ)) ∈ U} := by
    intro c s
    refine ((rdz_H_smooth κ c s hU hKc).comp hι.contDiffOn (fun Z hZ => hZ)).congr fun Z hZ => ?_
    exact rdz_H_eq κ c s τ₀ Z (rdz_da hU hKc hZ)
  refine ⟨?_, ?_⟩
  · simp only [rdz_dz_eq]
    exact key _ _
  · simp only [rdz_dzb_eq]
    exact key _ _

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RightDerivativeOperatorClass =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffOnInvConjDet =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffOnInvConjDet", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParamCommF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffOfSnd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Filter Topology
open scoped ComplexConjugate ContDiff

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace Formalism.FourierDecayAlt.P.WirtingerOperators

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.LevelPointCoordinates

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

def TopG {ι X : Type} [DecidableEq ι] (Eop : ι → ι → (X → E) → (X → E)) (u : ℂ) (a b : ι) (f : X → E) : X → E :=
  fun g => (if a = b then u • f g else 0) + Eop a b f g

def qminG {ι X : Type} [DecidableEq ι] {t : ℕ} (Eop : ι → ι → (X → E) → (X → E)) (a b : Fin t → ι) (u : ℂ)
    (f : X → E) : X → E :=
  ∑ σ : Equiv.Perm (Fin t), (((Equiv.Perm.sign σ : ℤ) : ℂ) •
    (List.ofFn fun k : Fin t => TopG Eop (u - ((k : ℕ) : ℂ)) (a (σ k)) (b k)).foldr (fun T h => T h) f)

def EopZ (k r j : ℕ) (p q : Fin (2 * r + k + 1)) : (MJ j → E) → MJ j → E :=
  if hp : p.val < j then (if hq : q.val < j then EZ ⟨p.val, hp⟩ ⟨q.val, hq⟩ else fun _ _ => 0)
  else if hp' : 2 * r + k < p.val + j then
    (if hq' : 2 * r + k < q.val + j then
      EZs ⟨2 * r + k - p.val, by omega⟩ ⟨2 * r + k - q.val, by omega⟩ else fun _ _ => 0)
  else fun _ _ => 0

def cZ {j N : ℕ} (Z : MJ j) (p : Fin N) (a : Fin j) : ℂ := if hp : p.val < j then Z a ⟨p.val, hp⟩ else 0

def cvZ (k r : ℕ) {j : ℕ} (Z : MJ j) (p : Fin (2 * r + k + 1)) (a : Fin j) : ℂ :=
  if hp : 2 * r + k < p.val + j then conj (Z a ⟨2 * r + k - p.val, by omega⟩) else 0


open scoped Classical in
def AZ (k r j m : ℕ) (hm : m ≤ r) (hmj : m ≤ j) (u : ℂ) (h : MJ j → E) : MJ j → E := fun Z =>
  ∑ c : Fin m → Fin (2 * r + k + 1),
    if StrictMono c then
      (Matrix.of fun a l : Fin m => cZ Z (c l) (Fin.castLE hmj a)).det •
        qminG (EopZ (E := E) k r j) (C3.xR k r m hm) c u h Z
    else 0


open scoped Classical in
def AvZ (k r j m : ℕ) (hm : m ≤ r) (hmj : m ≤ j) (ell : ℂ) (h : MJ j → E) : MJ j → E := fun Z =>
  ∑ B : Fin m → Fin (2 * r + k + 1),
    if StrictMono (fun l => C3.keyS k r (B l)) then
      (Matrix.of fun a l : Fin m => cvZ k r Z (B l) (Fin.castLE hmj a)).det •
        qminG (EopZ (E := E) k r j) B (C3.sR k r m hm) (ell + (m : ℂ) - 1) h Z
    else 0

def Aform (k r j : ℕ) (hj : j + 1 ≤ r) (l : C.Letter) (e : Fin 2) (h : MJ j → E) : MJ j → E := fun Z =>
  if e = 1 ∧ j = 0 then 0 else
  if l.1 then
    (Z.det)⁻¹ • AZ k r j (j - e) (by omega) (by omega) ((l.2 : ℂ) + ((2 * r + k : ℕ) : ℂ) / 2) h Z
  else
    (conj Z.det)⁻¹ • AvZ k r j (j - e) (by omega) (by omega) ((l.2 : ℂ) - ((2 * r + k : ℕ) : ℂ) / 2) h Z

section zop

variable (hR : ZOpRd)
include hR

theorem zop_EZ {j : ℕ} (a b : Fin j) : ZOp (E := E) (EZ a b) :=
  (hR j E _).add' ((hR j E _).csmul Complex.I)

theorem zop_EZs {j : ℕ} (a b : Fin j) : ZOp (E := E) (EZs a b) :=
  (hR j E _).add' ((hR j E _).csmul Complex.I)

theorem zop_EopZ (k r j : ℕ) (p q : Fin (2 * r + k + 1)) : ZOp (E := E) (EopZ k r j p q) := by
  unfold EopZ
  split_ifs
  · exact zop_EZ hR _ _
  · exact zop_zero
  · exact zop_EZs hR _ _
  · exact zop_zero
  · exact zop_zero

theorem zop_TopG (k r j : ℕ) (u : ℂ) (p q : Fin (2 * r + k + 1)) :
    ZOp (E := E) (TopG (EopZ k r j) u p q) := by
  have h1 : ZOp (E := E) (j := j) (fun f g => if p = q then u • f g else 0) := by
    split_ifs
    · exact zop_id.csmul u
    · exact zop_zero
  exact h1.add' (zop_EopZ hR k r j p q)

theorem zop_qminG (k r j : ℕ) {t : ℕ} (a b : Fin t → Fin (2 * r + k + 1)) (u : ℂ) :
    ZOp (E := E) (qminG (EopZ k r j) a b u) := by
  have e : (qminG (E := E) (EopZ k r j) a b u) = fun h Z => ∑ σ ∈ (Finset.univ : Finset (Equiv.Perm (Fin t))),
      (((Equiv.Perm.sign σ : ℤ) : ℂ) • (List.ofFn fun k' : Fin t =>
        TopG (EopZ (E := E) k r j) (u - ((k' : ℕ) : ℂ)) (a (σ k')) (b k')).foldr (fun T h => T h) h Z) := by
    funext h Z
    simp [qminG, Finset.sum_apply]
  rw [e]
  refine zop_sum _ (fun σ _ => ?_)
  refine ZOp.csmul ?_ _
  refine zop_foldr _ (fun T hT => ?_)
  obtain ⟨i, rfl⟩ := (List.mem_ofFn' _ _).1 hT
  exact zop_TopG hR k r j _ _ _

end zop

theorem contDiff_entry {j : ℕ} (a b : Fin j) : ContDiff ℝ ∞ fun Z : MJ j => Z a b :=
  (contDiff_apply ℝ (fun _ => ℂ) b).comp (contDiff_apply ℝ (fun _ => (Fin j → ℂ)) a)

theorem contDiff_det_of {j m : ℕ} (M : MJ j → Matrix (Fin m) (Fin m) ℂ) (hM : ∀ a b, ContDiff ℝ ∞ fun Z => M Z a b) :
    ContDiff ℝ ∞ fun Z => (M Z).det := by
  simp only [Matrix.det_apply]
  refine ContDiff.sum (fun σ _ => ?_)
  simp only [Units.smul_def, zsmul_eq_mul]
  exact contDiff_const.mul (contDiff_prod (fun i _ => hM _ _))

theorem contDiff_cZ {j N : ℕ} (p : Fin N) (a : Fin j) : ContDiff ℝ ∞ fun Z : MJ j => cZ Z p a := by
  unfold cZ
  split_ifs
  · exact contDiff_entry _ _
  · exact contDiff_const

theorem contDiff_cvZ (k r : ℕ) {j : ℕ} (p : Fin (2 * r + k + 1)) (a : Fin j) :
    ContDiff ℝ ∞ fun Z : MJ j => cvZ k r Z p a := by
  unfold cvZ
  split_ifs
  · exact Complex.conjCLE.contDiff.comp (contDiff_entry _ _)
  · exact contDiff_const

theorem contDiffOn_invDet {j : ℕ} : ContDiffOn ℝ ∞ (fun Z : MJ j => (Z.det)⁻¹) {Z | Z.det ≠ 0} :=
  (contDiff_det_of (fun Z => Z) (fun a b => contDiff_entry a b)).contDiffOn.inv (fun Z hZ => hZ)

theorem contDiffOn_invConjDet {j : ℕ} :
    ContDiffOn ℝ ∞ (fun Z : MJ j => (conj Z.det)⁻¹) {Z | Z.det ≠ 0} :=
  (Complex.conjCLE.contDiff.comp (contDiff_det_of (fun Z => Z) (fun a b => contDiff_entry a b))).contDiffOn.inv
    (fun Z hZ => by simpa using hZ)

section zop2

variable (hR : ZOpRd)
include hR

theorem zop_AZ (k r j m : ℕ) (hm : m ≤ r) (hmj : m ≤ j) (u : ℂ) : ZOp (E := E) (AZ k r j m hm hmj u) := by
  classical
  unfold AZ
  refine zop_sum _ (fun c _ => ?_)
  split_ifs
  · exact (zop_qminG hR k r j _ _ u).cmul
      (contDiff_det_of _ (fun a l => contDiff_cZ _ _)).contDiffOn
  · exact zop_zero

theorem zop_AvZ (k r j m : ℕ) (hm : m ≤ r) (hmj : m ≤ j) (ell : ℂ) : ZOp (E := E) (AvZ k r j m hm hmj ell) := by
  classical
  unfold AvZ
  refine zop_sum _ (fun c _ => ?_)
  split_ifs
  · exact (zop_qminG hR k r j _ _ _).cmul
      (contDiff_det_of _ (fun a l => contDiff_cvZ k r _ _)).contDiffOn
  · exact zop_zero

theorem zop_Aform (k r j : ℕ) (hj : j + 1 ≤ r) (l : C.Letter) (e : Fin 2) :
    ZOp (E := E) (Aform k r j hj l e) := by
  unfold Aform
  split_ifs
  · exact zop_zero
  · exact (zop_AZ hR _ _ _ _ _ _ _).cmul contDiffOn_invDet
  · exact (zop_AvZ hR _ _ _ _ _ _ _).cmul contDiffOn_invConjDet

end zop2
end Formalism.FourierDecayAlt.P.WirtingerOperators
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffOnInvConjDet =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnlyOfParts =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnlyOfParts", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffOnInvConjDet\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffOfSnd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Filter Topology
open scoped ComplexConjugate ContDiff

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace Formalism.FourierDecayAlt.P.WirtingerOperators

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.LevelPointCoordinates

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

section transfer

variable {k r j : ℕ} (hj : j + 1 ≤ r) (τ : ℂ) (γ : B.Mat k (r - (j + 1)))

def Good (k r j : ℕ) (p q : Fin (2 * r + k + 1)) : Prop :=
  (p.val < j ∧ q.val < j) ∨ (2 * r + k < p.val + j ∧ 2 * r + k < q.val + j)

theorem rdV_levi (hC : CurveLevi) (x : MJ j) (f : Q.Mx k r → E) (Z : MJ j) :
    RdV (levi k r j x) f (x0 k r j hj Z τ γ) = RdV x (fun Z' => f (x0 k r j hj Z' τ γ)) Z := by
  unfold RdV
  congr 1
  funext t
  rw [hC k r j hj Z τ γ x t]

theorem EopZ_e (a b : Fin j) :
    EopZ (E := E) k r j (eI k r (Fin.castLE (by omega) a)) (eI k r (Fin.castLE (by omega) b)) = EZ a b := by
  unfold EopZ
  simp [eI]

theorem EopZ_es (a b : Fin j) :
    EopZ (E := E) k r j (esI k r (Fin.castLE (by omega) a)) (esI k r (Fin.castLE (by omega) b)) = EZs a b := by
  unfold EopZ
  have ha := a.isLt
  have hb := b.isLt
  rw [dite_eq_right (by simp [esI]; omega), dif_pos (by simp [esI]; omega), dif_pos (by simp [esI]; omega)]
  congr 1 <;> ext <;> simp [esI] <;> omega

theorem eab_pull (hC : CurveLevi) (hH : HpartLevi) (p q : Fin (2 * r + k + 1)) (hpq : Good k r j p q)
    (f : Q.Mx k r → E) (Z : MJ j) :
    EabH (Hpk k r) p q f (x0 k r j hj Z τ γ) = EopZ k r j p q (fun Z' => f (x0 k r j hj Z' τ γ)) Z := by
  have hjr : j ≤ r := by omega
  rcases hpq with ⟨hp, hq⟩ | ⟨hp, hq⟩
  · obtain ⟨a, rfl⟩ : ∃ a : Fin j, p = eI k r (Fin.castLE hjr a) := ⟨⟨p.val, hp⟩, Fin.ext rfl⟩
    obtain ⟨b, rfl⟩ : ∃ b : Fin j, q = eI k r (Fin.castLE hjr b) := ⟨⟨q.val, hq⟩, Fin.ext rfl⟩
    rw [EopZ_e hj]
    unfold EabH EZ
    rw [(hH k r j hjr a b).1, (hH k r j hjr a b).2.1, rdV_levi hj τ γ hC, rdV_levi hj τ γ hC]
  · have hp2 := p.isLt
    have hq2 := q.isLt
    obtain ⟨a, rfl⟩ : ∃ a : Fin j, p = esI k r (Fin.castLE hjr a) :=
      ⟨⟨2 * r + k - p.val, by omega⟩, Fin.ext (by simp [esI]; omega)⟩
    obtain ⟨b, rfl⟩ : ∃ b : Fin j, q = esI k r (Fin.castLE hjr b) :=
      ⟨⟨2 * r + k - q.val, by omega⟩, Fin.ext (by simp [esI]; omega)⟩
    rw [EopZ_es hj]
    unfold EabH EZs
    rw [(hH k r j hjr a b).2.2.1, (hH k r j hjr a b).2.2.2, rdV_levi hj τ γ hC, rdV_levi hj τ γ hC]

theorem top_pull (hC : CurveLevi) (hH : HpartLevi) (u : ℂ) (p q : Fin (2 * r + k + 1)) (hpq : Good k r j p q)
    (f : Q.Mx k r → E) (Z : MJ j) :
    QuantumDeterminants.Top (EabH (Hpk k r)) u p q f (x0 k r j hj Z τ γ) =
      TopG (EopZ k r j) u p q (fun Z' => f (x0 k r j hj Z' τ γ)) Z := by
  unfold QuantumDeterminants.Top TopG
  rw [eab_pull hj τ γ hC hH p q hpq]

def Rel (T : (Q.Mx k r → E) → Q.Mx k r → E) (S : (MJ j → E) → MJ j → E) : Prop :=
  ∀ (f : Q.Mx k r → E) (Z : MJ j), T f (x0 k r j hj Z τ γ) = S (fun Z' => f (x0 k r j hj Z' τ γ)) Z

theorem foldr_pull : ∀ (L₁ : List ((Q.Mx k r → E) → Q.Mx k r → E)) (L₂ : List ((MJ j → E) → MJ j → E)),
    List.Forall₂ (Rel (E := E) hj τ γ) L₁ L₂ →
    ∀ (f : Q.Mx k r → E) (Z : MJ j),
      (L₁.foldr (fun (T : (Q.Mx k r → E) → Q.Mx k r → E) (h : Q.Mx k r → E) => T h) f) (x0 k r j hj Z τ γ) =
      (L₂.foldr (fun (T : (MJ j → E) → MJ j → E) (h : MJ j → E) => T h) (fun Z' => f (x0 k r j hj Z' τ γ))) Z
  | [], [], _ => fun _ _ => rfl
  | T :: L₁, S :: L₂, List.Forall₂.cons h hL => by
    intro f Z
    simp only [List.foldr_cons]
    rw [h]
    congr 1
    funext Z'
    exact foldr_pull L₁ L₂ hL f Z'

theorem forall₂_ofFn {α β : Type*} (R : α → β → Prop) : ∀ (n : ℕ) (F : Fin n → α) (G : Fin n → β),
    (∀ i, R (F i) (G i)) → List.Forall₂ R (List.ofFn F) (List.ofFn G)
  | 0, _, _, _ => by simp
  | n + 1, F, G, h => by
    rw [List.ofFn_succ, List.ofFn_succ]
    exact List.Forall₂.cons (h 0) (forall₂_ofFn R n _ _ (fun i => h i.succ))

theorem qmin_pull (hC : CurveLevi) (hH : HpartLevi) {t : ℕ} (a b : Fin t → Fin (2 * r + k + 1)) (u : ℂ)
    (hab : ∀ (σ : Equiv.Perm (Fin t)) (i : Fin t), Good k r j (a (σ i)) (b i)) (f : Q.Mx k r → E) (Z : MJ j) :
    qminorOp (EabH (Hpk k r)) a b u f (x0 k r j hj Z τ γ) =
      qminG (EopZ k r j) a b u (fun Z' => f (x0 k r j hj Z' τ γ)) Z := by
  unfold qminorOp qminG
  simp only [Finset.sum_apply, Pi.smul_apply]
  refine Finset.sum_congr rfl (fun σ _ => ?_)
  congr 1
  refine foldr_pull hj τ γ _ _ ?_ f Z
  exact forall₂_ofFn (Rel (E := E) hj τ γ) t _ _ (fun i f' Z' => top_pull hj τ γ hC hH _ _ _ (hab σ i) f' Z')

theorem AAop_pull (hC : CurveLevi) (hH : HpartLevi) (hXC : XiCoef) (m : ℕ) (hm : m ≤ r) (hmj : m ≤ j) (u : ℂ)
    (f : Q.Mx k r → E) (Z : MJ j) :
    C3.AAop k r m hm u f (x0 k r j hj Z τ γ) = AZ k r j m hm hmj u (fun Z' => f (x0 k r j hj Z' τ γ)) Z := by
  classical
  unfold C3.AAop AZ
  refine Finset.sum_congr rfl (fun c _ => ?_)
  split_ifs with hc
  · have hcoef : (Matrix.of fun a l : Fin m =>
        herm (Hpk k r) (x0 k r j hj Z τ γ *ᵥ bvec (c l)) (bvec (eI k r (Fin.castLE hm a)))) =
        Matrix.of fun a l => cZ Z (c l) (Fin.castLE hmj a) := by
      ext a l
      exact hXC k r j hj Z τ γ (Fin.castLE hmj a) (c l)
    rw [hcoef]
    by_cases hall : ∀ l, (c l).val < j
    · rw [qmin_pull hj τ γ hC hH]
      intro σ i
      left
      exact ⟨by simp [C3.xR, eI]; omega, hall i⟩
    · push Not at hall
      obtain ⟨l, hl⟩ := hall
      rw [Matrix.det_eq_zero_of_column_eq_zero l (fun a => by simp [cZ]; omega)]
      simp
  · rfl

theorem AAvop_pull (hC : CurveLevi) (hH : HpartLevi) (hXV : XiCoefV) (m : ℕ) (hm : m ≤ r) (hmj : m ≤ j)
    (ell : ℂ) (f : Q.Mx k r → E) (Z : MJ j) (hZ : Z.det ≠ 0) (hτ : τ ≠ 0) (hγ : γ ∈ B.GV k (r - (j + 1))) :
    C3.AAvop k r m hm ell f (x0 k r j hj Z τ γ) = AvZ k r j m hm hmj ell (fun Z' => f (x0 k r j hj Z' τ γ)) Z := by
  classical
  unfold C3.AAvop AvZ
  refine Finset.sum_congr rfl (fun c _ => ?_)
  split_ifs with hc
  · have hcoef : (Matrix.of fun a l : Fin m =>
        ((x0 k r j hj Z τ γ)⁻¹ *ᵥ bvec (eI k r (Fin.castLE hm a))) (c l)) =
        Matrix.of fun a l => cvZ k r Z (c l) (Fin.castLE hmj a) := by
      ext a l
      exact hXV k r j hj Z τ γ hZ hτ hγ (Fin.castLE hmj a) (c l)
    rw [hcoef]
    by_cases hall : ∀ l, 2 * r + k < (c l).val + j
    · rw [qmin_pull hj τ γ hC hH]
      intro σ i
      right
      have := i.isLt
      exact ⟨hall (σ i), by simp [C3.sR, esI]; omega⟩
    · push Not at hall
      obtain ⟨l, hl⟩ := hall
      rw [Matrix.det_eq_zero_of_column_eq_zero l (fun a => by simp [cvZ]; omega)]
      simp
  · rfl

theorem Dmin_pull (hXC : XiCoef) (z z' : Fin (2 * r + k + 1) → ℂ) (Z : MJ j) :
    Dmin k r z z' (x0 k r j hj Z τ γ) ⟨j, by omega⟩ = Z.det := by
  show ((Zhat k r z z' (x0 k r j hj Z τ γ)).submatrix (Fin.castLE (by omega : j ≤ r + 1))
    (Fin.castLE (by omega : j ≤ r + 1))).det = Z.det
  congr 1
  ext a b
  have ha := a.isLt
  have hb := b.isLt
  simp only [Matrix.submatrix_apply, Zhat, fvec]
  rw [dif_pos (by simp; omega), dif_pos (by simp; omega)]
  have := hXC k r j hj Z τ γ a (eI k r ⟨b.val, by omega⟩)
  simp only [eI] at this ⊢
  simpa [hb] using this

theorem vLet_pull (hC : CurveLevi) (hH : HpartLevi) (hXC : XiCoef) (hXV : XiCoefV)
    (z z' : Fin (2 * r + k + 1) → ℂ) (l : C.Letter) (e : Fin 2) (Φ : Q.Mx k r → E) (Z : MJ j)
    (hZ : Z.det ≠ 0) (hτ : τ ≠ 0) (hγ : γ ∈ B.GV k (r - (j + 1))) :
    D.vLet k r z z' j (by omega) l e Φ (x0 k r j hj Z τ γ) =
      Aform k r j hj l e (fun Z' => Φ (x0 k r j hj Z' τ γ)) Z := by
  unfold D.vLet Aform
  split_ifs
  · rfl
  · rw [Dmin_pull hj τ γ hXC, AAop_pull hj τ γ hC hH hXC]
  · rw [Dmin_pull hj τ γ hXC, AAvop_pull hj τ γ hC hH hXV _ _ _ _ _ Z hZ hτ hγ]

end transfer

section lin

variable {j : ℕ}

def W (E : Type) [NormedAddCommGroup E] [NormedSpace ℂ E] (Z : MJ j) : Submodule ℂ (MJ j → E) where
  carrier := {h | ∃ V : Set (MJ j), IsOpen V ∧ Z ∈ V ∧ ContDiffOn ℝ ∞ h V}
  add_mem' := by
    rintro h₁ h₂ ⟨V₁, o₁, m₁, s₁⟩ ⟨V₂, o₂, m₂, s₂⟩
    exact ⟨V₁ ∩ V₂, o₁.inter o₂, ⟨m₁, m₂⟩, (s₁.mono Set.inter_subset_left).add (s₂.mono Set.inter_subset_right)⟩
  zero_mem' := ⟨Set.univ, isOpen_univ, trivial, contDiffOn_const⟩
  smul_mem' := by
    rintro c h ⟨V, o, m, s⟩
    exact ⟨V, o, m, s.const_smul c⟩

def fW {T : (MJ j → E) → MJ j → E} (hT : ZOp T) (Z : MJ j) (hZ : Z.det ≠ 0) : W E Z →ₗ[ℂ] E where
  toFun h := T h.1 Z
  map_add' := by
    rintro ⟨h₁, V₁, o₁, m₁, s₁⟩ ⟨h₂, V₂, o₂, m₂, s₂⟩
    exact hT.add (V₁ ∩ V₂ ∩ {Z | Z.det ≠ 0}) h₁ h₂ ((o₁.inter o₂).inter isOpen_inv)
      (fun _ h => h.2) (s₁.mono (fun _ h => h.1.1)) (s₂.mono (fun _ h => h.1.2)) Z ⟨⟨m₁, m₂⟩, hZ⟩
  map_smul' := by
    rintro c ⟨h, V, o, m, s⟩
    exact hT.smul (V ∩ {Z | Z.det ≠ 0}) c h (o.inter isOpen_inv) (fun _ h => h.2) (s.mono (fun _ h => h.1)) Z ⟨m, hZ⟩

def linOf {T : (MJ j → E) → MJ j → E} (hT : ZOp T) : (MJ j → E) →ₗ[ℂ] (MJ j → E) :=
  LinearMap.pi fun Z => if hZ : Z.det ≠ 0 then Classical.choose (LinearMap.exists_extend (fW hT Z hZ)) else 0

theorem linOf_eq {T : (MJ j → E) → MJ j → E} (hT : ZOp T) {Z : MJ j} (hZ : Z.det ≠ 0) {h : MJ j → E}
    (hh : h ∈ W E Z) : linOf hT h Z = T h Z := by
  simp only [linOf, LinearMap.pi_apply, dif_pos hZ]
  have := Classical.choose_spec (LinearMap.exists_extend (fW hT Z hZ))
  exact congrArg (fun L : W E Z →ₗ[ℂ] E => L ⟨h, hh⟩) this

theorem dz_congr {F G : ℂ → E} {τ : ℂ} (h : F =ᶠ[𝓝 τ] G) : PBP.dz F τ = PBP.dz G τ := by
  unfold PBP.dz; rw [h.fderiv_eq]

theorem dzb_congr {F G : ℂ → E} {τ : ℂ} (h : F =ᶠ[𝓝 τ] G) : PBP.dzb F τ = PBP.dzb G τ := by
  unfold PBP.dzb; rw [h.fderiv_eq]

theorem linOf_par (hD : DzSlice) {T : (MJ j → E) → MJ j → E} (hT : ZOp T) : ParamComm (linOf hT) := by
  intro U κ hU hUi hκ
  obtain ⟨t1, t2⟩ := hT.par U κ hU hUi hκ
  have hsl : ∀ τ : ℂ, IsOpen {Z : MJ j | ((τ, (Z : Fin j → Fin j → ℂ)) : ℂ × (Fin j → Fin j → ℂ)) ∈ U} :=
    fun τ => hU.preimage (contDiff_pair τ).continuous
  have key : ∀ (τ : ℂ) (Z : MJ j), ((τ, (Z : Fin j → Fin j → ℂ)) : ℂ × (Fin j → Fin j → ℂ)) ∈ U →
      linOf hT (κ τ) Z = T (κ τ) Z := by
    intro τ Z hτZ
    exact linOf_eq hT (hUi hτZ) ⟨_, hsl τ, hτZ, hκ.comp (contDiff_pair τ).contDiffOn (fun _ h => h)⟩
  refine ⟨t1.congr (fun q hq => key q.1 (Matrix.of q.2) hq), fun q hq => ?_⟩
  have hev : (fun τ => linOf hT (κ τ) (Matrix.of q.2)) =ᶠ[𝓝 q.1] (fun τ => T (κ τ) (Matrix.of q.2)) := by
    have hop : IsOpen {τ : ℂ | ((τ, q.2) : ℂ × (Fin j → Fin j → ℂ)) ∈ U} :=
      hU.preimage (continuous_id.prodMk continuous_const)
    filter_upwards [hop.mem_nhds (show (q.1, q.2) ∈ U from hq)] with τ hτ
    exact key τ _ hτ
  obtain ⟨d1, d2⟩ := hD j E U κ hU hκ q.1
  refine ⟨?_, ?_⟩
  · rw [dz_congr hev, (t2 q hq).1]
    exact (linOf_eq hT (hUi hq) ⟨_, hsl q.1, hq, d1⟩).symm
  · rw [dzb_congr hev, (t2 q hq).2]
    exact (linOf_eq hT (hUi hq) ⟨_, hsl q.1, hq, d2⟩).symm

end lin

theorem zOnly_of_parts (hC : CurveLevi) (hH : HpartLevi) (hXC : XiCoef) (hXV : XiCoefV) (hXM : XiMem)
    (hXS : XiSmooth) (hR : ZOpRd) (hD : DzSlice) : ZOnly := by
  intro k r j hj z z' E _ _ l e _ _
  refine ⟨linOf (zop_Aform (E := E) hR k r j hj l e), linOf_par hD _, ?_⟩
  intro Dm Φ _ _ hsm Z τ γ hZ hτ hγ hmem
  rw [vLet_pull hj τ γ hC hH hXC hXV z z' l e Φ Z hZ hτ hγ]
  refine (linOf_eq _ hZ ?_).symm
  obtain ⟨UF, F, hUF, hgUF, hF, hΦF⟩ := hsm _ ⟨hXM k r j hj Z τ γ hZ hτ hγ, hmem⟩
  have hcont := (hXS k r j hj τ γ).continuousOn
  refine ⟨{Z' | Z'.det ≠ 0} ∩ (fun Z' => x0 k r j hj Z' τ γ) ⁻¹' UF,
    hcont.isOpen_inter_preimage isOpen_inv hUF, ⟨hZ, hgUF⟩, ?_⟩
  refine (hF.comp ((hXS k r j hj τ γ).mono Set.inter_subset_left) (fun _ h => h.2)).congr ?_
  intro Z' hZ'
  exact hΦF _ hZ'.2 (hXM k r j hj Z' τ γ hZ'.1 hτ hγ)

end Formalism.FourierDecayAlt.P.WirtingerOperators
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnlyOfParts =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnlyOfLeviCurve =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnlyOfLeviCurve", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParamCommF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelPointEntryContDiffOn\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightDerivativeOperatorClass\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnlyOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem z_only_of_levi_curve (hC : WirtingerOperators.CurveLevi) (hH : WirtingerOperators.HpartLevi) : LevelPointCoordinates.ZOnly :=
  WirtingerOperators.zOnly_of_parts hC hH _root_.Formalism.FourierDecayAlt.P.WirtingerOperators.XiPf.xiCoef _root_.Formalism.FourierDecayAlt.P.WirtingerOperators.XiPf.xiCoefV _root_.Formalism.FourierDecayAlt.P.WirtingerOperators.XiPf.xiMem _root_.Formalism.FourierDecayAlt.P.WirtingerOperators.XiPf.xiSmooth
    right_derivative_operator_class wirtinger_slice_smooth

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnlyOfLeviCurve =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnly =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnly", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelZeroKernel\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianPartLevi\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnlyOfLeviCurve\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem z_only : LevelPointCoordinates.ZOnly :=
  z_only_of_levi_curve _root_.Formalism.FourierDecayAlt.P.WirtingerOperators.LeviExponential.curveLevi _root_.Formalism.FourierDecayAlt.P.WirtingerOperators.LeviExponential.hpartLevi

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnly =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.DzFamilySmooth =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.DzFamilySmooth", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.WordActionLetterSiteApply\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelZeroKernel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.IsAdmissibleSplittingCharPairMulTwist\n\n"}
section -- clump:auto
@[expose] public section

open scoped ContDiff ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.LevelPointCoordinates.WordIndPf

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] {j : ℕ}

theorem paramComm_local {A : (Matrix (Fin j) (Fin j) ℂ → E) →ₗ[ℂ] (Matrix (Fin j) (Fin j) ℂ → E)} (hA : ParamComm A) {W : Set (Fin j → Fin j → ℂ)} (hW : IsOpen W)
    (hWd : W ⊆ {Z | (Matrix.of Z).det ≠ 0}) {f g : Matrix (Fin j) (Fin j) ℂ → E} (hfg : ∀ Z ∈ W, f (Matrix.of Z) = g (Matrix.of Z)) :
    ∀ Z ∈ W, A f (Matrix.of Z) = A g (Matrix.of Z) := by
  intro Z hZ
  set h : Matrix (Fin j) (Fin j) ℂ → E := f - g with hh
  set c : ℂ → ℂ := fun τ => if τ = 0 then 1 else 0 with hc
  set U : Set (ℂ × (Fin j → Fin j → ℂ)) := Set.univ ×ˢ W with hUdef
  have hU : IsOpen U := isOpen_univ.prod hW
  have hUd : U ⊆ {q | (Matrix.of q.2).det ≠ 0} := fun q hq => hWd hq.2
  have hsm : ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => (c q.1 • h) (Matrix.of q.2)) U := by
    refine (contDiffOn_const (c := (0 : E))).congr fun q hq => ?_
    simp [hh, hfg q.2 hq.2]
  obtain ⟨h1, -⟩ := hA U (fun τ => c τ • h) hU hUd hsm
  have hq0 : ((0 : ℂ), Z) ∈ U := ⟨trivial, hZ⟩
  have hca : ContinuousAt (fun q : ℂ × (Fin j → Fin j → ℂ) => A (c q.1 • h) (Matrix.of q.2)) ((0 : ℂ), Z) :=
    h1.continuousOn.continuousAt (hU.mem_nhds hq0)
  have hcomp : ContinuousAt (fun τ : ℂ => A (c τ • h) (Matrix.of Z)) 0 :=
    hca.comp (f := fun τ : ℂ => (τ, Z)) (continuous_id.prodMk continuous_const).continuousAt
  have t1 := hcomp.tendsto.mono_left (nhdsWithin_le_nhds (s := {(0 : ℂ)}ᶜ))
  have t2 : Filter.Tendsto (fun τ : ℂ => A (c τ • h) (Matrix.of Z)) (nhdsWithin 0 {(0 : ℂ)}ᶜ) (nhds 0) := by
    refine tendsto_const_nhds.congr' ?_
    filter_upwards [self_mem_nhdsWithin] with τ hτ
    have : τ ≠ 0 := hτ
    simp [hc, this]
  have := tendsto_nhds_unique t1 t2
  simp only [hc, if_true, one_smul] at this
  have e : A h (Matrix.of Z) = A f (Matrix.of Z) - A g (Matrix.of Z) := by
    rw [hh, map_sub]; rfl
  rw [← sub_eq_zero, ← e, this]

theorem dz_family_smooth {U : Set (ℂ × (Fin j → Fin j → ℂ))} (hU : IsOpen U) {F : ℂ → Matrix (Fin j) (Fin j) ℂ → E}
    (hF : ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => F q.1 (Matrix.of q.2)) U) :
    ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => PBP.dz (fun τ => F τ (Matrix.of q.2)) q.1) U ∧
      ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => PBP.dzb (fun τ => F τ (Matrix.of q.2)) q.1) U := by
  set G : ℂ × (Fin j → Fin j → ℂ) → E := fun q => F q.1 (Matrix.of q.2) with hG
  have hD : ContDiffOn ℝ ∞ (fun q => fderiv ℝ G q) U := hF.fderiv_of_isOpen hU (by simp)
  have key : ∀ q ∈ U, ∀ v : ℂ, fderiv ℝ (fun τ => F τ (Matrix.of q.2)) q.1 v = fderiv ℝ G q (v, 0) := by
    intro q hq v
    have hGd : HasFDerivAt G (fderiv ℝ G q) q :=
      ((hF.differentiableOn (by simp)).differentiableAt (hU.mem_nhds hq)).hasFDerivAt
    have hin : HasFDerivAt (fun τ : ℂ => (τ, q.2)) (ContinuousLinearMap.inl ℝ ℂ (Fin j → Fin j → ℂ)) q.1 :=
      hasFDerivAt_prodMk_left q.1 q.2
    have hc := hGd.comp q.1 hin
    rw [show (fun τ => F τ (Matrix.of q.2)) = G ∘ (fun τ : ℂ => (τ, q.2)) from rfl, hc.fderiv]
    rfl
  constructor
  · refine (((hD.clm_apply (contDiffOn_const (c := ((1 : ℂ), (0 : Fin j → Fin j → ℂ))))).sub
      ((hD.clm_apply (contDiffOn_const (c := (Complex.I, (0 : Fin j → Fin j → ℂ))))).const_smul Complex.I)).const_smul
        (1 / 2 : ℂ)).congr fun q hq => ?_
    simp only [PBP.dz, key q hq]
  · refine (((hD.clm_apply (contDiffOn_const (c := ((1 : ℂ), (0 : Fin j → Fin j → ℂ))))).add
      ((hD.clm_apply (contDiffOn_const (c := (Complex.I, (0 : Fin j → Fin j → ℂ))))).const_smul Complex.I)).const_smul
        (1 / 2 : ℂ)).congr fun q hq => ?_
    simp only [PBP.dzb, key q hq]

section lin

variable {X : Type} (A : (X → E) →ₗ[ℂ] (X → E))

theorem linP (a b c : ℂ) (u v w : X → E) :
    A (fun Z => a • u Z + b • v Z - c • w Z) = a • A u + b • A v - c • A w := by
  rw [show (fun Z => a • u Z + b • v Z - c • w Z) = a • u + b • v - c • w from rfl, map_sub, map_add (f := _),
    map_smul, map_smul, map_smul]

theorem linM (a b c : ℂ) (u v w : X → E) :
    A (fun Z => a • u Z - b • v Z - c • w Z) = a • A u - b • A v - c • A w := by
  rw [show (fun Z => a • u Z - b • v Z - c • w Z) = a • u - b • v - c • w from rfl, map_sub, map_sub,
    map_smul, map_smul, map_smul]

theorem linS (d : ℂ) (u : X → E) : A (fun Z => d • u Z) = d • A u := by
  rw [show (fun Z => d • u Z) = d • u from rfl, map_smul]

end lin

theorem row_family (κ : ℂ) (pl : Bool) (Y : ℂ) {U : Set (ℂ × (Fin j → Fin j → ℂ))} (hU : IsOpen U)
    (hU0 : U ⊆ {q | q.1 ≠ 0}) {Fa Fb : ℂ → Matrix (Fin j) (Fin j) ℂ → E}
    (ha : ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => Fa q.1 (Matrix.of q.2)) U)
    (hb : ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => Fb q.1 (Matrix.of q.2)) U) (s : Fin 2) :
    ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) =>
      row κ pl Y (fun τ => Fa τ (Matrix.of q.2)) (fun τ => Fb τ (Matrix.of q.2)) s q.1) U := by
  obtain ⟨hdz, hdzb⟩ := dz_family_smooth hU ha
  have hm : Set.MapsTo (fun q : ℂ × (Fin j → Fin j → ℂ) => q.1) U {τ | τ ≠ 0} := fun q hq => hU0 hq
  have h1 : ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => q.1) U := contDiffOn_fst
  have h2 : ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => conj q.1) U := cd_conj.comp contDiffOn_fst hm
  have h3 : ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => q.1⁻¹) U := cd_inv.comp contDiffOn_fst hm
  have h4 : ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => (conj q.1)⁻¹) U := cd_conjinv.comp contDiffOn_fst hm
  unfold row
  rcases _root_.Formalism.FourierDecayAlt.P.MAx3.NF.fin2 s with hs | hs <;> cases pl <;> simp only [hs, if_true, Bool.false_eq_true, if_false, one_ne_zero]
  · exact ((contDiffOn_const.smul ha).sub (h2.smul hdzb)).sub (h2.smul hb)
  · exact ((contDiffOn_const.smul ha).add (h1.smul hdz)).sub (h1.smul hb)
  · exact h4.smul ha
  · exact h3.smul ha

theorem row_comm {A : (Matrix (Fin j) (Fin j) ℂ → E) →ₗ[ℂ] (Matrix (Fin j) (Fin j) ℂ → E)} (hA : ParamComm A)
    (κ : ℂ) (pl : Bool) (Y : ℂ) {U : Set (ℂ × (Fin j → Fin j → ℂ))} (hU : IsOpen U)
    (hUd : U ⊆ {q | (Matrix.of q.2).det ≠ 0}) {Fa Fb : ℂ → Matrix (Fin j) (Fin j) ℂ → E}
    (ha : ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => Fa q.1 (Matrix.of q.2)) U) (s : Fin 2)
    {q : ℂ × (Fin j → Fin j → ℂ)} (hq : q ∈ U) :
    A (fun Z => row κ pl Y (fun τ => Fa τ Z) (fun τ => Fb τ Z) s q.1) (Matrix.of q.2) =
      row κ pl Y (fun τ => A (Fa τ) (Matrix.of q.2)) (fun τ => A (Fb τ) (Matrix.of q.2)) s q.1 := by
  obtain ⟨-, hc⟩ := hA U Fa hU hUd ha
  obtain ⟨hz, hzb⟩ := hc q hq
  unfold row
  rcases _root_.Formalism.FourierDecayAlt.P.MAx3.NF.fin2 s with hs | hs <;> cases pl <;> simp only [hs, if_true, Bool.false_eq_true, if_false, one_ne_zero]
  · rw [linM A _ _ _ (Fa q.1) (fun Z => PBP.dzb (fun τ => Fa τ Z) q.1) (Fb q.1)]
    simp only [Pi.sub_apply, Pi.smul_apply, hzb]
  · rw [linP A _ _ _ (Fa q.1) (fun Z => PBP.dz (fun τ => Fa τ Z) q.1) (Fb q.1)]
    simp only [Pi.add_apply, Pi.sub_apply, Pi.smul_apply, hz]
  · rw [linS A _ (Fa q.1)]; rfl
  · rw [linS A _ (Fa q.1)]; rfl

section words

variable {S : Type} [Fintype S] [DecidableEq S]

theorem comm_rawBT {A : (Matrix (Fin j) (Fin j) ℂ → E) →ₗ[ℂ] (Matrix (Fin j) (Fin j) ℂ → E)} (hA : ParamComm A)
    {U : Set (ℂ × (Fin j → Fin j → ℂ))} (hU : IsOpen U) (hUd : U ⊆ {q | (Matrix.of q.2).det ≠ 0})
    (hU0 : U ⊆ {q | q.1 ≠ 0}) (κ : ℂ) (L : List (Wd.Letter ℂ S)) (h : Wd.Ix S → ℂ → Matrix (Fin j) (Fin j) ℂ → E)
    (hs : ∀ b, ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => h b q.1 (Matrix.of q.2)) U) :
    (∀ e, ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) =>
        rawBT κ L (fun b τ => h b τ (Matrix.of q.2)) e q.1) U) ∧
      ∀ e, ∀ q ∈ U, A (fun Z => rawBT κ L (fun b τ => h b τ Z) e q.1) (Matrix.of q.2) =
        rawBT κ L (fun b τ => A (h b τ) (Matrix.of q.2)) e q.1 := by
  induction L with
  | nil => exact ⟨hs, fun _ _ _ => rfl⟩
  | cons l L ih =>
    obtain ⟨ih1, ih2⟩ := ih
    constructor
    · intro e
      exact row_family κ l.plus l.pt hU hU0 (Fa := fun τ Z => rawBT κ L (fun b τ => h b τ Z) _ τ)
        (Fb := fun τ Z => rawBT κ L (fun b τ => h b τ Z) _ τ) (ih1 _) (ih1 _) _
    · intro e q hq
      show A (fun Z => row κ l.plus l.pt _ _ _ q.1) (Matrix.of q.2) = row κ l.plus l.pt _ _ _ q.1
      rw [row_comm hA κ l.plus l.pt hU hUd (Fa := fun τ Z => rawBT κ L (fun b τ => h b τ Z) _ τ)
        (Fb := fun τ Z => rawBT κ L (fun b τ => h b τ Z) _ τ) (ih1 _) _ hq]
      have hV : IsOpen {τ : ℂ | (τ, q.2) ∈ U} :=
        hU.preimage (continuous_id.prodMk continuous_const)
      exact row_congr κ l.plus l.pt hV (fun τ hτ => ih2 _ (τ, q.2) hτ) (fun τ hτ => ih2 _ (τ, q.2) hτ) _ hq

end words

end Formalism.FourierDecayAlt.P.LevelPointCoordinates.WordIndPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.DzFamilySmooth =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.BasePointSmoothAndMem =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.BasePointSmoothAndMem", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelZeroKernel\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.WordActionLetterSiteApply\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.DzFamilySmooth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.IsAdmissibleSplittingCharPairMulTwist\n\n"}
section -- clump:auto
@[expose] public section

open scoped ContDiff ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.LevelPointCoordinates.WordIndPf

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

def BasePointSmoothAndMem : Prop :=
  ∀ (k r j : ℕ) (hj : j + 1 ≤ r) (γ : B.Mat k (r - (j + 1))), γ ∈ B.GV k (r - (j + 1)) →
    ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => x0 k r j hj (Matrix.of q.2) q.1 γ)
      {q | q.1 ≠ 0 ∧ (Matrix.of q.2).det ≠ 0} ∧
    ∀ q : ℂ × (Fin j → Fin j → ℂ), q.1 ≠ 0 → (Matrix.of q.2).det ≠ 0 →
      x0 k r j hj (Matrix.of q.2) q.1 γ ∈ Q.Glev k r 0

def Om (k r j : ℕ) (hj : j + 1 ≤ r) (Dm : Set (Q.Mx k r)) (γ : B.Mat k (r - (j + 1))) :
    Set (ℂ × (Fin j → Fin j → ℂ)) :=
  {q | q.1 ≠ 0 ∧ (Matrix.of q.2).det ≠ 0} ∩ (fun q => x0 k r j hj (Matrix.of q.2) q.1 γ) ⁻¹' Dm

theorem isOpen_O (j : ℕ) : IsOpen {q : ℂ × (Fin j → Fin j → ℂ) | q.1 ≠ 0 ∧ (Matrix.of q.2).det ≠ 0} := by
  have h1 : IsOpen {q : ℂ × (Fin j → Fin j → ℂ) | q.1 ≠ 0} := isOpen_ne.preimage continuous_fst
  have hd : Continuous fun q : ℂ × (Fin j → Fin j → ℂ) => (Matrix.of q.2).det := Continuous.matrix_det continuous_snd
  have h2 : IsOpen {q : ℂ × (Fin j → Fin j → ℂ) | (Matrix.of q.2).det ≠ 0} := isOpen_ne.preimage hd
  exact h1.inter h2

section geom

variable {k r j : ℕ} {hj : j + 1 ≤ r} {Dm : Set (Q.Mx k r)} {γ : B.Mat k (r - (j + 1))}

theorem isOpen_Om (hX : BasePointSmoothAndMem) (hγ : γ ∈ B.GV k (r - (j + 1))) (hDm : IsOpen Dm) : IsOpen (Om k r j hj Dm γ) :=
  (hX k r j hj γ hγ).1.continuousOn.isOpen_inter_preimage (isOpen_O j) hDm

theorem Om_sub {q : ℂ × (Fin j → Fin j → ℂ)} (hq : q ∈ Om k r j hj Dm γ) :
    q.1 ≠ 0 ∧ (Matrix.of q.2).det ≠ 0 ∧ x0 k r j hj (Matrix.of q.2) q.1 γ ∈ Dm :=
  ⟨hq.1.1, hq.1.2, hq.2⟩

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

theorem family_smooth (hX : BasePointSmoothAndMem) (hγ : γ ∈ B.GV k (r - (j + 1))) {F : Q.Mx k r → E}
    (hF : Q.SmoothLev k r 0 Dm F) :
    ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => F (x0 k r j hj (Matrix.of q.2) q.1 γ)) (Om k r j hj Dm γ) := by
  intro q hq
  obtain ⟨hsm, hG⟩ := hX k r j hj γ hγ
  obtain ⟨U', F', hU', hg0, hF', hag⟩ := hF _ ⟨hG q hq.1.1 hq.1.2, hq.2⟩
  have hx : ContDiffWithinAt ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) => x0 k r j hj (Matrix.of q.2) q.1 γ)
      (Om k r j hj Dm γ) q := (hsm q hq.1).mono Set.inter_subset_left
  have hc := (hF'.contDiffAt (hU'.mem_nhds hg0)).comp_contDiffWithinAt q hx
  refine hc.congr_of_eventuallyEq ?_ (hag _ hg0 (hG q hq.1.1 hq.1.2))
  have hca : ContinuousAt (fun q : ℂ × (Fin j → Fin j → ℂ) => x0 k r j hj (Matrix.of q.2) q.1 γ) q :=
    hsm.continuousOn.continuousAt ((isOpen_O j).mem_nhds hq.1)
  have h1 : (fun q : ℂ × (Fin j → Fin j → ℂ) => x0 k r j hj (Matrix.of q.2) q.1 γ) ⁻¹' U' ∈ nhds q :=
    hca.preimage_mem_nhds (hU'.mem_nhds hg0)
  filter_upwards [nhdsWithin_le_nhds h1, self_mem_nhdsWithin] with q' h1' h2'
  exact hag _ h1' (hG q' h2'.1.1 h2'.1.2)

end geom

section main

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

theorem rules_uw (hR : RulesClosed) {k r j : ℕ} (hj : j + 1 ≤ r) {z z' : Fin (2 * r + k + 1) → ℂ}
    {Dm : Set (Q.Mx k r)} {Φ : Q.Mx k r → E} (hz : inWb k r z) (hz' : inWb k r z') (hDm : IsOpen Dm)
    (hDs : Dm ⊆ domJ k r j hj z z') (hΦ : RulesOn k r j hj z z' Dm Φ) (i : ℕ) (hi : i ≤ r) (hor : i = j ∨ i = j + 1) :
    ∀ (w : List C.Letter) (e : Wd.Ix (Fin w.length)), RulesOn k r j hj z z' Dm (D.uwG k r z z' Φ i hi w e) := by
  intro w
  induction w with
  | nil => intro e; exact hΦ
  | cons l w ih =>
    intro e
    exact hR k r j hj z z' E Dm _ hz hz' hDm hDs (ih _) i (by omega) hor l (e 0)

theorem core (hH : HeadLetter) (hZ : ZOnly) (hR : RulesClosed) (hX : BasePointSmoothAndMem) {k r j : ℕ} (hj : j + 1 ≤ r)
    {z z' : Fin (2 * r + k + 1) → ℂ} {Dm : Set (Q.Mx k r)} {Φ : Q.Mx k r → E} (hz : inWb k r z)
    (hz' : inWb k r z') (hDm : IsOpen Dm) (hDs : Dm ⊆ domJ k r j hj z z') (hΦ : RulesOn k r j hj z z' Dm Φ)
    {γ : B.Mat k (r - (j + 1))} (hγ : γ ∈ B.GV k (r - (j + 1))) :
    ∀ (w : List C.Letter), ∀ q ∈ Om k r j hj Dm γ, ∀ e,
      D.uwG k r z z' Φ (j + 1) hj w e (x0 k r j hj (Matrix.of q.2) q.1 γ) =
        rawBT (levelZeroKernel k r j) (D.positionted w)
          (fun b τ => D.uwG k r z z' Φ j (by omega) w b (x0 k r j hj (Matrix.of q.2) τ γ)) e q.1 := by
  have hO := isOpen_Om (hj := hj) hX hγ hDm
  have hOd : Om k r j hj Dm γ ⊆ {q | (Matrix.of q.2).det ≠ 0} := fun q hq => hq.1.2
  have hO0 : Om k r j hj Dm γ ⊆ {q | q.1 ≠ 0} := fun q hq => hq.1.1
  intro w
  induction w with
  | nil => intro q _ e; rfl
  | cons l w ih =>
    intro q hq e
    obtain ⟨pl, Y⟩ := l
    set κ := levelZeroKernel k r j with hκ
    set Ψ := D.uwG k r z z' Φ (j + 1) hj w (Fin.tail e) with hΨ
    have hRΨ : RulesOn k r j hj z z' Dm Ψ := rules_uw hR hj hz hz' hDm hDs hΦ (j + 1) hj (Or.inr rfl) w _
    have hV : IsOpen {τ : ℂ | (τ, q.2) ∈ Om k r j hj Dm γ} := hO.preimage (continuous_id.prodMk continuous_const)

    have key : ∀ s : Fin 2, ∀ τ ∈ {τ : ℂ | (τ, q.2) ∈ Om k r j hj Dm γ},
        D.vLet k r z z' j (by omega) (pl, Y) s Ψ (x0 k r j hj (Matrix.of q.2) τ γ) =
          rawBT κ (D.positionted w) (fun b τ' => D.vLet k r z z' j (by omega) (pl, Y) s
            (D.uwG k r z z' Φ j (by omega) w b) (x0 k r j hj (Matrix.of q.2) τ' γ)) (Fin.tail e) τ := by
      intro s τ hτ
      obtain ⟨Aop, hPC, hAz⟩ := hZ k r j hj z z' E (pl, Y) s hz hz'
      obtain ⟨hτ0, hτd, hτx⟩ := Om_sub hτ
      rw [hAz Dm Ψ hDm hDs hRΨ.1 (Matrix.of q.2) τ γ hτd hτ0 hγ hτx]
      have hW : IsOpen {Z' : Fin j → Fin j → ℂ | (τ, Z') ∈ Om k r j hj Dm γ} :=
        hO.preimage (continuous_const.prodMk continuous_id)
      rw [paramComm_local hPC hW (fun Z' hZ' => hZ'.1.2)
        (g := fun Z' => rawBT κ (D.positionted w)
          (fun b τ' => D.uwG k r z z' Φ j (by omega) w b (x0 k r j hj Z' τ' γ)) (Fin.tail e) τ)
        (fun Z' hZ' => ih (τ, Z') hZ' (Fin.tail e)) q.2 hτ]
      have hsm : ∀ b, ContDiffOn ℝ ∞ (fun q : ℂ × (Fin j → Fin j → ℂ) =>
          D.uwG k r z z' Φ j (by omega) w b (x0 k r j hj (Matrix.of q.2) q.1 γ)) (Om k r j hj Dm γ) :=
        fun b => family_smooth hX hγ (rules_uw hR hj hz hz' hDm hDs hΦ j (by omega) (Or.inl rfl) w b).1
      rw [(comm_rawBT hPC hO hOd hO0 κ (D.positionted w)
        (fun b τ' Z' => D.uwG k r z z' Φ j (by omega) w b (x0 k r j hj Z' τ' γ)) hsm).2 (Fin.tail e) (τ, q.2) hτ]
      refine rawBT_congr κ (D.positionted w) hV (fun b τ' hτ' => ?_) (Fin.tail e) τ hτ
      obtain ⟨h0', hd', hx'⟩ := Om_sub hτ'
      exact (hAz Dm _ hDm hDs (rules_uw hR hj hz hz' hDm hDs hΦ j (by omega) (Or.inl rfl) w b).1
        (Matrix.of q.2) τ' γ hd' h0' hγ hx').symm
    obtain ⟨hq0, hqd, hqx⟩ := Om_sub hq
    have hHL := hH k r j hj z z' E Dm Ψ hz hz' hDm hDs hRΨ (Matrix.of q.2) γ q.1 hqd hq0 hγ hqx Y
    show D.vLet k r z z' (j + 1) hj (pl, Y) (e 0) Ψ (x0 k r j hj (Matrix.of q.2) q.1 γ) = _
    rw [rawBT_indexed_cons]
    have hcons : ∀ s : Fin 2, (fun b : Wd.Ix (Fin w.length) => fun τ =>
        D.uwG k r z z' Φ j (by omega) ((pl, Y) :: w) (Fin.cons s b : Wd.Ix (Fin (w.length + 1)))
          (x0 k r j hj (Matrix.of q.2) τ γ)) =
        fun b τ => D.vLet k r z z' j (by omega) (pl, Y) s (D.uwG k r z z' Φ j (by omega) w b)
          (x0 k r j hj (Matrix.of q.2) τ γ) := by
      intro s
      funext b τ
      simp only [D.uwG, Fin.cons_zero, Fin.cons_succ]
    simp only [hcons]
    have hq' : q.1 ∈ {τ : ℂ | (τ, q.2) ∈ Om k r j hj Dm γ} := hq
    rw [← row_congr κ pl (Y : ℂ) hV (key 0) (key 1) (e 0) hq']
    unfold row
    rcases _root_.Formalism.FourierDecayAlt.P.MAx3.NF.fin2 (e 0) with h | h <;> cases pl <;>
      simp only [h, if_true, Bool.false_eq_true, if_false, one_ne_zero, Complex.conj_ofReal] <;>
      (try simp only [hκ]) <;> first | exact hHL.2.2.1 | exact hHL.1 | exact hHL.2.2.2 | exact hHL.2.1

theorem wordIndOfParts_of (hX : BasePointSmoothAndMem) : WordIndOfParts := by
  intro hH hZ hR k r j hj z z' E _ _ Dm Φ hz hz' hDm hDs hΦ Z γ hZd hγ hline w φ hφ t ht e
  have hq : ((t, Matrix.of.symm Z) : ℂ × (Fin j → Fin j → ℂ)) ∈ Om k r j hj Dm γ :=
    ⟨⟨ht, by simpa only [Equiv.apply_symm_apply] using hZd⟩,
      by simpa only [Set.mem_preimage, Equiv.apply_symm_apply] using hline t ht⟩
  have h1 := core hH hZ hR hX hj hz hz' hDm hDs hΦ hγ w _ hq e
  simp only [Equiv.apply_symm_apply] at h1
  unfold oneBT
  rw [h1, oneBT_eq_raw (levelZeroKernel k r j) (D.positionted w) φ e t ht]
  exact rawBT_congr _ _ (isOpen_ne (x := (0 : ℂ))) (fun b τ hτ => (hφ b τ hτ).symm) e t ht

end main

end Formalism.FourierDecayAlt.P.LevelPointCoordinates.WordIndPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.BasePointSmoothAndMem =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.WordInductionOfPartsHolds =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.WordInductionOfPartsHolds", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.BasePointSmoothAndMem\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MemLevelZeroOfMemGroup\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixTranspose\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ContDiff ComplexConjugate Matrix

noncomputable section

namespace Formalism.FourierDecayAlt.P.LevelPointCoordinates.WordIndPf

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

section es

variable {P : Type} [NormedAddCommGroup P] [NormedSpace ℝ P] {s : Set P}

def ES {m n : Type} (f : P → Matrix m n ℂ) (s : Set P) : Prop := ∀ a b, ContDiffOn ℝ ∞ (fun x => f x a b) s

theorem es_const {m n : Type} (M : Matrix m n ℂ) (s : Set P) : ES (fun _ => M) s := fun _ _ => contDiffOn_const

theorem es_mul {m n o : Type} [Fintype n] {f : P → Matrix m n ℂ} {g : P → Matrix n o ℂ} (hf : ES f s) (hg : ES g s) :
    ES (fun x => f x * g x) s := by
  intro a b
  simp only [Matrix.mul_apply]
  exact ContDiffOn.sum fun c _ => (hf a c).mul (hg c b)

theorem es_conjTranspose {m n : Type} {f : P → Matrix m n ℂ} (hf : ES f s) : ES (fun x => (f x)ᴴ) s := by
  intro a b
  simp only [Matrix.conjTranspose_apply, Complex.star_def]
  exact Complex.conjCLE.contDiff.comp_contDiffOn (hf b a)

theorem es_det {n : Type} [Fintype n] [DecidableEq n] {f : P → Matrix n n ℂ} (hf : ES f s) :
    ContDiffOn ℝ ∞ (fun x => (f x).det) s := by
  simp only [Matrix.det_apply, Units.smul_def, zsmul_eq_mul]
  refine ContDiffOn.sum fun σ _ => contDiffOn_const.mul ?_
  exact contDiffOn_prod fun i _ => hf (σ i) i

theorem es_updateRow {n : Type} [Fintype n] [DecidableEq n] {f : P → Matrix n n ℂ} (hf : ES f s) (r : n) (v : n → ℂ) :
    ES (fun x => (f x).updateRow r v) s := fun a b => by
  simp only [Matrix.updateRow_apply]
  split_ifs
  · exact contDiffOn_const
  · exact hf a b

theorem es_inv {n : Type} [Fintype n] [DecidableEq n] {f : P → Matrix n n ℂ} (hf : ES f s)
    (hd : ∀ x ∈ s, (f x).det ≠ 0) : ES (fun x => (f x)⁻¹) s := fun a b => by
  have hd' : ContDiffOn ℝ ∞ (fun x => ((f x).det)⁻¹) s := (es_det hf).inv hd
  have hu : ES (fun x => (f x).updateRow b (Pi.single a 1)) s := es_updateRow hf b _
  have hm := hd'.mul (es_det hu)
  refine hm.congr fun x hx => ?_
  simp only [Matrix.inv_def, Matrix.smul_apply, Matrix.adjugate_apply, Ring.inverse_eq_inv', smul_eq_mul]

theorem es_reindex {m n m' n' : Type} (e : m ≃ m') (e' : n ≃ n') {f : P → Matrix m n ℂ} (hf : ES f s) :
    ES (fun x => Matrix.reindex e e' (f x)) s := by
  intro a b
  simp only [Matrix.reindex_apply, Matrix.submatrix_apply]
  exact hf _ _

theorem es_fromBlocks {l m n o : Type} {A : P → Matrix n l ℂ} {B' : P → Matrix n m ℂ} {C : P → Matrix o l ℂ}
    {D' : P → Matrix o m ℂ} (hA : ES A s) (hB : ES B' s) (hC : ES C s) (hD : ES D' s) :
    ES (fun x => Matrix.fromBlocks (A x) (B' x) (C x) (D' x)) s := fun a b => by
  rcases a with a | a <;> rcases b with b | b
  · simpa using hA a b
  · simpa using hB a b
  · simpa using hC a b
  · simpa using hD a b

theorem es_fromRows {m₁ m₂ n : Type} {A : P → Matrix m₁ n ℂ} {B' : P → Matrix m₂ n ℂ} (hA : ES A s) (hB : ES B' s) :
    ES (fun x => Matrix.fromRows (A x) (B' x)) s := fun a b => by
  rcases a with a | a
  · simpa using hA a b
  · simpa using hB a b

theorem es_fromCols {m n₁ n₂ : Type} {A : P → Matrix m n₁ ℂ} {B' : P → Matrix m n₂ ℂ} (hA : ES A s) (hB : ES B' s) :
    ES (fun x => Matrix.fromCols (A x) (B' x)) s := fun a b => by
  rcases b with b | b
  · simpa using hA a b
  · simpa using hB a b

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem es_contDiffOn {m n : Type} [Fintype m] [Fintype n] {f : P → Matrix m n ℂ} (hf : ES f s) :
    ContDiffOn ℝ ∞ f s :=
  contDiffOn_pi.mpr fun a => contDiffOn_pi.mpr fun b => hf a b

end es

section x0

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem det_zfull {j : ℕ} (Z : Matrix (Fin j) (Fin j) ℂ) (τ : ℂ) : (zfull Z τ).det = Z.det * τ := by
  simp [zfull, U.blk2, Matrix.det_fromBlocks_zero₂₁]

theorem es_zfull (j : ℕ) (s : Set (ℂ × (Fin j → Fin j → ℂ))) :
    ES (fun q : ℂ × (Fin j → Fin j → ℂ) => zfull (Matrix.of q.2) q.1) s := by
  have h1 : ES (fun q : ℂ × (Fin j → Fin j → ℂ) => Matrix.of q.2) s := fun a b => by
    simp only [Matrix.of_apply]
    fun_prop
  have h4 : ES (fun q : ℂ × (Fin j → Fin j → ℂ) => (Matrix.of fun _ _ : Fin 1 => q.1)) s := fun a b => by
    simp only [Matrix.of_apply]
    exact contDiff_fst.contDiffOn
  simp only [zfull, U.blk2]
  exact es_reindex _ _ (es_fromBlocks h1 (es_const _ _) (es_const _ _) h4)

private theorem mMap_mem_GV {k j ρ : ℕ} (Z : Matrix (Fin j) (Fin j) ℂ) (hZ : Z.det ≠ 0) {γ : B.Mat k ρ}
    (hγ : γ ∈ B.GV k ρ) : U.mMap k j ρ Z γ ∈ B.GV k (j + ρ) := by
  have hu : IsUnit Z.det := isUnit_iff_ne_zero.mpr hZ
  have hu' : IsUnit Zᴴ.det := by
    rw [Matrix.det_conjTranspose]
    exact isUnit_iff_ne_zero.mpr (star_ne_zero.mpr hZ)
  have hγ' : γᴴ * Hpk k ρ * γ = Hpk k ρ := hγ
  have hW : ∀ M : Matrix (Fin j) (Fin j) ℂ, G.wMat j * (G.wMat j * M) = M := fun M => by
    rw [← Matrix.mul_assoc, _root_.Formalism.FourierDecayAlt.P.Ux4.wMat_mul_self, Matrix.one_mul]
  show (U.mMap k j ρ Z γ)ᴴ * Hpk k (j + ρ) * U.mMap k j ρ Z γ = Hpk k (j + ρ)
  rw [Ux2.hpkBlocks k j ρ]
  simp only [U.mMap, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_conjTranspose, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul]
  refine Ux2.block3_congr ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ <;>
    simp [Matrix.conjTranspose_mul, _root_.Formalism.FourierDecayAlt.P.Ux4.wMat_conjTranspose, Matrix.mul_assoc, Matrix.conjTranspose_nonsing_inv, hγ', hW,
      Matrix.mul_nonsing_inv_cancel_left _ _ hu', Matrix.nonsing_inv_mul _ hu]

theorem base_point_facts_holds : BasePointSmoothAndMem := by
  intro k r j hj γ hγ
  refine ⟨?_, ?_⟩
  · have hZ := es_zfull j {q : ℂ × (Fin j → Fin j → ℂ) | q.1 ≠ 0 ∧ (Matrix.of q.2).det ≠ 0}
    have hdet : ∀ q ∈ {q : ℂ × (Fin j → Fin j → ℂ) | q.1 ≠ 0 ∧ (Matrix.of q.2).det ≠ 0},
        (zfull (Matrix.of q.2) q.1)ᴴ.det ≠ 0 := by
      rintro q ⟨h1, h2⟩
      rw [Matrix.det_conjTranspose, det_zfull]
      exact star_ne_zero.mpr (mul_ne_zero h2 h1)
    have hI := es_inv (es_conjTranspose hZ) hdet
    have hM : ES (fun q : ℂ × (Fin j → Fin j → ℂ) => U.mMap k (j + 1) (r - (j + 1)) (zfull (Matrix.of q.2) q.1) γ)
        {q : ℂ × (Fin j → Fin j → ℂ) | q.1 ≠ 0 ∧ (Matrix.of q.2).det ≠ 0} := by
      simp only [U.mMap, U.blk3]
      exact es_reindex _ _ (es_fromBlocks (es_const _ _) (es_fromRows (es_mul hI (es_const _ _)) (es_const _ _))
        (es_fromCols (es_mul (es_const _ _) hZ) (es_const _ _)) (es_const _ _))
    have hX : ES (fun q : ℂ × (Fin j → Fin j → ℂ) => x0 k r j hj (Matrix.of q.2) q.1 γ)
        {q : ℂ × (Fin j → Fin j → ℂ) | q.1 ≠ 0 ∧ (Matrix.of q.2).det ≠ 0} := by
      simp only [x0, D.castM]
      exact es_reindex _ _ hM
    exact es_contDiffOn hX
  · intro q h1 h2
    apply PBF.mem_level_zero_of_mem_group
    simp only [x0]
    apply _root_.Formalism.FourierDecayAlt.P.PBE.castM_GV
    apply mMap_mem_GV _ _ hγ
    rw [det_zfull]
    exact mul_ne_zero h2 h1

end x0

theorem word_induction_of_parts_holds : WordIndOfParts := wordIndOfParts_of base_point_facts_holds

end Formalism.FourierDecayAlt.P.LevelPointCoordinates.WordIndPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.WordInductionOfPartsHolds =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.WordInd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.WordInd", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelZeroKernel\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WordInduction.WordInductionOfPartsHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.WordInd =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadJacquetOfLetterAndHead =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadJacquetOfLetterAndHead", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelZeroKernel\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActOneVariableSmul\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadJOf\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocOfSmoothOnH\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ZOnly\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.WordInd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.FourierDecayAlt.P

theorem head_jacquet_of_letter_and_head (hHL : LevelPointCoordinates.HeadLetter) (hB : LevelPointCoordinates.HeadBridge) : LevelPointCoordinates.HeadJ :=
  LevelPointCoordinates.headJ_of (_root_.Formalism.FourierDecayAlt.P.LevelPointCoordinates.WordIndPf.word_induction_of_parts_holds hHL z_only rules_closed) hB

theorem radial_head_of_letter_and_head (hHL : LevelPointCoordinates.HeadLetter) (hB : LevelPointCoordinates.HeadBridge) : KB.RadHead :=
  pb_radHead_of_headJ (head_jacquet_of_letter_and_head hHL hB)

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadJacquetOfLetterAndHead =====

module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenDomP
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothnessOnGoodSet
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PbWords
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AutomorphicInSphericalLevel
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightCosetActionMeasurePreserving
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixTranspose
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateSizesOfHypotheses
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerBlockActionInvariant
import Formalism.HermitianCurvature.HermitianCurvatureProofs.EmbeddedGroupMeasurePreserving
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LUFactorOrbitBounds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne
import Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictUpperNeg
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerMatrixLeviBlockThree, Formalism.HermitianCurvature.HermitianCurvatureProofs.GNConjTranspose, Formalism.HermitianCurvature.HermitianCurvatureProofs.ProperDomP

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerMatrixLeviBlockThree =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerMatrixLeviBlockThree", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenDomP\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothnessOnGoodSet\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixTranspose\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Filter Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBQ

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants

theorem leviElement_mem_GV {k p ρ : ℕ} (q : Matrix (Fin p) (Fin p) ℂ) (hq : IsUnit q.det) : U.muP k p ρ q ∈ B.GV k (p + ρ) :=
  (_root_.Formalism.FourierDecayAlt.P.Ux2.sliceMem k p ρ).2.1 q (isUnit_iff_ne_zero.mp hq)

def MuPToOm : Prop := ∀ (k p ρ : ℕ) (z z' : Fin (2 * (p + ρ) + k + 1) → ℂ), inWb k (p + ρ) z → inWb k (p + ρ) z' →
  ∀ y ∈ domP k (p + ρ) p z z', y ∈ B.GV k (p + ρ) →
  ∃ q : Matrix (Fin p) (Fin p) ℂ, IsUnit q.det ∧ ∃ V ∈ nhds y, IsCompact V ∧
    ∀ g ∈ V, g ∈ B.GV k (p + ρ) → U.muP k p ρ q * g ∈ JF.Om k (p + ρ) z z'

section zhat

variable {k p ρ : ℕ}

theorem corner_matrix_levi_block_three (z z' : Fin (2 * (p + ρ) + k + 1) → ℂ) (hz : inWb k (p + ρ) z) (hz' : inWb k (p + ρ) z')
    (q : Matrix (Fin p) (Fin p) ℂ)
    (product_first_partition : Matrix (Fin p) (Fin p) ℂ) (sizeConstantAtParamsWeight : Matrix (Fin p) (Fin (2 * ρ + k + 1)) ℂ) (flipOneThree : Matrix (Fin p) (Fin p) ℂ)
    (placeRankTwoOne : Matrix (Fin (2 * ρ + k + 1)) (Fin p) ℂ) (TaylorLogMetric : B.Mat k ρ) (flipTwoThree : Matrix (Fin (2 * ρ + k + 1)) (Fin p) ℂ)
    (BlochKatoReduction : Matrix (Fin p) (Fin p) ℂ) (SumRepresentations : Matrix (Fin p) (Fin (2 * ρ + k + 1)) ℂ) (ArithmeticCylinders : Matrix (Fin p) (Fin p) ℂ) :
    Zhat k (p + ρ) z z' (U.muP k p ρ q * U.blk3 product_first_partition sizeConstantAtParamsWeight flipOneThree placeRankTwoOne TaylorLogMetric flipTwoThree BlochKatoReduction SumRepresentations ArithmeticCylinders) =
      Matrix.reindex (Ux3.eC p ρ) (Ux3.eC p ρ) (Matrix.fromBlocks ((qᴴ)⁻¹ * (G.wMat p * BlochKatoReduction))
        ((qᴴ)⁻¹ * (G.wMat p * SumRepresentations * Formalism.QuantumDeterminants.Fm k ρ (U.lowV k p ρ z')))
        ((Formalism.QuantumDeterminants.Fm k ρ (U.lowV k p ρ z))ᴴ * (Hpk k ρ * placeRankTwoOne))
        ((Formalism.QuantumDeterminants.Fm k ρ (U.lowV k p ρ z))ᴴ * (Hpk k ρ * TaylorLogMetric) * Formalism.QuantumDeterminants.Fm k ρ (U.lowV k p ρ z'))) := by
  unfold U.muP
  rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul, Ux3.z_hat_of_block3 z z' hz hz']
  have hw : ∀ M : Matrix (Fin p) (Fin p) ℂ, G.wMat p * (G.wMat p * M * G.wMat p) = M * G.wMat p := by
    intro M
    rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, Ux3.wMat_mul_self, Matrix.one_mul]
  congr 2 <;> simp only [Matrix.zero_mul, Matrix.one_mul, zero_add, add_zero]
  · rw [← Matrix.mul_assoc, hw, Matrix.mul_assoc]
  · rw [← Matrix.mul_assoc (G.wMat p), hw]; simp only [Matrix.mul_assoc]

theorem minor_gen {m : ℕ} (A : Matrix (Fin p) (Fin p) ℂ) (Bm : Matrix (Fin p) (Fin (ρ + 1)) ℂ)
    (Cm : Matrix (Fin (ρ + 1)) (Fin p) ℂ) (Dm : Matrix (Fin (ρ + 1)) (Fin (ρ + 1)) ℂ)
    (hl : m ≤ ρ + 1) (h : p + m ≤ p + ρ + 1) :
    (Matrix.reindex (Ux3.eC p ρ) (Ux3.eC p ρ) (Matrix.fromBlocks A Bm Cm Dm)).submatrix (Fin.castLE h) (Fin.castLE h) =
      Matrix.reindex finSumFinEquiv finSumFinEquiv (Matrix.fromBlocks A (Bm.submatrix id (Fin.castLE hl))
        (Cm.submatrix (Fin.castLE hl) id) (Dm.submatrix (Fin.castLE hl) (Fin.castLE hl))) := by
  ext a b
  refine Fin.addCases (fun a => ?_) (fun a => ?_) a <;> refine Fin.addCases (fun b => ?_) (fun b => ?_) b <;>
    simp [Matrix.reindex_apply, Ux3.eC_symm_castAdd h, Ux3.eC_symm_natAdd h hl]

theorem minor_low {m : ℕ} (A : Matrix (Fin p) (Fin p) ℂ) (Bm : Matrix (Fin p) (Fin (ρ + 1)) ℂ)
    (Cm : Matrix (Fin (ρ + 1)) (Fin p) ℂ) (Dm : Matrix (Fin (ρ + 1)) (Fin (ρ + 1)) ℂ)
    (hmp : m ≤ p) (h : m ≤ p + ρ + 1) :
    (Matrix.reindex (Ux3.eC p ρ) (Ux3.eC p ρ) (Matrix.fromBlocks A Bm Cm Dm)).submatrix (Fin.castLE h) (Fin.castLE h) =
      A.submatrix (Fin.castLE hmp) (Fin.castLE hmp) := by
  have e : ∀ a : Fin m, (Ux3.eC p ρ).symm (Fin.castLE h a) = Sum.inl (Fin.castLE hmp a) := by
    intro a; rw [Equiv.symm_apply_eq]; ext; simp [Ux3.column_index_first_val]
  ext a b
  simp [Matrix.reindex_apply, e]

theorem zh_eq_blk (y : B.Mat k (p + ρ)) :
    G.wMat p * y.submatrix (fun a => U.eB k p ρ (Sum.inr a)) (fun b => U.eB k p ρ (Sum.inl (Sum.inl b))) =
      U.Zh k p ρ y := by
  ext a b
  rw [Ux3.wMat_mul_apply]
  simp only [Matrix.submatrix_apply, U.Zh]
  congr 1
  all_goals (ext; first | (rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_last_val_eq]; simp [Fin.val_rev]; omega))

theorem minor_leviElement_mul_high (z z' : Fin (2 * (p + ρ) + k + 1) → ℂ) (hz : inWb k (p + ρ) z) (hz' : inWb k (p + ρ) z')
    (q : Matrix (Fin p) (Fin p) ℂ) (g : B.Mat k (p + ρ)) (m : ℕ) (hm : m ≤ ρ + 1) :
    Dmin k (p + ρ) z z' (U.muP k p ρ q * g) ⟨p + m, by omega⟩ =
      ((qᴴ)⁻¹).det * Dmin k (p + ρ) z z' g ⟨p + m, by omega⟩ := by
  have hg := Ux3.block3_eta g
  unfold Dmin
  rw [hg, corner_matrix_levi_block_three z z' hz hz', _root_.Formalism.FourierDecayAlt.P.Ux3.z_hat_of_block3 z z' hz hz']
  show ((Matrix.reindex _ _ _).submatrix (Fin.castLE (show p + m ≤ p + ρ + 1 by omega))
    (Fin.castLE (show p + m ≤ p + ρ + 1 by omega))).det = _ * ((Matrix.reindex _ _ _).submatrix
      (Fin.castLE (show p + m ≤ p + ρ + 1 by omega)) (Fin.castLE (show p + m ≤ p + ρ + 1 by omega))).det
  rw [minor_gen _ _ _ _ hm, minor_gen _ _ _ _ hm, Matrix.det_reindex_self, Matrix.det_reindex_self]
  set Q := (qᴴ)⁻¹
  have e : ∀ (A : Matrix (Fin p) (Fin p) ℂ) (Bm : Matrix (Fin p) (Fin m) ℂ) (Cm : Matrix (Fin m) (Fin p) ℂ)
      (Dm : Matrix (Fin m) (Fin m) ℂ),
      Matrix.fromBlocks (Q * A) (Q * Bm) Cm Dm = Matrix.fromBlocks Q 0 0 1 * Matrix.fromBlocks A Bm Cm Dm := by
    intro A Bm Cm Dm
    rw [Matrix.fromBlocks_multiply]
    simp
  have hsub : ∀ (Bm : Matrix (Fin p) (Fin (ρ + 1)) ℂ),
      (Q * Bm).submatrix id (Fin.castLE hm) = Q * Bm.submatrix id (Fin.castLE hm) := by
    intro Bm; ext a b; simp [Matrix.mul_apply]
  rw [hsub, e, Matrix.det_mul, Matrix.det_fromBlocks_zero₂₁, Matrix.det_one, mul_one]

theorem minor_leviElement_mul_low (z z' : Fin (2 * (p + ρ) + k + 1) → ℂ) (hz : inWb k (p + ρ) z) (hz' : inWb k (p + ρ) z')
    (y : B.Mat k (p + ρ)) (hA : IsUnit (U.Zh k p ρ y).det) (m : ℕ) (hmp : m ≤ p) :
    Dmin k (p + ρ) z z' (U.muP k p ρ (U.Zh k p ρ y)ᴴ * y) ⟨m, by omega⟩ = 1 := by
  have hg := Ux3.block3_eta y
  unfold Dmin
  conv_lhs => rw [hg]
  rw [corner_matrix_levi_block_three z z' hz hz', ← hg]
  show ((Matrix.reindex _ _ _).submatrix (Fin.castLE (show m ≤ p + ρ + 1 by omega))
    (Fin.castLE (show m ≤ p + ρ + 1 by omega))).det = 1
  rw [minor_low _ _ _ _ hmp, zh_eq_blk, Matrix.conjTranspose_conjTranspose, Matrix.nonsing_inv_mul _ hA]
  have : (1 : Matrix (Fin p) (Fin p) ℂ).submatrix (Fin.castLE hmp) (Fin.castLE hmp) = 1 := by
    ext a b; simp [Matrix.one_apply, Fin.ext_iff]
  rw [this, Matrix.det_one]

end zhat

section main

variable {k p ρ : ℕ}

theorem gf_muP (z z' : Fin (2 * (p + ρ) + k + 1) → ℂ) (hz : inWb k (p + ρ) z) (hz' : inWb k (p + ρ) z')
    (q : Matrix (Fin p) (Fin p) ℂ) (g : B.Mat k (p + ρ)) :
    Gf k (p + ρ) z z' (U.muP k p ρ q * g) = Complex.normSq ((qᴴ)⁻¹).det * Gf k (p + ρ) z z' g := by
  have e1 : Fin.last (p + ρ + 1) = (⟨p + (ρ + 1), by omega⟩ : Fin (p + ρ + 2)) := Fin.ext rfl
  have e0 : (⟨p + ρ, by omega⟩ : Fin (p + ρ + 2)) = ⟨p + ρ, by omega⟩ := rfl
  unfold Gf
  rw [e1, minor_leviElement_mul_high z z' hz hz' q g (ρ + 1) le_rfl, minor_leviElement_mul_high z z' hz hz' q g ρ (by omega),
    Complex.normSq_mul, Complex.normSq_mul]
  ring

theorem det_Q_ne {A : Matrix (Fin p) (Fin p) ℂ} (hAd : A.det ≠ 0) : (((Aᴴ)ᴴ)⁻¹).det ≠ 0 := by
  rw [Matrix.conjTranspose_conjTranspose, Matrix.det_nonsing_inv, Ring.inverse_eq_inv']
  exact inv_ne_zero hAd

theorem omPlus_muP (z z' : Fin (2 * (p + ρ) + k + 1) → ℂ) (hz : inWb k (p + ρ) z) (hz' : inWb k (p + ρ) z')
    (y : B.Mat k (p + ρ)) (hy : y ∈ domP k (p + ρ) p z z') (hAd : (U.Zh k p ρ y).det ≠ 0) :
    U.muP k p ρ (U.Zh k p ρ y)ᴴ * y ∈ Q.OmPlus k (p + ρ) z z' := by
  have hQ := det_Q_ne hAd
  refine ⟨fun l hl => ?_, ?_⟩
  · by_cases hlp : l.val ≤ p
    · have e : l = ⟨l.val, by omega⟩ := Fin.ext rfl
      rw [e, minor_leviElement_mul_low z z' hz hz' y (isUnit_iff_ne_zero.mpr hAd) l.val hlp]
      exact one_ne_zero
    · have e : l = ⟨p + (l.val - p), by omega⟩ := Fin.ext (by simp only; omega)
      have hyl := hy.1 l (by omega) hl
      rw [e] at hyl ⊢
      rw [minor_leviElement_mul_high z z' hz hz' _ y (l.val - p) (by omega)]
      exact mul_ne_zero hQ hyl
  · rw [gf_muP z z' hz hz']
    exact mul_pos (Complex.normSq_pos.mpr hQ) hy.2

end main

theorem mem_of_sub_pre {k n : ℕ} {S : Set (B.Mat k n)} {f : B.Mat k n → B.Mat k n} {V : Set (B.Mat k n)}
    (hVO : V ⊆ {g | f g ∈ S}) {g : B.Mat k n} (hg : g ∈ V) : f g ∈ S := hVO hg

theorem mem_Om_of {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {x : B.Mat k r} (h1 : x ∈ B.GV k r)
    (h2 : x ∈ Q.OmPlus k r z z') : x ∈ JF.Om k r z z' := ⟨h1, h2⟩

theorem levi_move_into_big_cell : MuPToOm := by
  intro k p ρ z z' hz hz' y hy hyG
  have hDp : Dmin k (p + ρ) z z' y ⟨p, by omega⟩ ≠ 0 := hy.1 ⟨p, by omega⟩ (le_refl p) (by simp)
  have hAd : (U.Zh k p ρ y).det ≠ 0 := by
    have h := Formalism.FourierDecayAlt.P.Ux3.zhDmin k p ρ z z' y
    unfold U.DjU at h
    rw [← h]; exact hDp
  have hqu : IsUnit ((U.Zh k p ρ y)ᴴ).det := by
    rw [Matrix.det_conjTranspose]; exact isUnit_iff_ne_zero.mpr (star_ne_zero.mpr hAd)
  have hy1 := omPlus_muP z z' hz hz' y hy hAd
  have hO : IsOpen {g : B.Mat k (p + ρ) | U.muP k p ρ (U.Zh k p ρ y)ᴴ * g ∈ Q.OmPlus k (p + ρ) z z'} :=
    (Formalism.FourierDecayAlt.P.SmoothnessOnGoodSet.isOpen_OmPlus z z').preimage (continuous_const.matrix_mul continuous_id)
  have hy1' : y ∈ {g : B.Mat k (p + ρ) | U.muP k p ρ (U.Zh k p ρ y)ᴴ * g ∈ Q.OmPlus k (p + ρ) z z'} := hy1
  have hmem := hO.mem_nhds hy1'
  have hLC : LocallyCompactSpace (B.Mat k (p + ρ)) :=
    inferInstanceAs (LocallyCompactSpace (Fin (2 * (p + ρ) + k + 1) → Fin (2 * (p + ρ) + k + 1) → ℂ))
  obtain ⟨V, hV, hVO, hVc⟩ := local_compact_nhds hmem
  refine ⟨(U.Zh k p ρ y)ᴴ, hqu, ?_⟩
  refine ⟨V, hV, hVc, ?_⟩
  intro g hg hgG
  have h1 : U.muP k p ρ (U.Zh k p ρ y)ᴴ * g ∈ B.GV k (p + ρ) := by
    have hm := leviElement_mem_GV (k := k) (ρ := ρ) (U.Zh k p ρ y)ᴴ hqu
    exact Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul hm hgG
  have h2 : U.muP k p ρ (U.Zh k p ρ y)ᴴ * g ∈ Q.OmPlus k (p + ρ) z z' :=
    mem_of_sub_pre (f := fun g => U.muP k p ρ (U.Zh k p ρ y)ᴴ * g) hVO hg
  exact mem_Om_of h1 h2

end Formalism.FourierDecayAlt.P.PBQ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerMatrixLeviBlockThree =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GNConjTranspose =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.GNConjTranspose", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenDomP\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PbWords\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AutomorphicInSphericalLevel\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateSizesOfHypotheses\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerBlockActionInvariant\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.EmbeddedGroupMeasurePreserving\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LUFactorOrbitBounds\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightCosetActionMeasurePreserving\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictUpperNeg\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Filter Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBQ

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

section conj

variable {k p ρ : ℕ}

theorem muP_conj_unipotent (q : Matrix (Fin p) (Fin p) ℂ) (hq : IsUnit q.det) (a : Matrix (Fin p) (Fin (2 * ρ + k + 1)) ℂ)
    (b : Matrix (Fin p) (Fin p) ℂ) (c : Matrix (Fin (2 * ρ + k + 1)) (Fin p) ℂ) :
    U.muP k p ρ q * U.blk3 1 a b 0 1 c 0 0 1 * U.muP k p ρ q⁻¹ =
      U.blk3 1 (q * a) (q * b * (G.wMat p * (q⁻¹)ᴴ⁻¹ * G.wMat p)) 0 1 (c * (G.wMat p * (q⁻¹)ᴴ⁻¹ * G.wMat p)) 0 0 1 := by
  unfold U.muP
  rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul]
  have hq' : IsUnit qᴴ.det := by rw [Matrix.det_conjTranspose]; exact hq.star
  have e1 : (G.wMat p * qᴴ⁻¹ * G.wMat p) * (G.wMat p * (q⁻¹)ᴴ⁻¹ * G.wMat p) = 1 := by
    rw [Matrix.conjTranspose_nonsing_inv, Matrix.nonsing_inv_nonsing_inv _ hq']
    simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc (G.wMat p) (G.wMat p), Ux3.wMat_mul_self, Matrix.one_mul,
      ← Matrix.mul_assoc qᴴ⁻¹, Matrix.nonsing_inv_mul _ hq', Matrix.one_mul, Ux3.wMat_mul_self]
  congr 1 <;> simp [Matrix.mul_nonsing_inv _ hq, Matrix.mul_assoc]
  simp only [Matrix.mul_assoc] at e1 ⊢
  exact e1

theorem embG_uni_conj (y : B.Mat k ρ) (hy : IsUnit y.det) (a : Matrix (Fin p) (Fin (2 * ρ + k + 1)) ℂ)
    (b : Matrix (Fin p) (Fin p) ℂ) (c : Matrix (Fin (2 * ρ + k + 1)) (Fin p) ℂ) :
    U.embG k p ρ y * U.blk3 1 a b 0 1 c 0 0 1 * U.embG k p ρ y⁻¹ =
      U.blk3 1 (a * y⁻¹) b 0 1 (y * c) 0 0 1 := by
  unfold U.embG
  rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul]
  congr 1 <;> simp [Matrix.mul_nonsing_inv _ hy]

theorem rn_uni (x : U.RC k p ρ) : ∃ a b c, U.Rn k p ρ x = U.blk3 1 a b 0 1 c 0 0 1 :=
  ⟨_, _, _, Ux3.rn_eq x⟩

end conj

section gN

variable {k r : ℕ}

theorem gv_eq_hinv {u : B.Mat k r} (hu : u ∈ B.GV k r) : u = Hpk k r * (u⁻¹)ᴴ * Hpk k r := by
  have h1 := Formalism.FourierDecayAlt.P.B6.inv_eq_hermitian_form_conjTranspose (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_inv hu)
  rw [Matrix.nonsing_inv_nonsing_inv _ (Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh hu)] at h1
  exact h1

theorem gN_le_inv {u : B.Mat k r} (hu : u ∈ B.GV k r) : B.gN u ≤ B.gN (Hpk k r) ^ 2 * B.gN u⁻¹ := by
  conv_lhs => rw [gv_eq_hinv hu]
  calc B.gN (Hpk k r * (u⁻¹)ᴴ * Hpk k r) ≤ B.gN (Hpk k r * (u⁻¹)ᴴ) * B.gN (Hpk k r) := Formalism.FourierDecayAlt.P.B6.gN_mul_le _ _
    _ ≤ B.gN (Hpk k r) * B.gN ((u⁻¹)ᴴ) * B.gN (Hpk k r) :=
        mul_le_mul_of_nonneg_right (Formalism.FourierDecayAlt.P.B6.gN_mul_le _ _) (Formalism.FourierDecayAlt.P.B6.gN_nonneg _)
    _ = _ := by rw [_root_.PI.PolynomialProperness.GN.gN_conjTranspose]; ring

end gN

section mid

variable {k p ρ : ℕ}

theorem embG_uni_mid (ν : B.Mat k ρ) (a : Matrix (Fin p) (Fin (2 * ρ + k + 1)) ℂ) (b : Matrix (Fin p) (Fin p) ℂ)
    (c : Matrix (Fin (2 * ρ + k + 1)) (Fin p) ℂ) (i j : Fin (2 * ρ + k + 1)) :
    (U.embG k p ρ ν * U.blk3 1 a b 0 1 c 0 0 1) (U.eB k p ρ (Sum.inl (Sum.inr i))) (U.eB k p ρ (Sum.inl (Sum.inr j))) =
      ν i j := by
  unfold U.embG
  rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]
  simp

end mid

section proper

variable {k p ρ : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem cont_embG : Continuous (fun y : B.Mat k ρ => U.embG k p ρ y) := by
  have e : (fun y : B.Mat k ρ => U.embG k p ρ y) = fun y => ιLev k p ρ y := by
    funext y; exact (Formalism.FourierDecayAlt.P.Dx2.Tower.lev_eq_embG p ρ y).symm
  rw [e]
  refine continuous_pi fun i => continuous_pi fun j => ?_
  unfold ιLev
  split_ifs <;> first | exact (continuous_apply _).comp (continuous_apply _) | exact continuous_const

theorem closedGV (k r : ℕ) : IsClosed (B.GV k r) := (Formalism.FourierDecayAlt.P.unitary_group_closed k r).closed

theorem properA (Bj : B.RealPlaceData k ρ Wp Wq) (B0 : B.RealPlaceData k (p + ρ) Wp Wq)
    (hmuP : ∀ q : Matrix (Fin p) (Fin p) ℂ, IsUnit q.det → U.muP k p ρ q ∈ B.GV k (p + ρ))
    (hM : ∀ y ∈ domP k (p + ρ) p B0.z B0.z', y ∈ B.GV k (p + ρ) →
      ∃ q : Matrix (Fin p) (Fin p) ℂ, IsUnit q.det ∧ ∃ V ∈ nhds y, IsCompact V ∧
        ∀ g ∈ V, g ∈ B.GV k (p + ρ) → U.muP k p ρ q * g ∈ JF.Om k (p + ρ) B0.z B0.z')
    (Cs : Set (B.Mat k (p + ρ))) (hCs : IsCompact Cs) :
    PartialBesselProperness.Proper Bj B0 rfl Cs (domP k (p + ρ) p B0.z B0.z') := by
  intro y hy
  by_cases hyG : y ∈ B.GV k (p + ρ)
  swap
  · exact ⟨(B.GV k (p + ρ))ᶜ, (closedGV k (p + ρ)).isOpen_compl.mem_nhds hyG, ∅, isCompact_empty,
      fun g hg hgG => absurd hgG hg⟩
  obtain ⟨q, hq, V, hV, hVc, hVO⟩ := hM y hy hyG
  have hqi : IsUnit q⁻¹.det := by rw [Matrix.det_nonsing_inv]; exact hq.ringInverse

  set KO := (fun g => U.muP k p ρ q * g) '' (V ∩ B.GV k (p + ρ)) with hKOdef
  have hKOc : IsCompact KO :=
    (hVc.inter_right (closedGV k (p + ρ))).image (continuous_const.mul continuous_id)
  have hKO : KO ⊆ JF.Om k (p + ρ) B0.z B0.z' := by
    rintro _ ⟨g, ⟨hgV, hgG⟩, rfl⟩; exact hVO g hgV hgG
  obtain ⟨C, hC0, hC⟩ := Formalism.FourierDecayAlt.P.WeakDominationMajorants.Orb.orbit B0.z B0.z' KO hKOc hKO

  have hW : IsCompact (UWset k ρ Bj.z) := Formalism.FourierDecayAlt.P.weyl_subgroup_compact k ρ Bj.z Bj.z_mem Bj.T_pos
  have hW' : IsCompact (UWset k (p + ρ) B0.z') :=
    Formalism.FourierDecayAlt.P.weyl_subgroup_compact k (p + ρ) B0.z' B0.z'_mem B0.T'_pos
  set Kc := (fun t : B.Mat k ρ × B.Mat k (p + ρ) × B.Mat k (p + ρ) =>
    U.embG k p ρ t.1 * U.muP k p ρ q * t.2.1 * (Hpk k (p + ρ) * t.2.2ᴴ * Hpk k (p + ρ))) ''
      (UWset k ρ Bj.z ×ˢ Cs ×ˢ UWset k (p + ρ) B0.z') with hKcdef
  have hKcc : IsCompact Kc := by
    refine (hW.prod (hCs.prod hW')).image ?_
    have h1 : Continuous (fun t : B.Mat k ρ × B.Mat k (p + ρ) × B.Mat k (p + ρ) => U.embG k p ρ t.1) :=
      (cont_embG (k := k) (p := p) (ρ := ρ)).comp continuous_fst
    exact ((h1.mul continuous_const).mul continuous_snd.fst).mul
      ((continuous_const.mul continuous_snd.snd.matrix_conjTranspose).mul continuous_const)
  obtain ⟨M, hMb⟩ := hKcc.exists_bound_of_continuousOn Formalism.FourierDecayAlt.P.B6.gN_continuous.continuousOn
  set M0 : ℝ := max M 0 with hM0
  have hM00 : 0 ≤ M0 := le_max_right _ _
  set B1 : ℝ := C * M0 ^ (2 * (p + ρ) + 1) with hB1
  have hB10 : 0 ≤ B1 := mul_nonneg hC0 (pow_nonneg hM00 _)

  have hνc : IsCompact (Metric.closedBall (0 : Mt k ρ) B1) := isCompact_closedBall _ _
  have hfν : Continuous (fun ν : Mt k ρ => B.gN (U.embG k p ρ (Hpk k ρ * (Matrix.of ν : B.Mat k ρ)ᴴ * Hpk k ρ))) := by
    have hof : Continuous (fun ν : Mt k ρ => (Matrix.of ν : B.Mat k ρ)) := continuous_id
    exact Formalism.FourierDecayAlt.P.B6.gN_continuous.comp (cont_embG.comp
      ((continuous_const.mul hof.matrix_conjTranspose).mul continuous_const))
  obtain ⟨cν, hcν⟩ := hνc.exists_bound_of_continuousOn hfν.continuousOn

  have hfW : Continuous (fun t : B.Mat k ρ => B.gN (U.embG k p ρ t) + B.gN (U.embG k p ρ (Hpk k ρ * tᴴ * Hpk k ρ)) +
      B.gN t) := by
    refine ((Formalism.FourierDecayAlt.P.B6.gN_continuous.comp cont_embG).add (Formalism.FourierDecayAlt.P.B6.gN_continuous.comp (cont_embG.comp
      ((continuous_const.mul continuous_id.matrix_conjTranspose).mul continuous_const)))).add
      Formalism.FourierDecayAlt.P.B6.gN_continuous
  obtain ⟨cW, hcW⟩ := hW.exists_bound_of_continuousOn hfW.continuousOn
  set gH : ℝ := B.gN (Hpk k (p + ρ)) with hgH
  set B2 : ℝ := gH ^ 2 * (max cν 0 * B1) with hB2
  set B3 : ℝ := B.gN (U.muP k p ρ q⁻¹) * (max cW 0 * B2 * max cW 0) * B.gN (U.muP k p ρ q) with hB3
  set Rb : ℝ := max (max (max cW 0) B1) B3 with hRb
  refine ⟨V, hV, Metric.closedBall 0 Rb, isCompact_closedBall _ _, ?_⟩
  intro g hgV hgG x hx hxK ξ hξ hcC
  apply hxK
  rw [Formalism.FourierDecayAlt.P.Dx2.MN.castM_rfl] at hcC

  set h : B.Mat k ρ := Matrix.of x.1.1 with hhdef
  set ν : B.Mat k ρ := Matrix.of x.1.2 with hνdef
  set n' : B.Mat k (p + ρ) := Matrix.of ξ.2 with hn'def
  set h' : B.Mat k (p + ρ) := Matrix.of ξ.1 with hh'def
  have hhW : h ∈ UWset k ρ Bj.z := hx.1
  have hνN : ν ∈ Nset k ρ := hx.2
  have hhG : h ∈ B.GV k ρ := hx.1.1
  have hνG : ν ∈ B.GV k ρ := hx.2.1
  have hhu : IsUnit h.det := Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh hhG
  have hνu : IsUnit ν.det := Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh hνG
  have hsP : sP Bj x = U.Rn k p ρ (-x.2) * U.embG k p ρ (h⁻¹ * ν⁻¹) := by unfold sP; rw [if_pos hx]
  have hembG : ∀ y : B.Mat k ρ, y ∈ B.GV k ρ → U.embG k p ρ y ∈ B.GV k (p + ρ) := fun y hy => by
    rw [← Formalism.FourierDecayAlt.P.Dx2.Tower.lev_eq_embG]; exact Formalism.FourierDecayAlt.P.Dx2.Tower.lev_GV p ρ y hy

  obtain ⟨a0, b0, c0, hRn⟩ := rn_uni (k := k) (p := p) (ρ := ρ) (-x.2)
  set R' := U.muP k p ρ q * U.Rn k p ρ (-x.2) * U.muP k p ρ q⁻¹ with hR'def
  have hR'G : R' ∈ B.GV k (p + ρ) :=
    Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul (hmuP q hq) (_root_.Formalism.FourierDecayAlt.P.Ux3.rn_nset _).1) (hmuP q⁻¹ hqi)
  set U1 := U.embG k p ρ h * R' * U.embG k p ρ h⁻¹ with hU1def
  have hU1G : U1 ∈ B.GV k (p + ρ) :=
    Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul (hembG h hhG) hR'G) (hembG _ (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_inv hhG))
  have hU1form : U1 = U.blk3 1 (q * a0 * h⁻¹) (q * b0 * (G.wMat p * (q⁻¹)ᴴ⁻¹ * G.wMat p)) 0 1
      (h * (c0 * (G.wMat p * (q⁻¹)ᴴ⁻¹ * G.wMat p))) 0 0 1 := by
    rw [hU1def, hR'def, hRn, muP_conj_unipotent q hq, embG_uni_conj h hhu]
  have hU1N : U1 ∈ Nset k (p + ρ) := by
    have hG' := hU1G
    rw [hU1form] at hG' ⊢
    exact Formalism.FourierDecayAlt.P.Ux3.uni_nset _ _ _ hG'
  set n1inv := U1 * U.embG k p ρ ν⁻¹ with hn1invdef
  have hn1invN : n1inv ∈ Nset k (p + ρ) :=
    Formalism.QuantumDeterminants.WeylGroupFacts.mem_n_mul hU1N (LeftFubiniLemmas.embG_nset (Formalism.QuantumDeterminants.WeylGroupFacts.mem_n_inv hνN))
  set n1 := n1inv⁻¹ with hn1def
  have hn1N : n1 ∈ Nset k (p + ρ) := Formalism.QuantumDeterminants.WeylGroupFacts.mem_n_inv hn1invN
  have hn1inv : n1⁻¹ = n1inv := Matrix.nonsing_inv_nonsing_inv _ (Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh hn1invN.1)

  have hq1 : U.muP k p ρ q⁻¹ * U.muP k p ρ q = 1 := by
    rw [Formalism.FourierDecayAlt.P.Dx2.Split.leviElement_mul, Matrix.nonsing_inv_mul _ hq, Formalism.FourierDecayAlt.P.PBM.muP_one]
  have hcomm : ∀ (y : B.Mat k ρ) (X : B.Mat k (p + ρ)),
      U.embG k p ρ y * (U.muP k p ρ q * X) = U.muP k p ρ q * (U.embG k p ρ y * X) := fun y X => by
    rw [← Matrix.mul_assoc, LeftFubiniLemmas.embedded_group_measure_preserving k p ρ y q, Matrix.mul_assoc]
  have hh'u : h' * h'⁻¹ = 1 := Matrix.mul_nonsing_inv _ (Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh hξ.1.1)
  have hmid : ∀ X : B.Mat k (p + ρ), U.muP k p ρ q⁻¹ * (U.embG k p ρ h⁻¹ * (U.embG k p ρ ν⁻¹ *
      (U.muP k p ρ q * X))) = U.embG k p ρ h⁻¹ * (U.embG k p ρ ν⁻¹ * X) := fun X => by
    rw [hcomm ν⁻¹ X, hcomm h⁻¹, ← Matrix.mul_assoc, hq1, Matrix.one_mul]
  have key : n1inv * (U.muP k p ρ q * g) * n' =
      U.embG k p ρ h * U.muP k p ρ q * (sP Bj x * g * n' * h') * h'⁻¹ := by
    rw [hsP, _root_.Formalism.FourierDecayAlt.P.Dx2.Split.embG_mul, hn1invdef, hU1def, hR'def]
    simp only [Matrix.mul_assoc]
    rw [hmid, hh'u, Matrix.mul_one]
  have hKc : n1inv * (U.muP k p ρ q * g) * n' ∈ Kc := by
    rw [key]
    refine ⟨(h, sP Bj x * g * n' * h', h'), ⟨hhW, hcC, hξ.1⟩, ?_⟩
    simp only []
    rw [Formalism.FourierDecayAlt.P.B6.inv_eq_hermitian_form_conjTranspose hξ.1.1]
  have hg'KO : U.muP k p ρ q * g ∈ KO := ⟨g, ⟨hgV, hgG⟩, rfl⟩
  have hbd1 := (hC _ hg'KO n1 hn1N n' hξ.2).1
  rw [hn1inv] at hbd1
  have hgNle : B.gN (n1inv * (U.muP k p ρ q * g) * n') ≤ M0 := by
    have := hMb _ hKc
    rw [Real.norm_eq_abs] at this
    exact (le_abs_self _).trans (this.trans (le_max_left _ _))
  have hn1b : B.gN n1 ≤ B1 := hbd1.trans (mul_le_mul_of_nonneg_left
    (pow_le_pow_left₀ (Formalism.FourierDecayAlt.P.B6.gN_nonneg _) hgNle _) hC0)

  have hn1form : n1 = U.embG k p ρ ν * U1⁻¹ := by
    rw [hn1def, hn1invdef, Matrix.mul_inv_rev, LeftFubiniLemmas.embG_inv hνu,
      Matrix.nonsing_inv_nonsing_inv _ (Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh (hembG ν hνG))]
  have hνb : ‖x.1.2‖ ≤ B1 := by
    refine (pi_norm_le_iff_of_nonneg hB10).2 fun i => (pi_norm_le_iff_of_nonneg hB10).2 fun j => ?_
    have e := embG_uni_mid (p := p) ν (-(q * a0 * h⁻¹))
      ((q * a0 * h⁻¹) * (h * (c0 * (G.wMat p * (q⁻¹)ᴴ⁻¹ * G.wMat p))) -
        q * b0 * (G.wMat p * (q⁻¹)ᴴ⁻¹ * G.wMat p)) (-(h * (c0 * (G.wMat p * (q⁻¹)ᴴ⁻¹ * G.wMat p)))) i j
    rw [← Formalism.FourierDecayAlt.P.Ux3.uni_inv, ← hU1form, ← hn1form] at e
    show ‖ν i j‖ ≤ B1
    rw [← e]
    exact (Formalism.FourierDecayAlt.P.Ux6.entry_le_gN _ _ _).trans hn1b

  have hU1inv : U1⁻¹ = U.embG k p ρ ν⁻¹ * n1 := by
    rw [hn1form, ← Matrix.mul_assoc, LeftFubiniLemmas.embG_inv hνu, Matrix.nonsing_inv_mul _
      (Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh (hembG ν hνG)), Matrix.one_mul]
  have hνinv : ν⁻¹ = Hpk k ρ * (Matrix.of x.1.2 : B.Mat k ρ)ᴴ * Hpk k ρ := Formalism.FourierDecayAlt.P.B6.inv_eq_hermitian_form_conjTranspose hνG
  have hcνb : B.gN (U.embG k p ρ ν⁻¹) ≤ max cν 0 := by
    rw [hνinv]
    have := hcν x.1.2 (by rw [Metric.mem_closedBall, dist_zero_right]; exact hνb)
    rw [Real.norm_eq_abs] at this
    exact (le_abs_self _).trans (this.trans (le_max_left _ _))
  have hU1ib : B.gN U1⁻¹ ≤ max cν 0 * B1 := by
    rw [hU1inv]
    exact (Formalism.FourierDecayAlt.P.B6.gN_mul_le _ _).trans (mul_le_mul hcνb hn1b (Formalism.FourierDecayAlt.P.B6.gN_nonneg _) (le_max_right _ _))
  have hU1b : B.gN U1 ≤ B2 :=
    (gN_le_inv hU1G).trans (mul_le_mul_of_nonneg_left hU1ib (pow_nonneg (Formalism.FourierDecayAlt.P.B6.gN_nonneg _) _))

  have hWb : ∀ t ∈ UWset k ρ Bj.z, B.gN (U.embG k p ρ t) ≤ max cW 0 ∧
      B.gN (U.embG k p ρ (Hpk k ρ * tᴴ * Hpk k ρ)) ≤ max cW 0 ∧ B.gN t ≤ max cW 0 := by
    intro t ht
    have := hcW t ht
    rw [Real.norm_eq_abs] at this
    have h0 := Formalism.FourierDecayAlt.P.B6.gN_nonneg (U.embG k p ρ t)
    have h1 := Formalism.FourierDecayAlt.P.B6.gN_nonneg (U.embG k p ρ (Hpk k ρ * tᴴ * Hpk k ρ))
    have h2 := Formalism.FourierDecayAlt.P.B6.gN_nonneg t
    have hle := (le_abs_self _).trans this
    refine ⟨?_, ?_, ?_⟩ <;> exact le_max_of_le_left (by linarith)
  have hR'eq : R' = U.embG k p ρ h⁻¹ * U1 * U.embG k p ρ h := by
    rw [hU1def, LeftFubiniLemmas.embG_inv hhu]
    simp only [Matrix.mul_assoc]
    rw [Matrix.nonsing_inv_mul _ (Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh (hembG h hhG)), Matrix.mul_one,
      ← Matrix.mul_assoc, Matrix.nonsing_inv_mul _ (Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh (hembG h hhG)), Matrix.one_mul]
  have hhinv : h⁻¹ = Hpk k ρ * hᴴ * Hpk k ρ := Formalism.FourierDecayAlt.P.B6.inv_eq_hermitian_form_conjTranspose hhG
  have hR'b : B.gN R' ≤ max cW 0 * B2 * max cW 0 := by
    rw [hR'eq]
    refine (Formalism.FourierDecayAlt.P.B6.gN_mul_le _ _).trans ?_
    refine mul_le_mul ((Formalism.FourierDecayAlt.P.B6.gN_mul_le _ _).trans (mul_le_mul ?_ hU1b (Formalism.FourierDecayAlt.P.B6.gN_nonneg _)
      (le_max_right _ _))) (hWb h hhW).1 (Formalism.FourierDecayAlt.P.B6.gN_nonneg _)
      (mul_nonneg (le_max_right _ _) (le_trans (Formalism.FourierDecayAlt.P.B6.gN_nonneg _) hU1b))
    rw [hhinv]; exact (hWb h hhW).2.1
  have hRneq : U.Rn k p ρ (-x.2) = U.muP k p ρ q⁻¹ * R' * U.muP k p ρ q := by
    rw [hR'def]
    simp only [Matrix.mul_assoc]
    rw [hq1, Matrix.mul_one, ← Matrix.mul_assoc, hq1, Matrix.one_mul]
  have hxRb : ‖x.2‖ ≤ B3 := by
    rw [← norm_neg]
    refine (Formalism.FourierDecayAlt.P.Ux6.norm_le_gN_Rn _).trans ?_
    rw [hRneq]
    refine (Formalism.FourierDecayAlt.P.B6.gN_mul_le _ _).trans (mul_le_mul_of_nonneg_right ?_ (Formalism.FourierDecayAlt.P.B6.gN_nonneg _))
    exact (Formalism.FourierDecayAlt.P.B6.gN_mul_le _ _).trans (mul_le_mul_of_nonneg_left hR'b (Formalism.FourierDecayAlt.P.B6.gN_nonneg _))
  have hhb : ‖x.1.1‖ ≤ max cW 0 :=
    (Formalism.FourierDecayAlt.P.SmoothExtensionClosedSet.norm_le_gN x.1.1).trans (hWb h hhW).2.2
  rw [Metric.mem_closedBall, dist_zero_right]
  refine max_le (max_le ?_ ?_) ?_
  · exact hhb.trans ((le_max_left _ _).trans (le_max_left _ _))
  · exact hνb.trans ((le_max_right _ _).trans (le_max_left _ _))
  · exact hxRb.trans (le_max_right _ _)

end proper

end Formalism.FourierDecayAlt.P.PBQ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GNConjTranspose =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ProperDomP =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ProperDomP", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenDomP\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PbWords\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerMatrixLeviBlockThree\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GNConjTranspose\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Filter Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBQ

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants

theorem properE {k p ρ n : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] (Bj : B.RealPlaceData k ρ Wp Wq) (B0 : B.RealPlaceData k n Wp Wq)
    (e : p + ρ = n) (Cs : Set (B.Mat k n)) (hCs : IsCompact Cs) :
    PartialBesselProperness.Proper Bj B0 e Cs (domP k n p B0.z B0.z') := by
  subst e
  exact properA Bj B0 (fun q hq => leviElement_mem_GV q hq)
    (fun y hy hyG => levi_move_into_big_cell k p ρ B0.z B0.z' B0.z_mem B0.z'_mem y hy hyG) Cs hCs

def ProperDomP : Prop :=
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq)
    (j : ℕ) (hj : j ≤ P.r) (Cs : Set (B.Mat P.k P.r)), IsCompact Cs →
    PartialBesselProperness.Proper (p.T.bs j) p.T.base (by omega : j + (P.r - j) = P.r) Cs (domP P.k P.r j p.T.base.z p.T.base.z')

end Formalism.FourierDecayAlt.P.PBQ

namespace Formalism.FourierDecayAlt.P

theorem proper_left_variables_domain : PBQ.ProperDomP := by
  intro Wp Wq _ _ _ _ _ _ P p j hj Cs hCs
  exact PBQ.properE (p.T.bs j) p.T.base _ Cs hCs

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ProperDomP =====

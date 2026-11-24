module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelZeroKernel
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGLet
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdjugateBlockSingleLastColumn
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AsmCastMCastM
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.EmbeddingMapApplyFirstBlock
import Formalism.HermitianCurvature.HermitianCurvatureProofs.MulVecBvecApply
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open Matrix

noncomputable section

namespace Formalism.FourierDecayAlt.P.LevelPointCoordinates

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants

section zfull

variable {j : ℕ}

theorem zfull_apply (Z : Matrix (Fin j) (Fin j) ℂ) (τ : ℂ) (i l : Fin (j + 1)) :
    zfull Z τ i l = if h : i.val < j ∧ l.val < j then Z ⟨i.val, h.1⟩ ⟨l.val, h.2⟩
      else if i.val = j ∧ l.val = j then τ else 0 := by
  obtain ⟨i', rfl⟩ := finSumFinEquiv.surjective i
  obtain ⟨l', rfl⟩ := finSumFinEquiv.surjective l
  unfold zfull U.blk2
  rcases i' with a | a <;> rcases l' with b | b <;>
    simp [Matrix.reindex_apply] <;> omega

theorem zfull_det (Z : Matrix (Fin j) (Fin j) ℂ) (τ : ℂ) : (zfull Z τ).det = Z.det * τ := by
  unfold zfull U.blk2
  rw [Matrix.det_reindex_self, Matrix.det_fromBlocks_zero₂₁]
  congr 1
  rw [Matrix.det_unique]
  rfl

end zfull

section point

variable {k r j : ℕ}

theorem x0_GV (hj : j + 1 ≤ r) {Z : Matrix (Fin j) (Fin j) ℂ} {τ : ℂ} (hZ : Z.det ≠ 0) (hτ : τ ≠ 0)
    {γ : B.Mat k (r - (j + 1))} (hγ : γ ∈ B.GV k (r - (j + 1))) : x0 k r j hj Z τ γ ∈ B.GV k r := by
  have hZf : (zfull Z τ).det ≠ 0 := by rw [zfull_det]; exact mul_ne_zero hZ hτ
  have hM := (_root_.Formalism.FourierDecayAlt.P.Ux2.sliceMem k (j + 1) (r - (j + 1))).1 _ γ hZf hγ
  exact Formalism.FourierDecayAlt.P.PBE.castM_GV _ hM

theorem upper_minor_of_level_point (hj : j + 1 ≤ r) (Z : Matrix (Fin j) (Fin j) ℂ) (τ : ℂ) (γ : B.Mat k (r - (j + 1)))
    (a' : Fin r) (q : Fin (2 * r + k + 1)) (ha' : a'.val < j + 1) :
    PBG.xi0 (x0 k r j hj Z τ γ) a' q =
      if hq : q.val < j + 1 then zfull Z τ ⟨a'.val, ha'⟩ ⟨q.val, hq⟩ else 0 := by
  unfold PBG.xi0
  rw [_root_.PI.StabPairsW.herm_e, Formalism.FourierDecayAlt.P.PBM.mulVec_bvec_apply]
  unfold x0
  rw [LeftFubiniLemmas.castM_apply']
  have hi : (Fin.cast (by omega) (esI k r a') : Fin (2 * (j + 1 + (r - (j + 1))) + k + 1)) =
      U.eB k (j + 1) (r - (j + 1)) (Sum.inr ⟨j + 1 - 1 - a'.val, by omega⟩) := by
    ext; rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_last_val_eq]; simp [esI]; omega
  rw [hi, LeftFubiniLemmas.embedding_map_apply_last_block]
  by_cases hq : q.val < j + 1
  · rw [dite_eq_left (by simpa using hq), dite_eq_left hq]
    congr 1; ext; simp [Fin.val_rev]; omega
  · rw [dite_eq_right (by simpa using hq), dite_eq_right hq]

theorem lower_minor_of_level_point (hj : j + 1 ≤ r) {Z : Matrix (Fin j) (Fin j) ℂ} {τ : ℂ} (hZ : Z.det ≠ 0) (hτ : τ ≠ 0)
    {γ : B.Mat k (r - (j + 1))} (hγ : γ ∈ B.GV k (r - (j + 1)))
    (a' : Fin r) (q : Fin (2 * r + k + 1)) (ha' : a'.val < j + 1) :
    PBG.y0 (x0 k r j hj Z τ γ) a' q =
      if hq : r + k < q.val ∧ 2 * r + k - q.val < j + 1 then
        star (zfull Z τ ⟨a'.val, ha'⟩ ⟨2 * r + k - q.val, hq.2⟩) else 0 := by
  have hZf : (zfull Z τ).det ≠ 0 := by rw [zfull_det]; exact mul_ne_zero hZ hτ
  unfold PBG.y0
  rw [Formalism.FourierDecayAlt.P.PBM.mulVec_bvec_apply]
  have hgu : IsUnit γ.det := WeylGroupFacts.isUnit_of_uh hγ
  unfold x0
  rw [← Formalism.FourierDecayAlt.P.PBH.asm_castM_inv, Formalism.FourierDecayAlt.P.PBM.mMap_inv _ _ (isUnit_iff_ne_zero.mpr hZf) hgu,
    LeftFubiniLemmas.castM_apply']
  have hjj : (Fin.cast (by omega) (eI k r a') : Fin (2 * (j + 1 + (r - (j + 1))) + k + 1)) =
      U.eB k (j + 1) (r - (j + 1)) (Sum.inl (Sum.inl ⟨a'.val, ha'⟩)) := by
    ext; rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_first_val_eq]; simp [eI]
  rw [hjj, LeftFubiniLemmas.embedding_map_apply_first_block]
  by_cases hq : r + k < q.val ∧ 2 * r + k - q.val < j + 1
  · rw [dite_eq_left (by simp; omega), dite_eq_left hq, Ux3.wMat_mul_apply, Matrix.conjTranspose_apply]
    congr 2 <;> ext <;> simp [Fin.val_rev] <;> omega
  · rw [dite_eq_right (by simp; omega), dite_eq_right hq]

end point

end Formalism.FourierDecayAlt.P.LevelPointCoordinates

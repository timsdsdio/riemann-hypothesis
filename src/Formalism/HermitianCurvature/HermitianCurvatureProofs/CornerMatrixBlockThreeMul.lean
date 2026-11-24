module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.NegMulCCancel
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Block3MulBlocks
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerBZero
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerBlockActionInvariant
import Formalism.HermitianCurvature.HermitianCurvatureProofs.EmbeddedGroupMeasurePreserving
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegrableCsmul
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul
import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving
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
import Mathlib.Tactic.ENatToNat
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

@[expose] public section

open Matrix MeasureTheory

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBQ

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants

section what₂

variable {k p ρ : ℕ}

theorem block_three_mul_apply_last (A11 : Matrix (Fin p) (Fin p) ℂ) (A12 : Matrix (Fin p) (Fin (2 * ρ + k + 1)) ℂ)
    (A13 : Matrix (Fin p) (Fin p) ℂ) (A21 : Matrix (Fin (2 * ρ + k + 1)) (Fin p) ℂ) (A22 : B.Mat k ρ)
    (A23 : Matrix (Fin (2 * ρ + k + 1)) (Fin p) ℂ) (g : B.Mat k (p + ρ)) (a : Fin p) (c : Fin (2 * (p + ρ) + k + 1)) :
    (U.blk3 A11 A12 A13 A21 A22 A23 0 0 1 * g) (U.eB k p ρ (Sum.inr a)) c = g (U.eB k p ρ (Sum.inr a)) c := by
  rw [Matrix.mul_apply, ← (U.eB k p ρ).sum_comp]
  rw [Finset.sum_eq_single (Sum.inr a)]
  · rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]; simp
  · intro q _ hq
    rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]
    rcases q with (q | q) | q
    · simp
    · simp
    · have : q ≠ a := fun h => hq (by rw [h])
      simp [this.symm]
  · intro h; exact absurd (Finset.mem_univ _) h

theorem zh_row (a : Fin p) : (⟨2 * (p + ρ) + k - a.val, by omega⟩ : Fin (2 * (p + ρ) + k + 1)) =
    U.eB k p ρ (Sum.inr ⟨p - 1 - a.val, by omega⟩) := by
  ext; rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_last_val_eq]; simp; omega

theorem corner_matrix_block_three_mul (A11 : Matrix (Fin p) (Fin p) ℂ) (A12 : Matrix (Fin p) (Fin (2 * ρ + k + 1)) ℂ)
    (A13 : Matrix (Fin p) (Fin p) ℂ) (A21 : Matrix (Fin (2 * ρ + k + 1)) (Fin p) ℂ) (A22 : B.Mat k ρ)
    (A23 : Matrix (Fin (2 * ρ + k + 1)) (Fin p) ℂ) (g : B.Mat k (p + ρ)) :
    U.Zh k p ρ (U.blk3 A11 A12 A13 A21 A22 A23 0 0 1 * g) = U.Zh k p ρ g := by
  ext a b
  simp only [U.Zh]
  rw [zh_row, block_three_mul_apply_last]

theorem zh_rn_mul (x : U.RC k p ρ) (g : B.Mat k (p + ρ)) : U.Zh k p ρ (U.Rn k p ρ x * g) = U.Zh k p ρ g := by
  rw [Ux3.rn_eq]; exact corner_matrix_block_three_mul _ _ _ _ _ _ g

theorem zh_embG_mul (y : B.Mat k ρ) (g : B.Mat k (p + ρ)) : U.Zh k p ρ (U.embG k p ρ y * g) = U.Zh k p ρ g := by
  unfold U.embG; exact corner_matrix_block_three_mul _ _ _ _ _ _ g

end what₂

section zh

variable {k p ρ : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem zh_sP_mul (Bj : B.RealPlaceData k ρ Wp Wq) (x : XP k p ρ) (g : B.Mat k (p + ρ)) :
    U.Zh k p ρ (sP Bj x * g) = U.Zh k p ρ g := by
  unfold sP
  split_ifs
  · rw [Matrix.mul_assoc, zh_rn_mul, zh_embG_mul]
  · rw [Matrix.one_mul]

theorem zh_mul_UW (z : Fin (2 * (p + ρ) + k + 1) → ℂ) (g h : B.Mat k (p + ρ)) (hh : h ∈ UWset k (p + ρ) z) :
    U.Zh k p ρ (g * h) = U.Zh k p ρ g := by
  ext a b
  simp only [U.Zh, Matrix.mul_apply]
  have hcol : ∀ c : Fin (2 * (p + ρ) + k + 1), h c ⟨b.val, by omega⟩ = if c.val = b.val then 1 else 0 := by
    intro c
    have h1 := congrFun (hh.2.1 ⟨b.val, by omega⟩).1 c
    have e : eI k (p + ρ) ⟨b.val, by omega⟩ = ⟨b.val, by omega⟩ := rfl
    rw [e] at h1
    rw [← Formalism.FourierDecayAlt.P.PBM.mulVec_bvec_apply h ⟨b.val, by omega⟩ c, h1]
    unfold bvec
    by_cases hcb : c.val = b.val
    · rw [if_pos hcb, Pi.single_apply, if_pos (Fin.ext hcb)]
    · rw [if_neg hcb, Pi.single_apply, if_neg (fun h' => hcb (congrArg Fin.val h'))]
  rw [Finset.sum_eq_single ⟨b.val, by omega⟩]
  · rw [hcol, if_pos rfl, mul_one]
  · intro c _ hc
    rw [hcol, if_neg (fun h' => hc (Fin.ext h')), mul_zero]
  · intro h'; exact absurd (Finset.mem_univ _) h'

theorem nblk_upper (nn : B.Mat k (p + ρ)) (hn : nn ∈ Nset k (p + ρ)) :
    Matrix.of (fun c b : Fin p => nn ⟨c.val, by omega⟩ ⟨b.val, by omega⟩) =
      G.upper (fun q : G.UT p => nn ⟨q.1.1.val, by omega⟩ ⟨q.1.2.val, by omega⟩) := by
  ext c b
  simp only [Matrix.of_apply, G.upper, G.strictUpper, Matrix.add_apply, Matrix.one_apply]
  rcases lt_trichotomy c b with hcb | rfl | hcb
  · rw [if_neg (ne_of_lt hcb), dite_eq_left hcb, zero_add]
  · rw [LeftFubiniLemmas.n_col nn hn c _ le_rfl, if_pos rfl, if_pos rfl, dite_eq_right (lt_irrefl _), add_zero]
  · rw [LeftFubiniLemmas.n_col nn hn b _ (le_of_lt hcb), if_neg (by simp only; omega), if_neg (ne_of_gt hcb),
      dite_eq_right (not_lt.mpr (le_of_lt hcb)), add_zero]

end zh

section support

variable {k p ρ n : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem pb_head_support (Bj : B.RealPlaceData k ρ Wp Wq) (B0 : B.RealPlaceData k n Wp Wq) (e : p + ρ = n)
    (σ : Equiv.Perm (Fin p)) (d : Fin p → ℂ) (hd : ∀ i, d i ≠ 0)
    (H : B.Mat k n → (Wq →L[ℂ] Wp)) (Cs : Set (B.Mat k n)) (hCs : IsCompact Cs)
    (hH : ∀ g ∈ B.GV k n, g ∉ Cs → H g = 0) :
    ∃ R : ℝ, ∀ v : U.LW σ → ℂ, R < ‖v‖ → ∀ g ∈ B.GV k n,
      U.Zh k p ρ (D.castM e.symm g) = LeftFubiniLemmas.lhOf σ v * U.hMat σ d → pbF Bj B0 e H g = 0 := by
  subst e
  obtain ⟨C2, hC2⟩ := Formalism.FourierDecayAlt.P.aux_statement_17 p 0 σ d hd
  have hcont : Continuous (fun c : B.Mat k (p + ρ) => U.mx (U.Zh k p ρ c)) := by
    have e1 : (fun c : B.Mat k (p + ρ) => U.mx (U.Zh k p ρ c)) =
        fun c => ‖(fun a b => c ⟨2 * (p + ρ) + k - a.val, by omega⟩ ⟨b.val, by omega⟩ : Fin p → Fin p → ℂ)‖ := rfl
    rw [e1]
    refine continuous_norm.comp ?_
    refine continuous_pi fun a => continuous_pi fun b => ?_
    exact (continuous_apply (⟨b.val, by omega⟩ : Fin (2 * (p + ρ) + k + 1))).comp
      (continuous_apply (⟨2 * (p + ρ) + k - a.val, by omega⟩ : Fin (2 * (p + ρ) + k + 1)))
  obtain ⟨M, hM⟩ := hCs.exists_bound_of_continuousOn hcont.continuousOn
  set M0 : ℝ := max M 0 with hM0
  set C0 : ℝ := max C2 0 with hC0
  refine ⟨C0 * M0 ^ p, fun v hv g hg hZ => ?_⟩
  rw [Formalism.FourierDecayAlt.P.Dx2.MN.castM_rfl] at hZ
  unfold pbF
  rw [← integral_zero (XP k p ρ) (Wq →L[ℂ] Wp)]
  refine integral_congr_ae ?_
  filter_upwards [ae_goodP Bj] with x hx
  show pbI Bj B0 rfl H g x = 0
  unfold pbI
  rw [Formalism.FourierDecayAlt.P.Dx2.MN.castM_rfl]
  have hK : PBG.Kr B0 H (sP Bj x * g) = 0 := by
    unfold PBG.Kr
    rw [← integral_zero (Mt k (p + ρ) × Mt k (p + ρ)) (Wq →L[ℂ] Wp)]
    refine integral_congr_ae ?_
    filter_upwards [PBG.ae_inR B0] with ξ hξ
    show _ = 0
    have hc : sP Bj x * g * Matrix.of ξ.2 * Matrix.of ξ.1 ∉ Cs := by
      intro hcC
      have hZc : U.Zh k p ρ (sP Bj x * g * Matrix.of ξ.2 * Matrix.of ξ.1) =
          U.headH σ d v (fun q : G.UT p => (Matrix.of ξ.2 : B.Mat k (p + ρ)) ⟨q.1.1.val, by omega⟩ ⟨q.1.2.val, by omega⟩) := by
        rw [zh_mul_UW _ _ _ hξ.1, LeftFubiniLemmas.zh_mul_N _ _ hξ.2, zh_sP_mul, hZ, nblk_upper _ hξ.2,
          (LeftFubiniLemmas.head_hermitian_eq p σ d v _).1]
      set η : U.XiH p 0 σ := ((fun i => i.elim0, fun _ i => i.elim0),
        (v, fun q : G.UT p => (Matrix.of ξ.2 : B.Mat k (p + ρ)) ⟨q.1.1.val, by omega⟩ ⟨q.1.2.val, by omega⟩)) with hη
      have hZj : U.ZjH σ d η (fun i => i.elim0) = U.Zh k p ρ (sP Bj x * g * Matrix.of ξ.2 * Matrix.of ξ.1) := by
        rw [hZc, LeftFubiniLemmas.lower_corner_hermitian_zero]
      have hb := (hC2 η (fun i => i.elim0)).2.2.1
      rw [hZj] at hb
      have hm := hM _ hcC
      rw [Real.norm_eq_abs, abs_le] at hm
      have hmx0 : 0 ≤ U.mx (U.Zh k p ρ (sP Bj x * g * Matrix.of ξ.2 * Matrix.of ξ.1)) := norm_nonneg _
      have h1 : U.mx (U.Zh k p ρ (sP Bj x * g * Matrix.of ξ.2 * Matrix.of ξ.1)) ≤ M0 := hm.2.trans (le_max_left _ _)
      have h2 : ‖v‖ ≤ C0 * M0 ^ p := by
        refine hb.trans ?_
        exact mul_le_mul (le_max_left _ _) (pow_le_pow_left₀ hmx0 h1 p) (pow_nonneg hmx0 _) (le_max_right _ _)
      exact absurd hv (not_lt.mpr h2)
    have hGV : sP Bj x * g * Matrix.of ξ.2 * Matrix.of ξ.1 ∈ B.GV k (p + ρ) := by
      have hs : sP Bj x ∈ B.GV k (p + ρ) := by
        unfold sP
        rw [if_pos hx]
        refine Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul (_root_.Formalism.FourierDecayAlt.P.Ux3.rn_nset _).1 ?_
        rw [← Formalism.FourierDecayAlt.P.Dx2.Tower.lev_eq_embG]
        exact Formalism.FourierDecayAlt.P.Dx2.Tower.lev_GV p ρ _
          (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_inv hx.1.1) (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_inv hx.2.1))
      exact Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul hs hg) hξ.2.1) hξ.1.1
    rw [hH _ hGV hc, ContinuousLinearMap.zero_comp, smul_zero]
  rw [hK, ContinuousLinearMap.comp_zero, smul_zero]

end support

end Formalism.FourierDecayAlt.P.PBQ

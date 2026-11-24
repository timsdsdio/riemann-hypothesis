module

import Formalism.HermitianCurvature.HermitianCurvatureProofs.DirectionsInParabolic
public import Formalism.HermitianCurvature.StatementU
public import Formalism.FormalDegreeBessel.FinalG
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.CategoryTheory.Countable
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
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.TotallySplit
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
import Mathlib.Tactic.Lemma
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Separation.CompletelyRegular
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
public import Mathlib.Analysis.SpecialFunctions.JapaneseBracket
public import Mathlib.MeasureTheory.Integral.Prod

@[expose] public section

open Matrix MeasureTheory Formalism.FourierDecayAlt Formalism.FourierDecayAlt.U Formalism.QuantumDeterminants
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.Ux6
section blocks

variable {k j ρ : ℕ}












end blocks

section rad

variable {k j ρ : ℕ}





end rad

section sizes

variable {k j ρ : ℕ}

theorem entry_le_gN {r : ℕ} (M : B.Mat k r) (i l : Fin (2 * r + k + 1)) : ‖M i l‖ ≤ B.gN M := by
  unfold B.gN
  calc ‖M i l‖ = Real.sqrt (Complex.normSq (M i l)) := by
        rw [Complex.normSq_eq_norm_sq, Real.sqrt_sq (norm_nonneg _)]
    _ ≤ Real.sqrt (∑ i, ∑ l, Complex.normSq (M i l)) := by
        apply Real.sqrt_le_sqrt
        calc Complex.normSq (M i l) ≤ ∑ l, Complex.normSq (M i l) :=
              Finset.single_le_sum (f := fun l => Complex.normSq (M i l)) (fun _ _ => Complex.normSq_nonneg _)
                (Finset.mem_univ l)
          _ ≤ ∑ i, ∑ l, Complex.normSq (M i l) :=
              Finset.single_le_sum (f := fun i => ∑ l, Complex.normSq (M i l))
                (fun _ _ => Finset.sum_nonneg fun _ _ => Complex.normSq_nonneg _) (Finset.mem_univ i)

theorem wMat_mul_apply' {n : ℕ} (M : Matrix (Fin j) (Fin n) ℂ) (a : Fin j) (b : Fin n) :
    (G.wMat j * M) a b = M a.rev b := by
  simp [G.wMat, Matrix.mul_apply]

theorem Rn_23 (x : RC k j ρ) (i : Fin (2 * ρ + k + 1)) (b : Fin j) :
    Rn k j ρ x (eB k j ρ (Sum.inl (Sum.inr i))) (eB k j ρ (Sum.inr b)) = x.1 i b := by
  simp [Rn, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]

theorem Rn_13 (x : RC k j ρ) (a b : Fin j) :
    Rn k j ρ x (eB k j ρ (Sum.inl (Sum.inl a))) (eB k j ρ (Sum.inr b)) =
      (G.wMat j * ((-(1 / 2 : ℂ)) • ((Matrix.of x.1)ᴴ * Hpk k ρ * Matrix.of x.1) + skewOf x.2)) a b := by
  simp [Rn, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]

theorem skew_entry_le (x : RC k j ρ) (a b : Fin j) : ‖skewOf x.2 a b‖ ≤ B.gN (Rn k j ρ x) := by
  set X := (Matrix.of x.1)ᴴ * Hpk k ρ * Matrix.of x.1 with hXdef
  set W := (-(1 / 2 : ℂ)) • X + skewOf x.2 with hWdef
  have hX : Xᴴ = X := by
    simp only [hXdef, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, _root_.Formalism.FourierDecayAlt.P.Ux4.hpk_conjTranspose, Matrix.mul_assoc]
  have hWh : Wᴴ = (-(1 / 2 : ℂ)) • X - skewOf x.2 := by
    simp only [hWdef, Matrix.conjTranspose_add, Matrix.conjTranspose_smul, hX, _root_.Formalism.FourierDecayAlt.P.Ux4.skewOf_conjTranspose]
    have : star (-(1 / 2 : ℂ)) = -(1 / 2 : ℂ) := by simp
    rw [this]; abel
  have hS : skewOf x.2 = (1 / 2 : ℂ) • (W - Wᴴ) := by
    rw [hWh, hWdef]; module
  have hWe : ∀ a b : Fin j, ‖W a b‖ ≤ B.gN (Rn k j ρ x) := by
    intro a b
    have h1 : W a b = (G.wMat j * W) a.rev b := by rw [wMat_mul_apply', Fin.rev_rev]
    rw [h1, ← Rn_13]
    exact entry_le_gN _ _ _
  have he : skewOf x.2 a b = (1 / 2 : ℂ) * (W a b - star (W b a)) := by
    rw [hS]; simp [Matrix.conjTranspose_apply]
  rw [he, norm_mul]
  have h2 : ‖W a b - star (W b a)‖ ≤ ‖W a b‖ + ‖W b a‖ := by
    simpa [norm_star] using norm_sub_le (W a b) (star (W b a))
  have h3 := hWe a b
  have h4 := hWe b a
  rw [show ‖(1 / 2 : ℂ)‖ = 1 / 2 by simp]
  linarith

theorem norm_le_gN_Rn (x : RC k j ρ) : ‖x‖ ≤ B.gN (Rn k j ρ x) := by
  have h0 : 0 ≤ B.gN (Rn k j ρ x) := Real.sqrt_nonneg _
  rw [norm_prod_le_iff, norm_prod_le_iff]
  refine ⟨?_, ?_, ?_⟩
  · refine (pi_norm_le_iff_of_nonneg h0).2 fun i => (pi_norm_le_iff_of_nonneg h0).2 fun b => ?_
    rw [← Rn_23]
    exact entry_le_gN _ _ _
  · refine (pi_norm_le_iff_of_nonneg h0).2 fun u => ?_
    have h := skew_entry_le x u.1.1 u.1.2
    have hu : skewOf x.2 u.1.1 u.1.2 = x.2.1 u := by
      have h1 : u.1.1 < u.1.2 := u.2
      have h2 : ¬ u.1.2 < u.1.1 := not_lt.mpr h1.le
      have h3 : u.1.1 ≠ u.1.2 := ne_of_lt h1
      simp [skewOf, G.strictUpper, Matrix.conjTranspose_apply, h1, h2, h3]
    rwa [hu] at h
  · refine (pi_norm_le_iff_of_nonneg h0).2 fun i => ?_
    have h := skew_entry_le x i i
    have hu : skewOf x.2 i i = Complex.I * ((x.2.2 i : ℝ) : ℂ) := by
      simp [skewOf, G.strictUpper, Matrix.conjTranspose_apply]
    rw [hu, norm_mul, Complex.norm_I, one_mul, Complex.norm_real] at h
    exact h

theorem Rn_mem (x : RC k j ρ) : Rn k j ρ x ∈ B.GV k (j + ρ) := _root_.Formalism.FourierDecayAlt.P.Ux4.Rn_unitary x

end sizes

section det

theorem block2_det_lower_triangular {p s : ℕ} (A : Matrix (Fin p) (Fin p) ℂ) (C : Matrix (Fin s) (Fin p) ℂ)
    (D : Matrix (Fin s) (Fin s) ℂ) : (blk2 A 0 C D).det = A.det * D.det := by
  unfold blk2
  rw [Matrix.det_reindex_self, Matrix.det_fromBlocks_zero₁₂]


theorem det_upper {p : ℕ} (u : G.UT p → ℂ) : (G.upper u).det = 1 := by
  have h : (G.upper u).BlockTriangular id := by
    intro i j hij
    simp only [id] at hij
    simp [G.upper, G.strictUpper, ne_of_gt hij, not_lt.mpr (le_of_lt hij)]
  rw [Matrix.det_of_isUpperTriangular h]
  simp [G.upper, G.strictUpper]

theorem det_lowW {p : ℕ} (σ : Equiv.Perm (Fin p)) (v : LW σ → ℂ) : (lowW σ v).det = 1 := by
  have h : (lowW σ v).BlockTriangular OrderDual.toDual := by
    intro i j hij
    have hij' : i < j := hij
    have : ¬ (j < i ∧ σ.symm j < σ.symm i) := fun h => absurd h.1 (not_lt.mpr (le_of_lt hij'))
    simp [lowW, ne_of_lt hij', this]
  rw [Matrix.det_of_isLowerTriangular _ h]
  simp [lowW]

theorem detZj : DetZj := by
  intro p s σ d η Z
  unfold ZjH Zj headH hMat G.detM
  rw [Matrix.det_mul, Matrix.det_mul, block2_det_lower_triangular, block2_det_lower_triangular, _root_.Formalism.FourierDecayAlt.P.Ux4.block2_det_upper_triangular]
  simp only [Matrix.det_mul, det_upper, det_lowW, Matrix.det_one]
  ring

end det

section main

theorem le_max_zero_mul {C y X : ℝ} (hy : 0 ≤ y) (h : X ≤ C * y) : X ≤ max C 0 * y :=
  h.trans (mul_le_mul_of_nonneg_right (le_max_left _ _) hy)

theorem le_div_of_lower_bound {X C y m m0 : ℝ} (hy : 0 ≤ y) (hm0 : 0 < m0) (hm : m0 ≤ m) (h : X ≤ C * y / m) :
    X ≤ max C 0 / m0 * y := by
  have hm' : 0 < m := lt_of_lt_of_le hm0 hm
  have hD : 0 ≤ max C 0 := le_max_right _ _
  calc X ≤ C * y / m := h
    _ ≤ max C 0 * y / m := div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_right (le_max_left _ _) hy) hm'.le
    _ ≤ max C 0 * y / m0 := div_le_div_of_nonneg_left (mul_nonneg hD hy) hm0 hm
    _ = max C 0 / m0 * y := by ring

theorem le_big {X c C y : ℝ} (hy : 0 ≤ y) (hc : c ≤ C) (h : X ≤ c * y) : X ≤ C * y :=
  h.trans (mul_le_mul_of_nonneg_right hc hy)

theorem one_add_le {X c y : ℝ} (hy : 1 ≤ y) (h : X ≤ c * y) : 1 + X ≤ (1 + c) * y := by
  nlinarith

theorem gV_slice {k j ρ : ℕ} (x x' : RC k j ρ) (M : B.Mat k (j + ρ)) (hM : M ∈ B.GV k (j + ρ)) :
    (Rn k j ρ x)⁻¹ * M * Rn k j ρ x' ∈ B.GV k (j + ρ) := by
  have hH : IsUnit (Hpk k (j + ρ)).det := by
    have h := (hpkFacts k (j + ρ)).2.1
    have h2 := congrArg Matrix.det h
    rw [Matrix.det_mul, Matrix.det_one] at h2
    exact isUnit_iff_exists_inv.mpr ⟨_, h2⟩
  obtain ⟨-, hmul, hinv⟩ := uHGroup _ (Hpk k (j + ρ)) hH
  exact hmul _ (hmul _ (hinv _ (Rn_mem x)).2 _ hM) _ (Rn_mem x')

theorem coordinate_sizes_of_parts_holds : CoordinateSizesFromComponents := by
  intro hSM hU1 hU2 hZh hDet k p s ρ σ d hd hs K hK hK0
  obtain ⟨κ0, hκ0, hκK⟩ : ∃ κ0 : ℝ, 0 < κ0 ∧ ∀ x ∈ K, κ0 ≤ x := by
    rcases K.eq_empty_or_nonempty with h | h
    · exact ⟨1, one_pos, by simp [h]⟩
    · obtain ⟨x0, hx0, hmin⟩ := hK.exists_isMinOn h continuousOn_id
      exact ⟨x0, hK0 hx0, fun x hx => hmin hx⟩
  obtain ⟨C1, hC1⟩ := hU1 k (p + s) ρ (by omega)
  obtain ⟨C2, hC2⟩ := hU2 p s σ d hd
  set D1 := max C1 0 with hD1
  set D2 := max C2 0 with hD2
  have hD1n : 0 ≤ D1 := le_max_right _ _
  have hD2n : 0 ≤ D2 := le_max_right _ _
  set m0 := min 1 κ0 with hm0def
  have hm0 : 0 < m0 := lt_min one_pos hκ0
  set ca := D1 / m0
  set cc := 1 + D2 * D1 ^ p
  set cd := 1 + D2 * D1 ^ (p + 1)
  set ce := D1 / m0 ^ 2
  set cf := D1 / κ0
  have hca : 0 ≤ ca := div_nonneg hD1n hm0.le
  have hcc : 0 ≤ cc := by positivity
  have hcd : 0 ≤ cd := by positivity
  have hce : 0 ≤ ce := by positivity
  have hcf : 0 ≤ cf := div_nonneg hD1n hκ0.le
  refine ⟨ca + (1 + ca) + cc + cd + ce + cf, ?_⟩
  intro ξ Z γ hγ hDK
  set Zj := ZjH σ d ξ.2 Z with hZjdef
  have hgdef : gaXi k ρ σ d ξ Z γ =
      (Rn k (p + s) ρ ξ.1.1)⁻¹ * mMap k (p + s) ρ Zj γ * Rn k (p + s) ρ ξ.1.2 := rfl
  set g := gaXi k ρ σ d ξ Z γ with hg
  have hDj : DjU k (p + s) ρ g = Zj.det := by rw [DjU, hgdef, hZh]
  have hdetK : ‖Zj.det‖ ∈ K := hDj ▸ hDK
  have hdet_ge : κ0 ≤ ‖Zj.det‖ := hκK _ hdetK
  have hdet0 : Zj.det ≠ 0 := norm_ne_zero_iff.mp (ne_of_gt (lt_of_lt_of_le hκ0 hdet_ge))
  have hZ0 : G.detM Z ≠ 0 := by
    intro h; apply hdet0; rw [hZjdef, hDet]; simp [h]
  obtain ⟨u1, u2, u3, u4, u5⟩ := hC1 ξ.1.1 ξ.1.2 Zj γ hdet0 hγ
  obtain ⟨v1, v2, v3, v4, v5, v6⟩ := hC2 ξ.2 Z
  rw [← hgdef] at u1 u2 u3 u4 u5
  have hgGV : g ∈ B.GV k (p + s + ρ) := by
    rw [hgdef]; exact gV_slice _ _ _ ((hSM k (p + s) ρ).1 Zj γ hdet0 hγ)
  have hg1 : 1 ≤ B.gN g := BetaSesquilinearity.gN_ge_one hgGV
  have hgp : ∀ e : ℕ, 1 ≤ B.gN g ^ e := fun e => one_le_pow₀ hg1
  have hgp0 : ∀ e : ℕ, 0 ≤ B.gN g ^ e := fun e => le_trans zero_le_one (hgp e)
  have hmin : m0 ≤ min 1 ‖Zj.det‖ := min_le_min le_rfl hdet_ge

  have b1 : B.gN (Rn k (p + s) ρ ξ.1.1) ≤ ca * B.gN g ^ (p + s) := le_div_of_lower_bound (hgp0 _) hm0 hmin u1
  have b2 : B.gN (Rn k (p + s) ρ ξ.1.2) ≤ ca * B.gN g ^ (p + s) := le_div_of_lower_bound (hgp0 _) hm0 hmin u2
  have b3 : 1 + ‖ξ.1.1‖ ≤ (1 + ca) * B.gN g ^ (p + s) :=
    one_add_le (hgp _) ((norm_le_gN_Rn _).trans b1)
  have b4 : 1 + ‖ξ.1.2‖ ≤ (1 + ca) * B.gN g ^ (p + s) :=
    one_add_le (hgp _) ((norm_le_gN_Rn _).trans b2)

  have hmx0 : 0 ≤ mx Zj := norm_nonneg _
  have hmx : mx Zj ≤ D1 * B.gN g := le_max_zero_mul (le_trans zero_le_one hg1) u3
  have hmxp : ∀ e : ℕ, mx Zj ^ e ≤ D1 ^ e * B.gN g ^ e := fun e => by
    rw [← mul_pow]; exact pow_le_pow_left₀ hmx0 hmx e
  have head : ∀ (X : ℝ) (e : ℕ), X ≤ C2 * mx Zj ^ e → 1 + X ≤ (1 + D2 * D1 ^ e) * B.gN g ^ e := by
    intro X e hX
    apply one_add_le (hgp e)
    calc X ≤ D2 * mx Zj ^ e := le_max_zero_mul (pow_nonneg hmx0 e) hX
      _ ≤ D2 * (D1 ^ e * B.gN g ^ e) := mul_le_mul_of_nonneg_left (hmxp e) hD2n
      _ = D2 * D1 ^ e * B.gN g ^ e := by ring
  have b5 := head _ _ v1
  have b6 := head _ _ v2
  have b7 := head _ _ v3
  have b8 := head _ _ v4
  have b9 := head _ _ v5

  have hmin2 : m0 ^ 2 ≤ min 1 ‖Zj.det‖ ^ 2 := pow_le_pow_left₀ hm0.le hmin 2
  have b10 : B.gN γ ≤ ce * B.gN g ^ (2 * (p + s) + 1) :=
    le_div_of_lower_bound (hgp0 _) (by positivity) hmin2 u5

  have b11 : mx (Matrix.of Z)⁻¹ ≤ cf * B.gN g ^ (p + s - 1) :=
    (v6 hZ0).trans (le_div_of_lower_bound (hgp0 _) hκ0 hdet_ge u4)
  refine ⟨hg1, le_big (hgp0 _) (by linarith) b1, le_big (hgp0 _) (by linarith) b2,
    le_big (hgp0 _) (by linarith) b3, le_big (hgp0 _) (by linarith) b4,
    le_big (hgp0 _) (by linarith) b5, le_big (hgp0 _) (by linarith) b6,
    le_big (hgp0 _) (by linarith) b7, le_big (hgp0 _) (by linarith) b8,
    le_big (hgp0 _) (by linarith) b9, le_big (hgp0 _) (by linarith) b10,
    le_big (hgp0 _) (by linarith) b11⟩

theorem norm_decay_of_coordinate_sizes_holds : CoordinateDecayOfSizes := by
  intro h21 k p s ρ σ d hd hs K hK hK0 A' hA'
  obtain ⟨C, hC⟩ := h21 k p s ρ σ d hd hs K hK hK0
  set C1 := max C 1 with hC1
  have hC1pos : 0 < C1 := lt_of_lt_of_le one_pos (le_max_right _ _)
  set N : ℕ := 2 * (p + s + ρ) + 1 with hN
  set e : ℝ := -(A' / (8 * (2 * ((p + s + ρ : ℕ) : ℝ) + 1))) with he
  have he0 : e ≤ 0 := by
    rw [he]
    exact neg_nonpos.mpr (div_nonneg hA' (by positivity))
  refine ⟨(C1 ^ 8) ^ (-e), ?_⟩
  intro ξ Z γ hγ hD
  obtain ⟨hg1, -, -, h1, h2, h3, h4, h5, h6, h7, h8, -⟩ := hC ξ Z γ hγ hD
  set g := B.gN (gaXi k ρ σ d ξ Z γ) with hg
  have hgpos : 0 < g := by linarith
  have up : ∀ (x : ℝ) (m : ℕ), m ≤ N → x ≤ C * g ^ m → x ≤ C1 * g ^ N := by
    intro x m hm hx
    have h1' : g ^ m ≤ g ^ N := pow_le_pow_right₀ hg1 hm
    have h0 : 0 ≤ g ^ m := by positivity
    calc x ≤ C * g ^ m := hx
      _ ≤ C1 * g ^ m := mul_le_mul_of_nonneg_right (le_max_left _ _) h0
      _ ≤ C1 * g ^ N := mul_le_mul_of_nonneg_left h1' hC1pos.le
  have hγpos : 0 < B.gN γ := BetaSesquilinearity.gN_pos hγ
  set M := C1 * g ^ N with hM
  have e1 := up _ _ (by omega) h1
  have e2 := up _ _ (by omega) h2
  have e3 := up _ _ (by omega) h3
  have e4 := up _ _ (by omega) h4
  have e5 := up _ _ (by omega) h5
  have e6 := up _ _ (by omega) h6
  have e7 := up _ _ (by omega) h7
  have e8 := up _ _ (by omega) h8
  have hPpos : 0 < wt ξ * (1 + ‖Z‖) * B.gN γ := by
    simp only [wt, wtH]; positivity
  have hP : wt ξ * (1 + ‖Z‖) * B.gN γ ≤ M ^ 8 := by
    simp only [wt, wtH]
    calc (1 + ‖ξ.1.1‖) * (1 + ‖ξ.1.2‖) *
          ((1 + ‖ξ.2.1.1‖) * (1 + ‖ξ.2.1.2‖) * (1 + ‖ξ.2.2.1‖) * (1 + ‖ξ.2.2.2‖)) * (1 + ‖Z‖) * B.gN γ
        ≤ M * M * (M * M * M * M) * M * M := by
          gcongr
      _ = M ^ 8 := by ring
  have key : (M ^ 8) ^ e ≤ (wt ξ * (1 + ‖Z‖) * B.gN γ) ^ e := Real.rpow_le_rpow_of_nonpos hPpos hP he0
  have hNr : ((8 * N : ℕ) : ℝ) * e = -A' := by
    rw [he, hN]; push_cast; field_simp
  have hM8 : (M ^ 8) ^ e = (C1 ^ 8) ^ e * g ^ (-A') := by
    rw [show M ^ 8 = C1 ^ 8 * g ^ (8 * N) by rw [hM]; ring]
    rw [Real.mul_rpow (by positivity) (by positivity)]
    congr 1
    rw [← Real.rpow_natCast, ← Real.rpow_mul hgpos.le, hNr]
  have hC8 : 0 < C1 ^ 8 := by positivity
  calc g ^ (-A') = (C1 ^ 8) ^ (-e) * (M ^ 8) ^ e := by
        rw [hM8, ← mul_assoc, Real.rpow_neg hC8.le, inv_mul_cancel₀ (by positivity), one_mul]
    _ ≤ (C1 ^ 8) ^ (-e) * (wt ξ * (1 + ‖Z‖) * B.gN γ) ^ e :=
        mul_le_mul_of_nonneg_left key (by positivity)

end main

lemma isAddHaarMeasure_matrix_volume (a b : ℕ) : (volume : Measure (Fin a → Fin b → ℂ)).IsAddHaarMeasure :=
  Measure.pi.isAddHaarMeasure _

lemma finrank_pi_pi_complex (a b : ℕ) : Module.finrank ℝ (Fin a → Fin b → ℂ) = a * (b * 2) := by
  simp [Module.finrank_pi_fintype, Complex.finrank_real_complex]

lemma finrank_fun (ι : Type) [Fintype ι] : Module.finrank ℝ (ι → ℂ) = Fintype.card ι * 2 := by
  simp [Module.finrank_pi_fintype, Complex.finrank_real_complex]

lemma card_UT (j : ℕ) : Fintype.card (Formalism.FourierDecayAlt.G.UT j) ≤ j * j := by
  simpa [Fintype.card_prod] using Fintype.card_subtype_le (fun q : Fin j × Fin j => q.1 < q.2)

lemma card_LW {p : ℕ} (σ : Equiv.Perm (Fin p)) : Fintype.card (LW σ) ≤ p * p := by
  simpa [Fintype.card_prod] using Fintype.card_subtype_le (fun q : Fin p × Fin p => q.2 < q.1 ∧ σ.symm q.2 < σ.symm q.1)

lemma finrank_RC (k j ρ : ℕ) : Module.finrank ℝ (RC k j ρ) ≤ (2 * ρ + k + 1) * (j * 2) + j * j * 2 + j := by
  rw [Module.finrank_prod, Module.finrank_prod, finrank_pi_pi_complex, finrank_fun]
  have h1 := card_UT j
  have h2 : Module.finrank ℝ (Fin j → ℝ) = j := by simp
  rw [h2]
  nlinarith

lemma rpow4 {A B C D a : ℝ} (hA : 0 ≤ A) (hB : 0 ≤ B) (hC : 0 ≤ C) (hD : 0 ≤ D) :
    (A * B * C * D) ^ (-a) = (A ^ (-a) * B ^ (-a)) * (C ^ (-a) * D ^ (-a)) := by
  rw [Real.mul_rpow (by positivity) hD, Real.mul_rpow (by positivity) hC, Real.mul_rpow hA hB]
  ring

lemma rpow3 {A B W a : ℝ} (hA : 0 ≤ A) (hB : 0 ≤ B) (hW : 0 ≤ W) :
    (A * B * W) ^ (-a) = (A ^ (-a) * B ^ (-a)) * W ^ (-a) := by
  rw [Real.mul_rpow (by positivity) hW, Real.mul_rpow hA hB]

lemma intH (p s : ℕ) (σ : Equiv.Perm (Fin p)) (a : ℝ) (h1 : ((s * (p * 2) : ℕ) : ℝ) < a)
    (h2 : ((p * (s * 2) : ℕ) : ℝ) < a) (h3 : ((p * p * 2 : ℕ) : ℝ) < a) :
    Integrable (fun η : XiH p s σ => wtH η ^ (-a)) (muXiH p s σ) := by
  have := isAddHaarMeasure_matrix_volume s p
  have := isAddHaarMeasure_matrix_volume p s
  have iA : Integrable (fun x : Fin s → Fin p → ℂ => (1 + ‖x‖) ^ (-a)) volume :=
    integrable_one_add_norm (by rw [finrank_pi_pi_complex]; exact h1)
  have iB : Integrable (fun x : Fin p → Fin s → ℂ => (1 + ‖x‖) ^ (-a)) volume :=
    integrable_one_add_norm (by rw [finrank_pi_pi_complex]; exact h2)
  have iL : Integrable (fun x : LW σ → ℂ => (1 + ‖x‖) ^ (-a)) volume := by
    refine integrable_one_add_norm (lt_of_le_of_lt ?_ h3)
    rw [finrank_fun]
    exact_mod_cast Nat.mul_le_mul_right 2 (card_LW σ)
  have iU : Integrable (fun x : Formalism.FourierDecayAlt.G.UT p → ℂ => (1 + ‖x‖) ^ (-a)) volume := by
    refine integrable_one_add_norm (lt_of_le_of_lt ?_ h3)
    rw [finrank_fun]
    exact_mod_cast Nat.mul_le_mul_right 2 (card_UT p)
  have h := (iA.mul_prod iB).mul_prod (iL.mul_prod iU)
  refine h.congr (ae_of_all _ fun η => ?_)
  simp only [wtH]
  rw [rpow4 (by positivity) (by positivity) (by positivity) (by positivity)]

lemma intRC (k j ρ : ℕ) (a : ℝ) (h : (((2 * ρ + k + 1) * (j * 2) + j * j * 2 + j : ℕ) : ℝ) < a) :
    Integrable (fun x : RC k j ρ => (1 + ‖x‖) ^ (-a)) (muRC k j ρ) := by
  have := isAddHaarMeasure_matrix_volume (2 * ρ + k + 1) j
  have : (volume : Measure ((Formalism.FourierDecayAlt.G.UT j → ℂ) × (Fin j → ℝ))).IsAddHaarMeasure :=
    Measure.prod.instIsAddHaarMeasure _ _
  have : (volume : Measure (RC k j ρ)).IsAddHaarMeasure := Measure.prod.instIsAddHaarMeasure _ _
  unfold muRC
  refine integrable_one_add_norm (lt_of_le_of_lt ?_ h)
  exact_mod_cast finrank_RC k j ρ

theorem weight_integrability_holds : WeightIntegrable := by
  intro k p s ρ σ a hs ha
  set r := p + s + ρ
  set n := 2 * (p + s + ρ) + k + 1
  have hrn : ∀ D : ℕ, D ≤ 2 * r * n → (D : ℝ) < a := fun D hD =>
    lt_of_le_of_lt (by
      have : ((D : ℕ) : ℝ) ≤ ((2 * r * n : ℕ) : ℝ) := by exact_mod_cast hD
      simpa [r, n] using this) ha
  have iR := intRC k (p + s) ρ a (hrn _ (by simp only [r, n]; nlinarith))
  have iH := intH p s σ a (hrn _ (by simp only [r, n]; nlinarith)) (hrn _ (by simp only [r, n]; nlinarith))
    (hrn _ (by simp only [r, n]; nlinarith))
  have h := (iR.mul_prod iR).mul_prod iH
  refine h.congr (ae_of_all _ fun ξ => ?_)
  simp only [wt]
  rw [rpow3 (by positivity) (by positivity) (by unfold wtH; positivity)]

theorem intTop : IntTop := by
  intro p s σ a ha
  have hq : ∀ D : ℕ, D ≤ 2 * (p + s) ^ 2 → (D : ℝ) < a := fun D hD =>
    lt_of_le_of_lt (by
      have : ((D : ℕ) : ℝ) ≤ ((2 * (p + s) ^ 2 : ℕ) : ℝ) := by exact_mod_cast hD
      simpa using this) ha
  exact intH p s σ a (hq _ (by nlinarith [Nat.zero_le (p * s), Nat.zero_le (s * s), Nat.zero_le (p * p)])) (hq _ (by nlinarith [Nat.zero_le (p * s), Nat.zero_le (s * s), Nat.zero_le (p * p)]))
    (hq _ (by nlinarith [Nat.zero_le (p * s), Nat.zero_le (s * s), Nat.zero_le (p * p)]))

theorem coordinate_sizes_of_hypotheses (hSM : SliceMem) (hU1 : BigCellCoordinateSizes) (hU2 : BlockHeadSizes) (hZh : ZhSlice) : SliceCoordinateSizes :=
  coordinate_sizes_of_parts_holds hSM hU1 hU2 hZh detZj

end Formalism.FourierDecayAlt.P.Ux6


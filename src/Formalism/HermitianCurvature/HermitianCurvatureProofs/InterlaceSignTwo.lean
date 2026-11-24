module

import Formalism.HermitianCurvature.HermitianCurvatureProofs.EulerZetaGammaInvIdentity
public import Formalism.HermitianCurvature.StatementM
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
public import Mathlib.Algebra.Polynomial.RingDivision
public import Mathlib.Basic.Complex.BigOperators
public import Mathlib.RingTheory.Coprime.Lemmas

@[expose] public section

open Formalism.FourierDecayAlt.M Formalism.FourierDecayAlt Finset

namespace Formalism.FourierDecayAlt.P.Mx3

theorem tyComplete : TyComplete := by
  intro P hP
  constructor
  · intro ρ hI hint
    have key : ∀ i ∈ Icc 1 (P.k - 1), 0 ≤ ρ i - P.lo i ∧ ρ i - P.lo i ≤ P.hi i - P.lo i ∧
        ((⌊ρ i - P.lo i⌋₊ : ℕ) : ℝ) = ρ i - P.lo i := by
      intro i hi
      have b := hI i hi
      have c1 : P.lo i ≤ ρ i := by
        unfold Par.lo
        have : max (P.u (i + 1)) (P.u' (i + 1)) ≤ ρ i - 1 / 2 := max_le (by linarith [b.2.2.1]) (by linarith [b.2.2.2])
        linarith
      have c2 : ρ i ≤ P.hi i := by
        unfold Par.hi
        have := le_min (a := P.u i) (b := P.u' i) (c := ρ i + 1 / 2) b.1 b.2.1
        linarith
      obtain ⟨a, ha⟩ := Mx4.lo_int P hP i hi
      obtain ⟨n, hn⟩ := hint i hi
      exact ⟨by linarith, by linarith, Mx4.floor_of_int _ (by linarith) (n - a) (by push_cast; linarith)⟩
    refine ⟨fun i => ⟨⌊ρ ((i : ℕ) + 1) - P.lo ((i : ℕ) + 1)⌋₊, ?_⟩, ?_⟩
    · have hi : (i : ℕ) + 1 ∈ Icc 1 (P.k - 1) := Finset.mem_Icc.2 ⟨by omega, by have := i.2; omega⟩
      exact Nat.lt_succ_of_le (Nat.floor_le_floor (key _ hi).2.1)
    · intro i hi
      have h := Finset.mem_Icc.1 hi
      rw [Mx4.rho_eq P _ i h]
      have e : i - 1 + 1 = i := by omega
      simp only [e]
      rw [(key i hi).2.2]; ring
  · intro π π' h
    funext i
    apply Fin.ext
    have hi : (i : ℕ) + 1 ∈ Icc 1 (P.k - 1) := Finset.mem_Icc.2 ⟨by omega, by have := i.2; omega⟩
    have h1 := h _ hi
    rw [Mx4.rho_eq P π _ (Finset.mem_Icc.1 hi), Mx4.rho_eq P π' _ (Finset.mem_Icc.1 hi)] at h1
    have h2 : (((π ⟨(i : ℕ) + 1 - 1, by have := i.2; omega⟩ : Fin _) : ℕ) : ℝ) = (((π' ⟨(i : ℕ) + 1 - 1, by have := i.2; omega⟩ : Fin _) : ℕ) : ℝ) := by
      linarith
    have h3 : ((π ⟨(i : ℕ) + 1 - 1, by have := i.2; omega⟩ : Fin _) : ℕ) = ((π' ⟨(i : ℕ) + 1 - 1, by have := i.2; omega⟩ : Fin _) : ℕ) := by
      exact_mod_cast h2
    rw [Mx4.val_congr P π _ i (Fin.ext (by simp)), Mx4.val_congr P π' _ i (Fin.ext (by simp))] at h3
    exact h3

theorem num_zero (P : Par) (hP : P.OK) (l : ℕ) (hl : l ∈ Icc 1 (P.k - 1)) (π : Ty P) (h : ¬ ∃ π', Up P l π π') :
    I.qpoly P.k P.T P.T' P.u P.u' (-rho P π l - 1) = 0 := by
  have hl' := Finset.mem_Icc.1 hl
  have ht := Mx4.top P hP l hl π h
  unfold I.qpoly
  have : ∏ i ∈ Icc 1 P.k, ((-rho P π l - 1 + 1 / 2 + P.u i) * (-rho P π l - 1 + 1 / 2 + P.u' i)) = 0 := by
    apply Finset.prod_eq_zero (i := l) (Finset.mem_Icc.2 ⟨hl'.1, by omega⟩)
    rw [ht]; unfold Par.hi
    rcases min_choice (P.u l) (P.u' l) with h | h <;> rw [h] <;> ring
  rw [this]; simp

theorem nrm_key (P : Par) (hP : P.OK) (l : ℕ) (hl : l ∈ Icc 1 (P.k - 1)) (π : Ty P) :
    Nrm P l π * ((∏ j ∈ (Icc 1 (P.k - 1)).erase l, (rho P π j - rho P π l)) *
      ∏ j ∈ (Icc 1 (P.k - 1)).erase l, (rho P π j - rho P π l - 1)) = -I.qpoly P.k P.T P.T' P.u P.u' (-rho P π l - 1) := by
  by_cases h : ∃ π', Up P l π π'
  · obtain ⟨π', hU⟩ := h
    have hp := Mx4.nrm_pos P hP l hl π π' hU
    have hD : ((∏ j ∈ (Icc 1 (P.k - 1)).erase l, (rho P π j - rho P π l)) *
      ∏ j ∈ (Icc 1 (P.k - 1)).erase l, (rho P π j - rho P π l - 1)) ≠ 0 := by
      intro h0
      unfold Nrm at hp
      rw [h0, div_zero] at hp
      exact lt_irrefl _ hp
    unfold Nrm
    exact div_mul_cancel₀ _ hD
  · rw [(Mx4.nrmFacts P hP l hl π).2.1 h, num_zero P hP l hl π h]; simp

theorem rho_inj (P : Par) (hP : P.OK) (π : Ty P) (i j : ℕ) (hi : i ∈ Icc 1 (P.k - 1)) (hj : j ∈ Icc 1 (P.k - 1))
    (hij : i < j) : rho P π j < rho P π i := by
  have hI := Mx4.tyInterlaces P hP π
  have o := (Mx4.ord P.k P.u P.u' (rho P π) hI i hi).2.2.2 j hj hij
  linarith [o.1, (hI i hi).2.2.1]

open Polynomial in
theorem wExact : WExact := by
  intro P hP π
  have hmonic : (coordinatePolynomial P π).Monic := by
    unfold coordinatePolynomial
    exact monic_prod_of_monic _ _ (fun i _ => monic_X_add_C _)
  have hdvd : coordinatePolynomial P π ∣ wNum P π := by
    unfold coordinatePolynomial
    apply Finset.prod_dvd_of_coprime
    · intro i hi j hj hij
      show IsCoprime (X + C ((rho P π i : ℂ) + 1)) (X + C ((rho P π j : ℂ) + 1))
      have e : ∀ a : ℂ, (X + C a : ℂ[X]) = X - C (-a) := by intro a; simp
      rw [e, e]
      apply isCoprime_X_sub_C_of_isUnit_sub
      apply IsUnit.mk0
      intro h0
      have h1 : (rho P π i : ℂ) = rho P π j := by linear_combination -h0
      have h2 : rho P π i = rho P π j := by exact_mod_cast h1
      rcases lt_or_gt_of_ne hij with h | h
      · exact absurd h2 (ne_of_gt (rho_inj P hP π i j hi hj h))
      · exact absurd h2 (ne_of_lt (rho_inj P hP π j i hj hi h))
    · intro l hl
      have e : (X + C ((rho P π l : ℂ) + 1) : ℂ[X]) = X - C (-((rho P π l : ℂ) + 1)) := by rw [C_neg, sub_neg_eq_add]
      rw [e, dvd_iff_isRoot, IsRoot.def]
      unfold wNum
      rw [eval_add, eval_finsetSum, Finset.sum_eq_single l]
      · have hk := nrm_key P hP l hl π
        have hk' := congrArg (fun x : ℝ => (x : ℂ)) hk
        simp only [Complex.ofReal_mul, Complex.ofReal_prod, Complex.ofReal_sub, Complex.ofReal_neg, Complex.ofReal_one] at hk'
        have hq : eval (-((rho P π l : ℂ) + 1)) (qP P) = ((I.qpoly P.k P.T P.T' P.u P.u' (-rho P π l - 1) : ℝ) : ℂ) := by
          unfold qP I.qpoly
          simp only [eval_mul, eval_C, eval_prod, eval_add, eval_X]
          push_cast
          congr 1
          refine Finset.prod_congr rfl ?_
          intro i _; ring
        rw [hq]
        simp only [eval_mul, eval_C, eval_prod, eval_add, eval_X]
        have e1 : ∏ j ∈ (Icc 1 (P.k - 1)).erase l, (-((rho P π l : ℂ) + 1) + (rho P π j : ℂ)) =
            ∏ j ∈ (Icc 1 (P.k - 1)).erase l, ((rho P π j : ℂ) - rho P π l - 1) :=
          Finset.prod_congr rfl (fun j _ => by ring)
        have e2 : ∏ j ∈ (Icc 1 (P.k - 1)).erase l, (-((rho P π l : ℂ) + 1) + ((rho P π j : ℂ) + 1)) =
            ∏ j ∈ (Icc 1 (P.k - 1)).erase l, ((rho P π j : ℂ) - rho P π l) :=
          Finset.prod_congr rfl (fun j _ => by ring)
        rw [e1, e2, mul_comm (∏ j ∈ (Icc 1 (P.k - 1)).erase l, ((rho P π j : ℂ) - rho P π l - 1)), hk']
        ring
      · intro m _ hml
        simp only [eval_mul, eval_C, eval_prod, eval_add, eval_X]
        have : ∏ j ∈ (Icc 1 (P.k - 1)).erase m, (-((rho P π l : ℂ) + 1) + ((rho P π j : ℂ) + 1)) = 0 :=
          Finset.prod_eq_zero (i := l) (Finset.mem_erase.2 ⟨fun h => hml h.symm, hl⟩) (by ring)
        rw [this]; simp
      · intro h; exact absurd hl h
  have hmod := (modByMonic_eq_zero_iff_dvd hmonic).2 hdvd
  have := modByMonic_add_div (wNum P π) (coordinatePolynomial P π)
  rw [hmod, zero_add] at this
  exact this.symm

theorem realPoints : RealPoints := by
  intro P π Y
  exact ⟨by simp [xC, I.xpoly], by simp [qC, I.qpoly]⟩

theorem interlaceSignTwo : InterlaceSignTwo := by
  intro k u u' ρ l Y h1 h2 hI hC e he
  have he2 : -2 ≤ e ∧ e ≤ 2 := by
    simp only [Finset.mem_insert, Finset.mem_singleton] at he
    rcases he with rfl | rfl <;> norm_num
  have hm := Mx4.mono k u u' ρ hI

  have hlow : ∀ i ∈ Icc 1 (l - 1), 0 < Y + e + ρ i := by
    intro i hi
    have hi' := Finset.mem_Icc.1 hi
    have b := hI i (Finset.mem_Icc.2 ⟨hi'.1, by omega⟩)
    have c := hm (l - (i + 1)) (i + 1) (by omega) (by omega)
    have e1 : i + 1 + (l - (i + 1)) = l := by omega
    rw [e1] at c
    rcases hC with hC | hC <;> linarith [b.2.2.1, b.2.2.2, c.1, c.2, hC.1, hC.2]
  have hhigh : ∀ i ∈ Icc l (k - 1), 0 < -(Y + e + ρ i) := by
    intro i hi
    have hi' := Finset.mem_Icc.1 hi
    have b := hI i (Finset.mem_Icc.2 ⟨by omega, hi'.2⟩)
    have c := hm (i - l) l h1 (by omega)
    have e1 : l + (i - l) = i := by omega
    rw [e1] at c
    rcases hC with hC | hC <;> linarith [b.1, b.2.1, c.1, c.2, hC.1, hC.2]
  have hsplit : Icc 1 (k - 1) = Icc 1 (l - 1) ∪ Icc l (k - 1) := by
    ext i; simp only [Finset.mem_Icc, Finset.mem_union]; omega
  have hdisj : Disjoint (Icc 1 (l - 1)) (Icc l (k - 1)) := by
    rw [Finset.disjoint_left]; intro i a b
    have := Finset.mem_Icc.1 a; have := Finset.mem_Icc.1 b; omega
  have hcard : (Icc l (k - 1)).card = k - l := by simp; omega
  unfold I.xpoly
  rw [hsplit, Finset.prod_union hdisj]
  have hneg : ∏ i ∈ Icc l (k - 1), (Y + e + ρ i) = (-1) ^ (k - l) * ∏ i ∈ Icc l (k - 1), (-(Y + e + ρ i)) := by
    rw [← hcard, ← Finset.prod_const, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl ?_
    intro i _; ring
  rw [hneg]
  have p1 := Finset.prod_pos hlow
  have p2 := Finset.prod_pos hhigh
  have sq : ((-1 : ℝ) ^ (k - l)) * (-1) ^ (k - l) = 1 := by rw [← mul_pow]; simp
  calc (0:ℝ) < (∏ i ∈ Icc 1 (l - 1), (Y + e + ρ i)) * ∏ i ∈ Icc l (k - 1), (-(Y + e + ρ i)) := mul_pos p1 p2
    _ = ((-1 : ℝ) ^ (k - l) * (-1) ^ (k - l)) * ((∏ i ∈ Icc 1 (l - 1), (Y + e + ρ i)) * ∏ i ∈ Icc l (k - 1), (-(Y + e + ρ i))) := by rw [sq, one_mul]
    _ = _ := by ring

end Formalism.FourierDecayAlt.P.Mx3

namespace Formalism.FourierDecayAlt.P

theorem types_interlace : Formalism.FourierDecayAlt.M.TyInterlaces := Mx4.tyInterlaces
theorem types_complete : Formalism.FourierDecayAlt.M.TyComplete := Mx3.tyComplete
theorem rho_raise : Formalism.FourierDecayAlt.M.RhoUp := Mx4.rhoUp
theorem realPoints_statement : Formalism.FourierDecayAlt.M.RealPoints := Mx3.realPoints
theorem weight_exact : Formalism.FourierDecayAlt.M.WExact := Mx3.wExact
theorem interlace_sign_two : Formalism.FourierDecayAlt.M.InterlaceSignTwo := Mx3.interlaceSignTwo

end Formalism.FourierDecayAlt.P

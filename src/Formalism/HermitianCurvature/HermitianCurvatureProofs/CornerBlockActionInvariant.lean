module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GaXiSplit
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellDiagonalMap
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateSizesOfHypotheses
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.EmbeddedGroupMeasurePreserving
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LinearFormRadicalRankOne
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SigmaFiniteOfHaar
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul
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

open Matrix

noncomputable section

namespace Formalism.FourierDecayAlt.P.LeftFubiniLemmas

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants

variable {k p ρ : ℕ}

theorem liftVec_eB (u : Fin (2 * ρ + k + 1) → ℂ) (x : U.Ix k p ρ) :
    liftVec k p ρ u (U.eB k p ρ x) = Sum.elim (Sum.elim (fun _ => 0) u) (fun _ => 0) x := by
  rcases x with (a | b) | c
  · have ha := a.isLt
    simp only [liftVec, Sum.elim_inl]
    rw [dite_eq_right]
    simp only [U.eB, Equiv.trans_apply, Equiv.sumCongr_apply, Sum.map_inl, finSumFinEquiv_apply_left,
      finCongr_apply, Fin.coe_cast, Fin.coe_castAdd]
    omega
  · have hb := b.isLt
    simp only [liftVec, Sum.elim_inl, Sum.elim_inr]
    rw [dite_eq_left]
    · congr 1
      ext
      simp only [U.eB, Equiv.trans_apply, Equiv.sumCongr_apply, Sum.map_inl, finSumFinEquiv_apply_left,
      finSumFinEquiv_apply_right, finCongr_apply, Fin.coe_cast, Fin.coe_castAdd, Fin.coe_natAdd]
      omega
    · simp only [U.eB, Equiv.trans_apply, Equiv.sumCongr_apply, Sum.map_inl, finSumFinEquiv_apply_left,
      finSumFinEquiv_apply_right, finCongr_apply, Fin.coe_cast, Fin.coe_castAdd, Fin.coe_natAdd]
      omega
  · have hc := c.isLt
    simp only [liftVec, Sum.elim_inr]
    rw [dite_eq_right]
    simp only [U.eB, Equiv.trans_apply, Equiv.sumCongr_apply, Sum.map_inr, finSumFinEquiv_apply_right, finCongr_apply, Equiv.refl_apply, Fin.coe_cast, Fin.coe_natAdd]
    omega

theorem inWb_liftVec {z : Fin (2 * ρ + k + 1) → ℂ} (hz : inWb k ρ z) : inWb k (p + ρ) (liftVec k p ρ z) := by
  intro i hi
  simp only [liftVec]
  split_ifs with h
  · exact hz _ (by show i.val - p < ρ ∨ ρ + k < i.val - p; omega)
  · rfl

theorem eI_X (a : Fin p) : eI k (p + ρ) (Fin.castAdd ρ a) = U.eB k p ρ (Sum.inl (Sum.inl a)) := by
  ext
  simp only [U.eB, Equiv.trans_apply, Equiv.sumCongr_apply, Sum.map_inl, finSumFinEquiv_apply_left,
      finCongr_apply, Fin.coe_cast, Fin.coe_castAdd, eI]

theorem eI_V (a : Fin ρ) : eI k (p + ρ) (Fin.natAdd p a) = U.eB k p ρ (Sum.inl (Sum.inr (eI k ρ a))) := by
  ext
  simp only [U.eB, Equiv.trans_apply, Equiv.sumCongr_apply, Sum.map_inl, finSumFinEquiv_apply_left,
      finSumFinEquiv_apply_right, finCongr_apply, Fin.coe_cast, Fin.coe_castAdd, Fin.coe_natAdd, eI]

theorem eI_V' (a : ℕ) (ha : a < ρ) (h : p + a < p + ρ) :
    eI k (p + ρ) ⟨p + a, h⟩ = U.eB k p ρ (Sum.inl (Sum.inr (eI k ρ ⟨a, ha⟩))) := by
  ext
  simp only [U.eB, Equiv.trans_apply, Equiv.sumCongr_apply, Sum.map_inl, finSumFinEquiv_apply_left,
      finSumFinEquiv_apply_right, finCongr_apply, Fin.coe_cast, Fin.coe_castAdd, Fin.coe_natAdd, eI]

theorem eI_X' (a : ℕ) (ha : a < p) (h : a < p + ρ) :
    eI k (p + ρ) ⟨a, h⟩ = U.eB k p ρ (Sum.inl (Sum.inl ⟨a, ha⟩)) := by
  ext
  simp only [U.eB, Equiv.trans_apply, Equiv.sumCongr_apply, Sum.map_inl, finSumFinEquiv_apply_left,
      finCongr_apply, Fin.coe_cast, Fin.coe_castAdd, eI]

private theorem embG_eB_inl_inl_apply_eq_ite (y : B.Mat k ρ) (a : Fin p) (x : U.Ix k p ρ) :
    U.embG k p ρ y (U.eB k p ρ (Sum.inl (Sum.inl a))) (U.eB k p ρ x) = if x = Sum.inl (Sum.inl a) then 1 else 0 := by
  rcases x with (a' | b') | c' <;> simp [U.embG, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply, Matrix.one_apply] <;> (try split_ifs) <;> simp_all

private theorem embG_mulVec_liftVec_eB_apply (y : B.Mat k ρ) (z : Fin (2 * ρ + k + 1) → ℂ) (x : U.Ix k p ρ) :
    (U.embG k p ρ y *ᵥ liftVec k p ρ z) (U.eB k p ρ x) =
      Sum.elim (Sum.elim (fun _ => 0) (y *ᵥ z)) (fun _ => 0) x := by
  simp only [Matrix.mulVec, dotProduct]
  rw [← Equiv.sum_comp (U.eB k p ρ)]
  simp only [U.embG, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply, liftVec_eB]
  rcases x with (a | b) | c <;> simp [Fintype.sum_sum_type, Matrix.mulVec, dotProduct, Matrix.one_apply]

theorem ell_embG (z : Fin (2 * ρ + k + 1) → ℂ) (y : B.Mat k ρ) :
    ell k (p + ρ) (liftVec k p ρ z) (U.embG k p ρ y) = ell k ρ z y := by
  simp only [Formalism.QuantumDeterminants.ell]
  rw [Fin.sum_univ_add, Finset.sum_eq_zero, zero_add]
  · apply Finset.sum_congr rfl
    intro b _
    have hb := b.isLt
    have hV : eI k (p + ρ) (Fin.natAdd p b) = U.eB k p ρ (Sum.inl (Sum.inr (eI k ρ b))) := eI_V b
    by_cases h : b.val + 1 < ρ
    · have h' : (Fin.natAdd p b).val + 1 < p + ρ := by simp; omega
      have hV' : eI k (p + ρ) ⟨(Fin.natAdd p b).val + 1, h'⟩ =
          U.eB k p ρ (Sum.inl (Sum.inr (eI k ρ ⟨b.val + 1, h⟩))) := eI_V' (b.val + 1) h (by simp; omega)
      rw [dite_eq_left h', dite_eq_left h, hV, hV']
      simp [U.embG, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]
    · have h' : ¬ (Fin.natAdd p b).val + 1 < p + ρ := by simp; omega
      rw [dite_eq_right h', dite_eq_right h, hV, embG_mulVec_liftVec_eB_apply]
      rfl
  · intro a _
    have ha := a.isLt
    rw [eI_X a]
    split_ifs with h
    · obtain ⟨x, hx⟩ := (U.eB k p ρ).surjective (eI k (p + ρ) ⟨(Fin.castAdd ρ a).val + 1, h⟩)
      rw [← hx, embG_eB_inl_inl_apply_eq_ite, if_neg]
      rintro rfl
      have := congrArg Fin.val hx
      simp [U.eB, eI] at this
    · rw [embG_mulVec_liftVec_eB_apply]
      rfl

private theorem muP_mulVec_liftVec_eB_apply (q : Matrix (Fin p) (Fin p) ℂ) (z : Fin (2 * ρ + k + 1) → ℂ) (x : U.Ix k p ρ) :
    (U.muP k p ρ q *ᵥ liftVec k p ρ z) (U.eB k p ρ x) = Sum.elim (Sum.elim (fun _ => 0) z) (fun _ => 0) x := by
  simp only [Matrix.mulVec, dotProduct]
  rw [← Equiv.sum_comp (U.eB k p ρ)]
  simp only [U.muP, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply, liftVec_eB]
  rcases x with (a | b) | c <;> simp [Fintype.sum_sum_type, Matrix.one_apply]

theorem ell_muP (z : Fin (2 * ρ + k + 1) → ℂ) (hz : inWb k ρ z) (q : Matrix (Fin p) (Fin p) ℂ) :
    ell k (p + ρ) (liftVec k p ρ z) (U.muP k p ρ q) = U.supS q := by
  simp only [Formalism.QuantumDeterminants.ell, U.supS]
  rw [Fin.sum_univ_add]
  refine (congrArg₂ HAdd.hAdd ?_ (Finset.sum_eq_zero fun b _ => ?_)).trans (add_zero _)
  · apply Finset.sum_congr rfl
    intro a _
    have ha := a.isLt
    rw [eI_X a]
    by_cases h : a.val + 1 < p
    · have h' : (Fin.castAdd ρ a).val + 1 < p + ρ := by simp; omega
      have hX' : eI k (p + ρ) ⟨(Fin.castAdd ρ a).val + 1, h'⟩ =
          U.eB k p ρ (Sum.inl (Sum.inl ⟨a.val + 1, h⟩)) := eI_X' (a.val + 1) h h'
      rw [dite_eq_left h', dite_eq_left h, hX']
      simp [U.muP, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]
    · rw [dite_eq_right h]
      split_ifs with h'
      · have hρ : 0 < ρ := by simp at h'; omega
        have hV' : eI k (p + ρ) ⟨(Fin.castAdd ρ a).val + 1, h'⟩ =
            U.eB k p ρ (Sum.inl (Sum.inr (eI k ρ ⟨0, hρ⟩))) := by
          ext
          simp [U.eB, eI] <;> omega
        rw [hV']
        simp [U.muP, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]
      · rw [muP_mulVec_liftVec_eB_apply]
        rfl
  · have hb := b.isLt
    rw [eI_V b]
    split_ifs with h'
    · have h : b.val + 1 < ρ := by simp at h'; omega
      have hV' : eI k (p + ρ) ⟨(Fin.natAdd p b).val + 1, h'⟩ =
          U.eB k p ρ (Sum.inl (Sum.inr (eI k ρ ⟨b.val + 1, h⟩))) := eI_V' (b.val + 1) h (by simp; omega)
      have hne : eI k ρ b ≠ eI k ρ ⟨b.val + 1, h⟩ := by
        intro e
        have := congrArg Fin.val e
        simp [eI] at this
      rw [hV']
      simp [U.muP, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply, hne]
    · rw [muP_mulVec_liftVec_eB_apply]
      exact hz _ (Or.inl (by simp [eI]))

theorem psi_measure_preserving : PsiMuP := by
  intro k p ρ z' u hz
  simp only [Formalism.QuantumDeterminants.psi, G.psi, U.betaU, ell_muP z' hz]
  show (starRingEnd ℂ) (Complex.exp _) = _
  rw [← Complex.exp_conj]
  congr 1
  simp [neg_mul]
  ring

theorem upper_isUpUni (u : G.UT p → ℂ) : Formalism.DoubleCosetMeasures.IsUpUni (G.upper u) := by
  refine ⟨fun i j hij => ?_, fun a => ?_⟩
  · have h1 : i ≠ j := ne_of_gt hij
    have h2 : ¬ i < j := not_lt.mpr (le_of_lt hij)
    simp [G.upper, G.strictUpper, h1, h2]
  · simp [G.upper, G.strictUpper]

theorem psi_right_equivariant : PsiRight := by
  intro k p ρ z' ν' u x hz hν
  have hz0 := inWb_liftVec (p := p) hz
  have hcl := Formalism.FourierDecayAlt.P.unipotent_radical_closed k (p + ρ)
  have h1 := embG_nset (p := p) hν
  have h2 := Formalism.FourierDecayAlt.P.BigCellDiagonalMap.leviElement_nset (k := k) (ρ := ρ) _ (upper_isUpUni u)
  rw [Formalism.FourierDecayAlt.P.PBG.psi_mul_nset _ hz0 _ (hcl.mul_mem _ h1 _ h2) (_root_.Formalism.FourierDecayAlt.P.Ux3.rn_nset x),
    Formalism.FourierDecayAlt.P.PBG.psi_mul_nset _ hz0 _ h1 h2, _root_.Formalism.FourierDecayAlt.P.PBH.psi_eq_of_ell _ z' _ ν' (ell_embG z' ν')]

theorem corner_block_action_invariant (y : B.Mat k ρ) (x : U.RC k p ρ) (v : Fin (2 * ρ + k + 1) → ℂ) (hy : yᴴ * Hpk k ρ * y = Hpk k ρ)
    (hv : y *ᵥ v = v) :
    (-(G.wMat p * (Matrix.of (rcAct y x).1)ᴴ * Hpk k ρ)) *ᵥ v = (-(G.wMat p * (Matrix.of x.1)ᴴ * Hpk k ρ)) *ᵥ v := by
  have h1 : Matrix.of (rcAct y x).1 = y * Matrix.of x.1 := rfl
  have hv' : yᴴ *ᵥ (Hpk k ρ *ᵥ v) = Hpk k ρ *ᵥ v := by
    calc yᴴ *ᵥ (Hpk k ρ *ᵥ v) = yᴴ *ᵥ (Hpk k ρ *ᵥ (y *ᵥ v)) := by rw [hv]
      _ = (yᴴ * Hpk k ρ * y) *ᵥ v := by simp only [Matrix.mulVec_mulVec, Matrix.mul_assoc]
      _ = Hpk k ρ *ᵥ v := by rw [hy]
  have h2 : (G.wMat p * (Matrix.of x.1)ᴴ * yᴴ * Hpk k ρ) *ᵥ v = (G.wMat p * (Matrix.of x.1)ᴴ * Hpk k ρ) *ᵥ v := by
    simp only [← Matrix.mulVec_mulVec, hv']
  rw [h1, Matrix.conjTranspose_mul, Matrix.neg_mulVec, Matrix.neg_mulVec, ← Matrix.mul_assoc, h2]

theorem psi_right_action_comm : PsiRnAct := by
  intro k p ρ z' h' x hz hh
  have hz0 := inWb_liftVec (p := p) hz
  apply _root_.Formalism.FourierDecayAlt.P.PBH.psi_eq_of_ell
  rw [Ux3.rn_eq, Ux3.rn_eq, Formalism.FourierDecayAlt.P.PBH.ell_uni _ hz0, Formalism.FourierDecayAlt.P.PBH.ell_uni _ hz0]
  by_cases hp : 0 < p
  · rw [dite_eq_left hp, dite_eq_left hp]
    by_cases hρ : 0 < ρ
    · rw [dite_eq_left hρ, dite_eq_left hρ]
      have e := congrFun (corner_block_action_invariant h' x (bvec (eI k ρ ⟨0, hρ⟩)) hh.1 (hh.2.1 ⟨0, hρ⟩).1) ⟨p - 1, by omega⟩
      have e2 : ∀ M : Matrix (Fin p) (Fin (2 * ρ + k + 1)) ℂ,
          M ⟨p - 1, by omega⟩ ⟨0, by omega⟩ = (M *ᵥ bvec (eI k ρ ⟨0, hρ⟩)) ⟨p - 1, by omega⟩ := by
        intro M; simp only [bvec, Matrix.mulVec_single_one]; rfl
      exact (e2 _).trans (e.trans (e2 _).symm)
    · rw [dite_eq_right hρ, dite_eq_right hρ]
      have hlow : U.lowV k p ρ (liftVec k p ρ z') = z' := by
        funext q; simp only [U.lowV, liftVec]; rw [dite_eq_left (by omega)]; congr 1; ext; simp
      rw [hlow]
      exact congrFun (corner_block_action_invariant h' x z' hh.1 hh.2.2) _
  · rw [dite_eq_right hp, dite_eq_right hp]

end Formalism.FourierDecayAlt.P.LeftFubiniLemmas

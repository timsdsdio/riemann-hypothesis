module

import Formalism.HermitianCurvature.HermitianCurvatureProofs.EulerZetaGammaInvIdentity
public import Formalism.HermitianCurvature.StatementM
public import Mathlib.Algebra.Order.Group.PiLex
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.CStarAlgebra.Classes
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
import Mathlib.RingTheory.PiTensorProduct
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open Formalism.FourierDecayAlt.M Formalism.FourierDecayAlt Finset

namespace Formalism.FourierDecayAlt.P.Mx2

variable {r : ℕ}

theorem multiplierPair_one : (fnP 1 1 : Pr r) = 1 := by
  have : mulOp (1 : Fn r) = 1 := by ext h : 1; simp [mulOp]
  refine Prod.ext ?_ ?_
  · exact this
  · exact congrArg MulOpposite.op this
noncomputable def nabE (a TT : ℝ) : Pr r := dzP + (a : ℂ) • (zbP * ggiP TT)
noncomputable def nabsE (a TT : ℝ) : Pr r := -dzbP + (a : ℂ) • (zP * ggiP TT)

theorem nabE_fn (a TT : ℝ) (f fb : Fn r) :
    nabE a TT * fnP f fb = fnP f fb * nabE a TT + fnP ((coord vz)⁻¹ * euler vz f) ((coord vzb)⁻¹ * euler vzb fb) := by
  unfold nabE
  rw [zbP, ggiP, Mx4.multiplierPair_mul, Mx4.smul_fnP, add_mul, mul_add, Mx4.multiplierPair_comm, dzP, Mx4.der_fn]
  abel

theorem nabsE_fn (a TT : ℝ) (f fb : Fn r) :
    nabsE a TT * fnP f fb = fnP f fb * nabsE a TT - fnP ((coord vzb)⁻¹ * euler vzb f) ((coord vz)⁻¹ * euler vz fb) := by
  unfold nabsE
  rw [zP, ggiP, Mx4.multiplierPair_mul, Mx4.smul_fnP, add_mul, mul_add, Mx4.multiplierPair_comm, dzbP, neg_mul, Mx4.der_fn, mul_neg]
  abel

theorem nabla_zeta_comm (a TT : ℝ) : nabE a TT * (zP : Pr r) = zP * nabE a TT + 1 := by
  rw [zP, nabE_fn, (Mx4.eulerCoord r vz vz 0).1, (Mx4.eulerCoord r vzb vzb 0).1, if_pos rfl, if_pos rfl,
    inv_mul_cancel₀ (Mx4.coord_ne r _), inv_mul_cancel₀ (Mx4.coord_ne r _), multiplierPair_one]
theorem nab_zi (a TT : ℝ) : nabE a TT * (ziP : Pr r) = ziP * nabE a TT - ziP * ziP := by
  rw [ziP, nabE_fn, Mx4.euler_inv _ _ (Mx4.coord_ne r _), Mx4.euler_inv _ _ (Mx4.coord_ne r _), (Mx4.eulerCoord r vz vz 0).1,
    (Mx4.eulerCoord r vzb vzb 0).1, if_pos rfl, if_pos rfl, Mx4.multiplierPair_mul, sub_eq_add_neg, Mx4.multiplierPair_neg]
  congr 2 <;> field_simp [Mx4.coord_ne r vz, Mx4.coord_ne r vzb]
theorem nab_zb (a TT : ℝ) : nabE a TT * (zbP : Pr r) = zbP * nabE a TT := by
  rw [zbP, nabE_fn, (Mx4.eulerCoord r vz vzb 0).1, (Mx4.eulerCoord r vzb vz 0).1, if_neg Mx4.vz_ne, if_neg Mx4.vz_ne.symm]
  simp only [mul_zero]
  have h0 : mulOp (0 : Fn r) = 0 := by ext h : 1; simp [mulOp]
  have : (fnP 0 0 : Pr r) = 0 := by
    refine Prod.ext h0 ?_
    show MulOpposite.op (mulOp (0 : Fn r)) = 0
    rw [h0]; rfl
  rw [this, add_zero]
theorem nab_gg (a TT : ℝ) : nabE a TT * (ggP TT : Pr r) = ggP TT * nabE a TT + zbP := by
  rw [ggP, nabE_fn, Mx4.euler_GG_z, Mx4.euler_gg_zb, zbP]
  congr 2 <;> field_simp [Mx4.coord_ne r vz, Mx4.coord_ne r vzb]
theorem nab_ggi (a TT : ℝ) : nabE a TT * (ggiP TT : Pr r) = ggiP TT * nabE a TT - zbP * ggiP TT * ggiP TT := by
  rw [ggiP, nabE_fn, Mx4.euler_inv _ _ (Mx4.gg_ne TT), Mx4.euler_inv _ _ (Mx4.gg_ne TT), Mx4.euler_GG_z, Mx4.euler_gg_zb, zbP, Mx4.multiplierPair_mul, Mx4.multiplierPair_mul,
    sub_eq_add_neg, Mx4.multiplierPair_neg]
  congr 2 <;> field_simp [Mx4.coord_ne r vz, Mx4.coord_ne r vzb]
theorem nabs_zb (a TT : ℝ) : nabsE a TT * (zbP : Pr r) = zbP * nabsE a TT - 1 := by
  rw [zbP, nabsE_fn, (Mx4.eulerCoord r vz vz 0).1, (Mx4.eulerCoord r vzb vzb 0).1, if_pos rfl, if_pos rfl,
    inv_mul_cancel₀ (Mx4.coord_ne r _), inv_mul_cancel₀ (Mx4.coord_ne r _), multiplierPair_one]
theorem nabs_gg (a TT : ℝ) : nabsE a TT * (ggP TT : Pr r) = ggP TT * nabsE a TT - zP := by
  rw [ggP, nabsE_fn, Mx4.euler_GG_z, Mx4.euler_gg_zb, zP]
  congr 2 <;> field_simp [Mx4.coord_ne r vzb, Mx4.coord_ne r vz]
theorem nabs_ggi (a TT : ℝ) : nabsE a TT * (ggiP TT : Pr r) = ggiP TT * nabsE a TT + zP * ggiP TT * ggiP TT := by
  rw [ggiP, nabsE_fn, Mx4.euler_inv _ _ (Mx4.gg_ne TT), Mx4.euler_inv _ _ (Mx4.gg_ne TT), Mx4.euler_GG_z, Mx4.euler_gg_zb, zP, Mx4.multiplierPair_mul, Mx4.multiplierPair_mul,
    sub_eq_add_neg, Mx4.multiplierPair_neg]
  congr 2 <;> field_simp [Mx4.coord_ne r vzb, Mx4.coord_ne r vz]

theorem partialDeriv_def (l : Fin r) : (pP l : Pr r) = mk (mulOp 1 * euler (vc l)) (-(mulOp 1 * euler (vcb l))) := by
  have : mulOp (1 : Fn r) = 1 := by ext h : 1; simp [mulOp]
  rw [this, one_mul, one_mul]; rfl
theorem p_c (l : Fin r) : pP l * cP l = cP l * pP l + cP l := by
  rw [partialDeriv_def, cP, Mx4.der_fn, (Mx4.eulerCoord r _ _ 0).1, (Mx4.eulerCoord r _ _ 0).1, if_pos rfl, if_pos rfl, one_mul, one_mul]
theorem p_ci (l : Fin r) : pP l * ciP l = ciP l * pP l - ciP l := by
  rw [partialDeriv_def, ciP, Mx4.der_fn, Mx4.euler_inv _ _ (Mx4.coord_ne r _), Mx4.euler_inv _ _ (Mx4.coord_ne r _), (Mx4.eulerCoord r _ _ 0).1,
    (Mx4.eulerCoord r _ _ 0).1, if_pos rfl, if_pos rfl, one_mul, one_mul, sub_eq_add_neg, Mx4.multiplierPair_neg]
  congr 2 <;> field_simp [Mx4.coord_ne r (vc l), Mx4.coord_ne r (vcb l)]

theorem vc_inj (l m : Fin r) : (vc l : Var r) = vc m ↔ l = m := by
  constructor
  · intro h; have := congrArg (fun p : Var r => (ofLex p).1) h; simpa [vc] using this
  · rintro rfl; rfl
theorem vcb_inj (l m : Fin r) : (vcb l : Var r) = vcb m ↔ l = m := by
  constructor
  · intro h; have := congrArg (fun p : Var r => (ofLex p).1) h; simpa [vcb] using this
  · rintro rfl; rfl
theorem vc_vcb (l m : Fin r) : (vc l : Var r) ≠ vcb m := by
  intro h; have := congrArg (fun p : Var r => (ofLex p).2) h; simp [vc, vcb] at this
theorem vc_vz (l : Fin r) : (vc l : Var r) ≠ vz := by
  intro h; have := congrArg (fun p : Var r => (ofLex p).1) h
  exact (Fin.castSucc_lt_last l).ne this
theorem vc_vzb (l : Fin r) : (vc l : Var r) ≠ vzb := by
  intro h; have := congrArg (fun p : Var r => (ofLex p).1) h
  exact (Fin.castSucc_lt_last l).ne this
theorem vcb_vz (l : Fin r) : (vcb l : Var r) ≠ vz := by
  intro h; have := congrArg (fun p : Var r => (ofLex p).1) h
  exact (Fin.castSucc_lt_last l).ne this
theorem vcb_vzb (l : Fin r) : (vcb l : Var r) ≠ vzb := by
  intro h; have := congrArg (fun p : Var r => (ofLex p).1) h
  exact (Fin.castSucc_lt_last l).ne this

theorem euler_gamma_vanish (v : Var r) (h1 : v ≠ vz) (h2 : v ≠ vzb) (TT : ℝ) : euler v (gg TT : Fn r) = 0 := by
  unfold gg
  rw [map_sub, Mx4.eulerLeibniz, Mx4.ec, Mx4.ec, (Mx4.eulerCoord r v v _).2, if_neg h1, if_neg h2]; simp
theorem euler_gamma_inv_vanish (v : Var r) (h1 : v ≠ vz) (h2 : v ≠ vzb) (TT : ℝ) : euler v (gg TT : Fn r)⁻¹ = 0 := by
  rw [Mx4.euler_inv _ _ (Mx4.gg_ne TT), euler_gamma_vanish v h1 h2]; simp

def ZF (f : Fn r) : Prop := ∀ l : Fin r, euler (vc l) f = 0 ∧ euler (vcb l) f = 0

def CF (f : Fn r) : Prop := euler vz f = 0 ∧ euler vzb f = 0

theorem zeta_free_of_variable : ZF (coord vz : Fn r) := fun l => ⟨by rw [Mx4.ec, if_neg (vc_vz l)], by rw [Mx4.ec, if_neg (vcb_vz l)]⟩
theorem zf_zb : ZF (coord vzb : Fn r) := fun l => ⟨by rw [Mx4.ec, if_neg (vc_vzb l)], by rw [Mx4.ec, if_neg (vcb_vzb l)]⟩
theorem zf_zi : ZF ((coord vz)⁻¹ : Fn r) := fun l => ⟨by rw [Mx4.eci, if_neg (vc_vz l)], by rw [Mx4.eci, if_neg (vcb_vz l)]⟩
theorem zf_zbi : ZF ((coord vzb)⁻¹ : Fn r) := fun l => ⟨by rw [Mx4.eci, if_neg (vc_vzb l)], by rw [Mx4.eci, if_neg (vcb_vzb l)]⟩
theorem zf_gg (TT : ℝ) : ZF (gg TT : Fn r) := fun l =>
  ⟨euler_gamma_vanish _ (vc_vz l) (vc_vzb l) TT, euler_gamma_vanish _ (vcb_vz l) (vcb_vzb l) TT⟩
theorem zf_ggi (TT : ℝ) : ZF ((gg TT)⁻¹ : Fn r) := fun l =>
  ⟨euler_gamma_inv_vanish _ (vc_vz l) (vc_vzb l) TT, euler_gamma_inv_vanish _ (vcb_vz l) (vcb_vzb l) TT⟩
theorem zf_mul {f g : Fn r} (hf : ZF f) (hg : ZF g) : ZF (f * g) := fun l =>
  ⟨by rw [Mx4.eulerLeibniz, (hf l).1, (hg l).1]; simp, by rw [Mx4.eulerLeibniz, (hf l).2, (hg l).2]; simp⟩
theorem zf_smul {f : Fn r} (z : ℂ) (hf : ZF f) : ZF (z • f) := fun l =>
  ⟨by rw [map_smul, (hf l).1, smul_zero], by rw [map_smul, (hf l).2, smul_zero]⟩

theorem cf_c (m : Fin r) : CF (coord (vc m) : Fn r) := ⟨by rw [Mx4.ec, if_neg (vc_vz m).symm], by rw [Mx4.ec, if_neg (vc_vzb m).symm]⟩
theorem cf_cb (m : Fin r) : CF (coord (vcb m) : Fn r) := ⟨by rw [Mx4.ec, if_neg (vcb_vz m).symm], by rw [Mx4.ec, if_neg (vcb_vzb m).symm]⟩
theorem cf_ci (m : Fin r) : CF ((coord (vc m))⁻¹ : Fn r) := ⟨by rw [Mx4.eci, if_neg (vc_vz m).symm], by rw [Mx4.eci, if_neg (vc_vzb m).symm]⟩
theorem cf_cbi (m : Fin r) : CF ((coord (vcb m))⁻¹ : Fn r) := ⟨by rw [Mx4.eci, if_neg (vcb_vz m).symm], by rw [Mx4.eci, if_neg (vcb_vzb m).symm]⟩

theorem partialDerivBar_def (l : Fin r) : (pbP l : Pr r) = mk (mulOp 1 * euler (vcb l)) (-(mulOp 1 * euler (vc l))) := by
  have : mulOp (1 : Fn r) = 1 := by ext h : 1; simp [mulOp]
  rw [this, one_mul, one_mul]; rfl

theorem partialDeriv_mul_fn (l : Fin r) (f fb : Fn r) : pP l * fnP f fb = fnP f fb * pP l + fnP (euler (vc l) f) (euler (vcb l) fb) := by
  rw [partialDeriv_def, Mx4.der_fn, one_mul, one_mul]
theorem partialDerivBar_mul_fn (l : Fin r) (f fb : Fn r) : pbP l * fnP f fb = fnP f fb * pbP l + fnP (euler (vcb l) f) (euler (vc l) fb) := by
  rw [partialDerivBar_def, Mx4.der_fn, one_mul, one_mul]

theorem partialDeriv_commute_nab (l : Fin r) (a TT : ℝ) : pP l * nabE a TT = nabE a TT * pP l := by
  unfold nabE
  rw [zbP, ggiP, Mx4.multiplierPair_mul, Mx4.smul_fnP, mul_add, add_mul, partialDeriv_mul_fn,
    ((zf_smul _ (zf_mul zf_zb (zf_ggi TT))) l).1, ((zf_smul _ (zf_mul zeta_free_of_variable (zf_ggi TT))) l).2, Mx4.multiplierPair_zero, add_zero]
  congr 1
  exact Mx4.mk_comm _ _ _ _ (Mx4.comm_eu _ _ _ (zf_zi l).1) (by rw [neg_mul_neg, neg_mul_neg]; exact Mx4.comm_eu _ _ _ (zf_zbi l).2)
theorem partialDerivBar_commute_nab (l : Fin r) (a TT : ℝ) : pbP l * nabE a TT = nabE a TT * pbP l := by
  unfold nabE
  rw [zbP, ggiP, Mx4.multiplierPair_mul, Mx4.smul_fnP, mul_add, add_mul, partialDerivBar_mul_fn,
    ((zf_smul _ (zf_mul zf_zb (zf_ggi TT))) l).2, ((zf_smul _ (zf_mul zeta_free_of_variable (zf_ggi TT))) l).1, Mx4.multiplierPair_zero, add_zero]
  congr 1
  exact Mx4.mk_comm _ _ _ _ (Mx4.comm_eu _ _ _ (zf_zi l).2) (by rw [neg_mul_neg, neg_mul_neg]; exact Mx4.comm_eu _ _ _ (zf_zbi l).1)
theorem partialDeriv_commute_nabs (l : Fin r) (a TT : ℝ) : pP l * nabsE a TT = nabsE a TT * pP l := by
  unfold nabsE
  rw [zP, ggiP, Mx4.multiplierPair_mul, Mx4.smul_fnP, mul_add, add_mul, partialDeriv_mul_fn,
    ((zf_smul _ (zf_mul zeta_free_of_variable (zf_ggi TT))) l).1, ((zf_smul _ (zf_mul zf_zb (zf_ggi TT))) l).2, Mx4.multiplierPair_zero, add_zero,
    mul_neg, neg_mul]
  congr 2
  exact Mx4.mk_comm _ _ _ _ (Mx4.comm_eu _ _ _ (zf_zbi l).1) (by rw [neg_mul_neg, neg_mul_neg]; exact Mx4.comm_eu _ _ _ (zf_zi l).2)
theorem partialDerivBar_commute_nabs (l : Fin r) (a TT : ℝ) : pbP l * nabsE a TT = nabsE a TT * pbP l := by
  unfold nabsE
  rw [zP, ggiP, Mx4.multiplierPair_mul, Mx4.smul_fnP, mul_add, add_mul, partialDerivBar_mul_fn,
    ((zf_smul _ (zf_mul zeta_free_of_variable (zf_ggi TT))) l).2, ((zf_smul _ (zf_mul zf_zb (zf_ggi TT))) l).1, Mx4.multiplierPair_zero, add_zero,
    mul_neg, neg_mul]
  congr 2
  exact Mx4.mk_comm _ _ _ _ (Mx4.comm_eu _ _ _ (zf_zbi l).2) (by rw [neg_mul_neg, neg_mul_neg]; exact Mx4.comm_eu _ _ _ (zf_zi l).1)

theorem nabs_zbi (a TT : ℝ) : nabsE a TT * (zbiP : Pr r) = zbiP * nabsE a TT + zbiP * zbiP := by
  rw [zbiP, nabsE_fn, Mx4.eci, Mx4.eci, if_pos rfl, if_pos rfl, Mx4.multiplierPair_mul, sub_eq_add_neg, Mx4.multiplierPair_neg]
  congr 2 <;> ring
theorem nab_cf (a TT : ℝ) (f fb : Fn r) (h1 : euler vz f = 0) (h2 : euler vzb fb = 0) :
    nabE a TT * fnP f fb = fnP f fb * nabE a TT := by
  rw [nabE_fn, h1, h2, mul_zero, mul_zero, Mx4.multiplierPair_zero, add_zero]
theorem nabs_cf (a TT : ℝ) (f fb : Fn r) (h1 : euler vzb f = 0) (h2 : euler vz fb = 0) :
    nabsE a TT * fnP f fb = fnP f fb * nabsE a TT := by
  rw [nabsE_fn, h1, h2, mul_zero, mul_zero, Mx4.multiplierPair_zero, sub_zero]

theorem levNab : LevNab := by
  intro P
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · (simp only [zA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.add_apply, Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false, add_zero]); exact nabla_zeta_comm _ _
  · (simp only [ziA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.sub_apply, Matrix.diagonal_apply, hij, if_true, if_false, sub_zero]); exact nab_zi _ _
  · (simp only [zbA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nab_zb _ _
  · (simp only [zbiA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nab_cf _ _ _ _ (by rw [Mx4.eci, if_neg Mx4.vz_ne]) (by rw [Mx4.eci, if_neg Mx4.vz_ne.symm])
  · (simp only [zbA, ggA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.add_apply, Matrix.diagonal_apply, hij, if_true, if_false, add_zero]); exact nab_gg _ _
  · (simp only [zbA, ggiA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.sub_apply, Matrix.diagonal_apply, hij, if_true, if_false, sub_zero]); exact nab_ggi _ _
  · rintro x (((⟨m, rfl⟩ | ⟨m, rfl⟩) | ⟨m, rfl⟩) | ⟨m, rfl⟩)
    · (simp only [cA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nab_cf _ _ _ _ (cf_c m).1 (cf_cb m).2
    · (simp only [ciA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nab_cf _ _ _ _ (cf_ci m).1 (cf_cbi m).2
    · (simp only [cbA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nab_cf _ _ _ _ (cf_cb m).1 (cf_c m).2
    · (simp only [cbiA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nab_cf _ _ _ _ (cf_cbi m).1 (cf_ci m).2

theorem levNabs : LevNabs := by
  intro P
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · (simp only [zbA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.sub_apply, Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false, sub_zero]); exact nabs_zb _ _
  · (simp only [zbiA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.add_apply, Matrix.diagonal_apply, hij, if_true, if_false, add_zero]); exact nabs_zbi _ _
  · (simp only [zA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nabs_cf _ _ _ _ (by rw [Mx4.ec, if_neg Mx4.vz_ne.symm]) (by rw [Mx4.ec, if_neg Mx4.vz_ne])
  · (simp only [ziA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nabs_cf _ _ _ _ (by rw [Mx4.eci, if_neg Mx4.vz_ne.symm]) (by rw [Mx4.eci, if_neg Mx4.vz_ne])
  · (simp only [zA, ggA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.sub_apply, Matrix.diagonal_apply, hij, if_true, if_false, sub_zero]); exact nabs_gg _ _
  · (simp only [zA, ggiA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.add_apply, Matrix.diagonal_apply, hij, if_true, if_false, add_zero]); exact nabs_ggi _ _
  · rintro x (((⟨m, rfl⟩ | ⟨m, rfl⟩) | ⟨m, rfl⟩) | ⟨m, rfl⟩)
    · (simp only [cA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nabs_cf _ _ _ _ (cf_c m).2 (cf_cb m).1
    · (simp only [ciA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nabs_cf _ _ _ _ (cf_ci m).2 (cf_cbi m).1
    · (simp only [cbA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nabs_cf _ _ _ _ (cf_cb m).2 (cf_c m).1
    · (simp only [cbiA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact nabs_cf _ _ _ _ (cf_cbi m).2 (cf_ci m).1

theorem levPP : LevPP := by
  intro P l m
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · (simp only [pA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact Mx4.mk_comm _ _ _ _ (Mx4.eulerComm _ _ _) (by rw [neg_mul_neg, neg_mul_neg]; exact Mx4.eulerComm _ _ _)
  · (simp only [pA, pbA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact Mx4.mk_comm _ _ _ _ (Mx4.eulerComm _ _ _) (by rw [neg_mul_neg, neg_mul_neg]; exact Mx4.eulerComm _ _ _)
  · (simp only [pbA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact Mx4.mk_comm _ _ _ _ (Mx4.eulerComm _ _ _) (by rw [neg_mul_neg, neg_mul_neg]; exact Mx4.eulerComm _ _ _)
  · (simp only [pA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact partialDeriv_commute_nab _ _ _
  · (simp only [pbA, nabA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact partialDerivBar_commute_nab _ _ _
  · (simp only [pA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact partialDeriv_commute_nabs _ _ _
  · (simp only [pbA, nabsA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact partialDerivBar_commute_nabs _ _ _

theorem pP_0 (l : Fin r) (f fb : Fn r) (h1 : euler (vc l) f = 0) (h2 : euler (vcb l) fb = 0) :
    pP l * fnP f fb = fnP f fb * pP l := by rw [partialDeriv_mul_fn, h1, h2, Mx4.multiplierPair_zero, add_zero]
theorem pbP_0 (l : Fin r) (f fb : Fn r) (h1 : euler (vcb l) f = 0) (h2 : euler (vc l) fb = 0) :
    pbP l * fnP f fb = fnP f fb * pbP l := by rw [partialDerivBar_mul_fn, h1, h2, Mx4.multiplierPair_zero, add_zero]

theorem levP : LevP := by
  intro P l
  refine ⟨?_, ?_, ?_⟩
  · intro m
    by_cases h : l = m
    · subst h; rw [if_pos rfl]; (simp only [pA, cA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.add_apply, Matrix.diagonal_apply, hij, if_true, if_false, add_zero]); exact p_c l
    · rw [if_neg h, add_zero]; (simp only [pA, cA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false])
      exact pP_0 _ _ _ (by rw [Mx4.ec, if_neg (fun e => h ((vc_inj _ _).1 e))]) (by rw [Mx4.ec, if_neg (fun e => h ((vcb_inj _ _).1 e))])
  · intro m
    by_cases h : l = m
    · subst h; rw [if_pos rfl]; (simp only [pA, ciA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.sub_apply, Matrix.diagonal_apply, hij, if_true, if_false, sub_zero]); exact p_ci l
    · rw [if_neg h, sub_zero]; (simp only [pA, ciA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false])
      exact pP_0 _ _ _ (by rw [Mx4.eci, if_neg (fun e => h ((vc_inj _ _).1 e))]) (by rw [Mx4.eci, if_neg (fun e => h ((vcb_inj _ _).1 e))])
  · rintro x ((⟨m, rfl⟩ | ⟨m, rfl⟩) | hx)
    · (simp only [pA, cbA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pP_0 _ _ _ (by rw [Mx4.ec, if_neg (vc_vcb _ _)]) (by rw [Mx4.ec, if_neg (vc_vcb _ _).symm])
    · (simp only [pA, cbiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pP_0 _ _ _ (by rw [Mx4.eci, if_neg (vc_vcb _ _)]) (by rw [Mx4.eci, if_neg (vc_vcb _ _).symm])
    · simp only [zfnsA, Set.mem_insert_iff, Set.mem_singleton_iff] at hx
      rcases hx with rfl | rfl | rfl | rfl | rfl | rfl
      · (simp only [pA, zA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pP_0 _ _ _ (zeta_free_of_variable l).1 (zf_zb l).2
      · (simp only [pA, ziA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pP_0 _ _ _ (zf_zi l).1 (zf_zbi l).2
      · (simp only [pA, zbA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pP_0 _ _ _ (zf_zb l).1 (zeta_free_of_variable l).2
      · (simp only [pA, zbiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pP_0 _ _ _ (zf_zbi l).1 (zf_zi l).2
      · (simp only [pA, ggA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pP_0 _ _ _ (zf_gg _ l).1 (zf_gg _ l).2
      · (simp only [pA, ggiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pP_0 _ _ _ (zf_ggi _ l).1 (zf_ggi _ l).2

theorem levPb : LevPb := by
  intro P l
  refine ⟨?_, ?_, ?_⟩
  · intro m
    by_cases h : l = m
    · subst h; rw [if_pos rfl]; (simp only [pbA, cbA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.add_apply, Matrix.diagonal_apply, hij, if_true, if_false, add_zero])
      rw [cbP, partialDerivBar_mul_fn, Mx4.ec, Mx4.ec, if_pos rfl, if_pos rfl]
    · rw [if_neg h, add_zero]; (simp only [pbA, cbA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false])
      exact pbP_0 _ _ _ (by rw [Mx4.ec, if_neg (fun e => h ((vcb_inj _ _).1 e))]) (by rw [Mx4.ec, if_neg (fun e => h ((vc_inj _ _).1 e))])
  · intro m
    by_cases h : l = m
    · subst h; rw [if_pos rfl]; (simp only [pbA, cbiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.sub_apply, Matrix.diagonal_apply, hij, if_true, if_false, sub_zero])
      rw [cbiP, partialDerivBar_mul_fn, Mx4.eci, Mx4.eci, if_pos rfl, if_pos rfl, sub_eq_add_neg, Mx4.multiplierPair_neg]
    · rw [if_neg h, sub_zero]; (simp only [pbA, cbiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false])
      exact pbP_0 _ _ _ (by rw [Mx4.eci, if_neg (fun e => h ((vcb_inj _ _).1 e))]) (by rw [Mx4.eci, if_neg (fun e => h ((vc_inj _ _).1 e))])
  · rintro x ((⟨m, rfl⟩ | ⟨m, rfl⟩) | hx)
    · (simp only [pbA, cA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pbP_0 _ _ _ (by rw [Mx4.ec, if_neg (vc_vcb _ _).symm]) (by rw [Mx4.ec, if_neg (vc_vcb _ _)])
    · (simp only [pbA, ciA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pbP_0 _ _ _ (by rw [Mx4.eci, if_neg (vc_vcb _ _).symm]) (by rw [Mx4.eci, if_neg (vc_vcb _ _)])
    · simp only [zfnsA, Set.mem_insert_iff, Set.mem_singleton_iff] at hx
      rcases hx with rfl | rfl | rfl | rfl | rfl | rfl
      · (simp only [pbA, zA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pbP_0 _ _ _ (zeta_free_of_variable l).2 (zf_zb l).1
      · (simp only [pbA, ziA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pbP_0 _ _ _ (zf_zi l).2 (zf_zbi l).1
      · (simp only [pbA, zbA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pbP_0 _ _ _ (zf_zb l).2 (zeta_free_of_variable l).1
      · (simp only [pbA, zbiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pbP_0 _ _ _ (zf_zbi l).2 (zf_zi l).1
      · (simp only [pbA, ggA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pbP_0 _ _ _ (zf_gg _ l).2 (zf_gg _ l).1
      · (simp only [pbA, ggiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact pbP_0 _ _ _ (zf_ggi _ l).2 (zf_ggi _ l).1

theorem form (P : Par) (x : A P) (hx : x ∈ fnsA P) : ∃ f fb, x = sc P (fnP f fb) := by
  rcases hx with ((((⟨m, rfl⟩ | ⟨m, rfl⟩) | ⟨m, rfl⟩) | ⟨m, rfl⟩) | hx)
  · exact ⟨_, _, rfl⟩
  · exact ⟨_, _, rfl⟩
  · exact ⟨_, _, rfl⟩
  · exact ⟨_, _, rfl⟩
  · simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hx
    rcases hx with rfl | rfl | rfl | rfl | rfl | rfl <;> exact ⟨_, _, rfl⟩

theorem inv1 (f fb : Fn r) (h : f ≠ 0) (hb : fb ≠ 0) : fnP f fb * fnP f⁻¹ fb⁻¹ = 1 := by
  rw [Mx4.multiplierPair_mul, mul_inv_cancel₀ h, mul_inv_cancel₀ hb, multiplierPair_one]
theorem inv2 (f fb : Fn r) (h : f ≠ 0) (hb : fb ≠ 0) : fnP f⁻¹ fb⁻¹ * fnP f fb = 1 := by
  rw [Mx4.multiplierPair_mul, inv_mul_cancel₀ h, inv_mul_cancel₀ hb, multiplierPair_one]

theorem levFns : LevFns := by
  intro P
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro x hx y hy
    obtain ⟨f, fb, rfl⟩ := form P x hx
    obtain ⟨g, gb, rfl⟩ := form P y hy
    (simp only [sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.diagonal_apply, hij, if_true, if_false]); exact Mx4.multiplierPair_comm _ _ _ _
  · intro l
    refine ⟨?_, ?_, ?_, ?_⟩
    · (simp only [cA, ciA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false]); exact inv1 _ _ (Mx4.coord_ne _ _) (Mx4.coord_ne _ _)
    · (simp only [cA, ciA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false]); exact inv2 _ _ (Mx4.coord_ne _ _) (Mx4.coord_ne _ _)
    · (simp only [cbA, cbiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false]); exact inv1 _ _ (Mx4.coord_ne _ _) (Mx4.coord_ne _ _)
    · (simp only [cbA, cbiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false]); exact inv2 _ _ (Mx4.coord_ne _ _) (Mx4.coord_ne _ _)
  · (simp only [zA, ziA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false]); exact inv1 _ _ (Mx4.coord_ne _ _) (Mx4.coord_ne _ _)
  · (simp only [zA, ziA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false]); exact inv2 _ _ (Mx4.coord_ne _ _) (Mx4.coord_ne _ _)
  · (simp only [zbA, zbiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false]); exact inv1 _ _ (Mx4.coord_ne _ _) (Mx4.coord_ne _ _)
  · (simp only [zbA, zbiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false]); exact inv2 _ _ (Mx4.coord_ne _ _) (Mx4.coord_ne _ _)
  · (simp only [ggA, ggiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false]); exact inv1 _ _ (Mx4.gg_ne _) (Mx4.gg_ne _)
  · (simp only [ggA, ggiA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.one_apply, Matrix.diagonal_apply, hij, if_true, if_false]); exact inv2 _ _ (Mx4.gg_ne _) (Mx4.gg_ne _)
  · rw [Matrix.algebraMap_eq_diagonal]
    (simp only [zA, zbA, ggA, sc, Matrix.scalar_apply, Matrix.diagonal_mul_diagonal]; ext i j; by_cases hij : i = j <;> simp only [Matrix.sub_apply, Matrix.diagonal_apply, hij, if_true, if_false, sub_zero])
    rw [Pi.algebraMap_apply, Algebra.algebraMap_eq_smul_one, ← multiplierPair_one, Mx4.smul_fnP, zP, zbP, Mx4.multiplierPair_mul, sub_eq_add_neg, Mx4.multiplierPair_neg,
      Mx4.multiplierPair_add, ggP]
    congr 1
    · unfold gg; rw [Algebra.algebraMap_eq_smul_one, sub_eq_add_neg]
    · unfold gg; rw [Algebra.algebraMap_eq_smul_one, sub_eq_add_neg, mul_comm]

theorem levelAssemble : LevelAssemble := by
  intro hF hP hPb hPP hN hNs P
  have z1 : zA P ∈ zfnsA P := by simp [zfnsA]
  have z2 : ziA P ∈ zfnsA P := by simp [zfnsA]
  have z3 : zbA P ∈ zfnsA P := by simp [zfnsA]
  have z4 : zbiA P ∈ zfnsA P := by simp [zfnsA]
  have z5 : ggA P ∈ zfnsA P := by simp [zfnsA]
  have z6 : ggiA P ∈ zfnsA P := by simp [zfnsA]
  obtain ⟨f0, f1, f2, f3, f4, f5, f6, f7, f8⟩ := hF P
  obtain ⟨n1, n2, n3, n4, n5, n6, n7⟩ := hN P
  obtain ⟨s1, s2, s3, s4, s5, s6, s7⟩ := hNs P
  refine ⟨{
    p := pA P, pb := pbA P, c := cA P, ci := ciA P, cb := cbA P, cbi := cbiA P, ζ := zA P, ζi := ziA P,
    ζb := zbA P, ζbi := zbiA P, GG := ggA P, GGi := ggiA P, nab := nabA P, nabs := nabsA P, TT := (P.TT : ℂ),
    fns_comm := f0,
    c_ci := fun l => (f1 l).1, ci_c := fun l => (f1 l).2.1, cb_cbi := fun l => (f1 l).2.2.1, cbi_cb := fun l => (f1 l).2.2.2,
    ζ_ζi := f2, ζi_ζ := f3, ζb_ζbi := f4, ζbi_ζb := f5, GG_GGi := f6, GGi_GG := f7, GG_def := f8,
    p_c := fun l m => (hP P l).1 m, p_ci := fun l m => (hP P l).2.1 m,
    p_cb := fun l m => (hP P l).2.2 _ (Or.inl (Or.inl ⟨m, rfl⟩)), p_cbi := fun l m => (hP P l).2.2 _ (Or.inl (Or.inr ⟨m, rfl⟩)),
    p_ζ := fun l => (hP P l).2.2 _ (Or.inr z1), p_ζi := fun l => (hP P l).2.2 _ (Or.inr z2),
    p_ζb := fun l => (hP P l).2.2 _ (Or.inr z3), p_ζbi := fun l => (hP P l).2.2 _ (Or.inr z4),
    p_GG := fun l => (hP P l).2.2 _ (Or.inr z5), p_GGi := fun l => (hP P l).2.2 _ (Or.inr z6),
    pb_cb := fun l m => (hPb P l).1 m, pb_cbi := fun l m => (hPb P l).2.1 m,
    pb_c := fun l m => (hPb P l).2.2 _ (Or.inl (Or.inl ⟨m, rfl⟩)), pb_ci := fun l m => (hPb P l).2.2 _ (Or.inl (Or.inr ⟨m, rfl⟩)),
    pb_ζ := fun l => (hPb P l).2.2 _ (Or.inr z1), pb_ζi := fun l => (hPb P l).2.2 _ (Or.inr z2),
    pb_ζb := fun l => (hPb P l).2.2 _ (Or.inr z3), pb_ζbi := fun l => (hPb P l).2.2 _ (Or.inr z4),
    pb_GG := fun l => (hPb P l).2.2 _ (Or.inr z5), pb_GGi := fun l => (hPb P l).2.2 _ (Or.inr z6),
    p_p := fun l m => (hPP P l m).1, p_pb := fun l m => (hPP P l m).2.1, pb_pb := fun l m => (hPP P l m).2.2.1,
    p_nab := fun l => (hPP P l l).2.2.2.1, pb_nab := fun l => (hPP P l l).2.2.2.2.1,
    p_nabs := fun l => (hPP P l l).2.2.2.2.2.1, pb_nabs := fun l => (hPP P l l).2.2.2.2.2.2,
    nab_ζ := n1, nab_ζi := n2, nab_ζb := n3, nab_ζbi := n4, nab_GG := n5, nab_GGi := n6,
    nab_c := fun l => n7 _ (Or.inl (Or.inl (Or.inl ⟨l, rfl⟩))), nab_ci := fun l => n7 _ (Or.inl (Or.inl (Or.inr ⟨l, rfl⟩))),
    nab_cb := fun l => n7 _ (Or.inl (Or.inr ⟨l, rfl⟩)), nab_cbi := fun l => n7 _ (Or.inr ⟨l, rfl⟩),
    nabs_ζb := s1, nabs_ζbi := s2, nabs_ζ := s3, nabs_ζi := s4, nabs_GG := s5, nabs_GGi := s6,
    nabs_c := fun l => s7 _ (Or.inl (Or.inl (Or.inl ⟨l, rfl⟩))), nabs_ci := fun l => s7 _ (Or.inl (Or.inl (Or.inr ⟨l, rfl⟩))),
    nabs_cb := fun l => s7 _ (Or.inl (Or.inr ⟨l, rfl⟩)), nabs_cbi := fun l => s7 _ (Or.inr ⟨l, rfl⟩) }, ?_⟩
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem levelExists : LevelExists := levelAssemble levFns levP levPb levPP levNab levNabs

end Formalism.FourierDecayAlt.P.Mx2

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P

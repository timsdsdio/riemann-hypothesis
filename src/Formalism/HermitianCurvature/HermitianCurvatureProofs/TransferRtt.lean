module

import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateCommuteRaisingConstant
public import Formalism.HermitianCurvature.StatementM
public import Mathlib.LinearAlgebra.Dual.Defs
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.EulerZetaGammaInvIdentity
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.InterlaceSignTwo
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelNablaStarRelations
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.MultiplicationOpHom
public import Mathlib.Algebra.Polynomial.BigOperators
public import Mathlib.Algebra.Polynomial.Roots
public import Mathlib.LinearAlgebra.Dual.Lemmas

section

namespace Formalism.FourierDecayAlt.P.Mx6

open Matrix Finset Polynomial Formalism.FourierDecayAlt.M
open Formalism.FourierDecayAlt.P.MAx1.ModelAlgebraRelations
  (Good rho_up xC_split xEx_split xEx_up rr good0 good1 goodm1 good_star xC_ne
   coordinate_shift_ne_zero lc lc1 lcs lca commutator_identity_one commutator_identity_two
   raising_pair_relation commutator_identity_four diagonal_lowering_absorb raising_operator_absorb
   abs_Nc abs_Nsc abs_Ncz absSand absN half hh absCC star_xC star_qC)

noncomputable section

def dA (P : Par) (Y : ℂ) : A P := qC P Y • (ggiA P * kap P fun π => (xC P π (Y + 1))⁻¹)

def mt (P : Par) (Y : ℂ) : A P := star (lA P (star Y))

variable (P : Par)

alias kap_eq := _root_.Formalism.FourierDecayAlt.P.Mx4.kap_eq

theorem kap_mul (f g : Ty P → ℂ) : kap P f * kap P g = kap P (f * g) := (map_mul _ _ _).symm

theorem kap_comm (f g : Ty P → ℂ) : kap P f * kap P g = kap P g * kap P f := by
  rw [kap_mul, kap_mul, mul_comm]

theorem kap_diag (f : Ty P → ℂ) (n : Ty P → Pr P.r) :
    kap P f * Matrix.diagonal n = Matrix.diagonal n * kap P f := by
  rw [kap_eq, Matrix.diagonal_mul_diagonal, Matrix.diagonal_mul_diagonal]
  congr 1
  funext π
  exact Algebra.commutes _ _

theorem kap_sc (f : Ty P → ℂ) (w : Pr P.r) : kap P f * sc P w = sc P w * kap P f := kap_diag P f _

theorem kap_nab (f : Ty P → ℂ) : kap P f * nabA P = nabA P * kap P f := kap_diag P f _

theorem kap_nabs (f : Ty P → ℂ) : kap P f * nabsA P = nabsA P * kap P f := kap_diag P f _

theorem star_kap (f : Ty P → ℂ) : star (kap P f) = kap P (fun π => star (f π)) := by
  rw [kap_eq, kap_eq, Matrix.star_eq_conjTranspose, Matrix.diagonal_conjTranspose]
  congr 1
  funext π
  simp only [Pi.star_apply, Algebra.algebraMap_eq_smul_one, star_smul, star_one]

theorem S_shift (l : ℕ) (f g : Ty P → ℂ) (h : ∀ π π', Up P l π π' → g π' = f π) :
    kap P g * SS P l = SS P l * kap P f := by
  rw [kap_eq, kap_eq]
  ext π' π
  rw [Matrix.diagonal_mul, Matrix.mul_diagonal]
  by_cases hu : Up P l π π'
  · simp only [SS, Matrix.of_apply, ite_eq_left hu, h π π' hu]
    exact Algebra.commutes _ _
  · simp [SS, hu]

theorem Ss_shift (l : ℕ) (f g : Ty P → ℂ) (h : ∀ π π', Up P l π π' → g π' = f π) :
    star (SS P l) * kap P g = kap P f * star (SS P l) := by
  have h1 := S_shift P l (fun π => star (f π)) (fun π => star (g π)) (fun π π' hu => by rw [h π π' hu])
  have h2 := congrArg star h1
  rw [star_mul, star_mul, star_kap, star_kap] at h2
  simpa using h2

theorem S_sc (l : ℕ) (w : Pr P.r) : SS P l * sc P w = sc P w * SS P l := by
  ext π' π
  simp only [sc, Matrix.scalar_apply, Matrix.mul_diagonal, Matrix.diagonal_mul, SS, Matrix.of_apply]
  split_ifs
  · exact Algebra.commutes _ _
  · simp

theorem Ss_sc (l : ℕ) (w : Pr P.r) : star (SS P l) * sc P w = sc P w * star (SS P l) := by
  have h2 := congrArg star (S_sc P l (star w))
  rw [star_mul, star_mul, Mx1.star_sc, star_star] at h2
  exact h2.symm

def lam (j : ℕ) (u : ℂ) : A P := kap P (rr P j u) * SS P j

def abelian₂ (u : ℂ) : A P := ∑ j ∈ Icc 1 (P.k - 1), lam P j u

def lams (j : ℕ) (u : ℂ) : A P := star (SS P j) * kap P (rr P j u)

def Lams (u : ℂ) : A P := ∑ j ∈ Icc 1 (P.k - 1), lams P j u

theorem lA_eq (u : ℂ) : lA P u = l0A P u + ggiA P * abelian₂ P u := rfl

theorem star_Lam (u : ℂ) : star (abelian₂ P (star u)) = Lams P u := by
  unfold abelian₂ Lams lam lams
  rw [star_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [star_mul, star_kap]
  congr 2
  funext π
  simp [rr]

end

namespace PC

open Formalism.FourierDecayAlt.P.MAx1.ModelAlgebraRelations.PC
  (IsPoly IsPolyS isPolyS_xC isPolyS_xEx isPolyS_wC bad_finite)

noncomputable section

variable (P : Par)

theorem kap_sum (f : Ty P → ℂ) : kap P f = ∑ π, f π • kap P (Pi.single π 1) := by
  conv_lhs => rw [pi_eq_sum_univ' f]
  simp only [map_sum, map_smul]

theorem isPoly_kap {F : Ty P → ℂ → ℂ} (hF : ∀ π, IsPolyS (F π)) : IsPoly fun Y => kap P fun π => F π Y := by
  have : (fun Y => kap P fun π => F π Y) = fun Y => ∑ π, F π Y • kap P (Pi.single π 1) := by
    funext Y; exact kap_sum P _
  rw [this]
  exact IsPoly.sum _ fun π _ => IsPoly.smul (hF π) (IsPoly.const _)

theorem isPoly_xA : IsPoly fun Y => xA P Y := isPoly_kap P (isPolyS_xC P)

theorem isPoly_l0A : IsPoly fun Y => l0A P Y :=
  (IsPoly.const _).sub ((IsPoly.algMap (IsPolyS.id.add (IsPolyS.const _))).mul (IsPoly.const _))

theorem isPoly_m0A : IsPoly fun Y => m0A P Y :=
  (IsPoly.const _).sub ((IsPoly.algMap (IsPolyS.id.sub (IsPolyS.const _))).mul (IsPoly.const _))

theorem isPoly_S21 : IsPoly fun Y => weightedSumBis P Y :=
  IsPoly.sum _ fun l _ => (IsPoly.const _).mul (isPoly_kap P (isPolyS_xEx P {l}))

theorem isPoly_S12 : IsPoly fun Y => S12 P Y :=
  IsPoly.sum _ fun l _ => (isPoly_kap P (isPolyS_xEx P {l})).mul (IsPoly.const _)

theorem isPoly_quartic_sum : IsPoly fun Y => S4 P Y :=
  IsPoly.sum _ fun l _ => IsPoly.sum _ fun j _ => (IsPoly.const _).mul (isPoly_kap P (isPolyS_xEx P {l, j}))

theorem isPoly_diagonal_entry : IsPoly fun Y => t22 P Y := (IsPoly.const _).mul (isPoly_xA P)

theorem isPoly_t21 : IsPoly fun Y => t21 P Y :=
  (((IsPoly.const _).mul (isPoly_xA P)).mul (isPoly_l0A P)).add (isPoly_S21 P)

theorem isPoly_upper_right_entry : IsPoly fun Y => t12 P Y :=
  (((IsPoly.const _).mul (isPoly_xA P)).mul (isPoly_m0A P)).add (isPoly_S12 P)

theorem isPoly_upper_left_entry : IsPoly fun Y => t11 P Y :=
  (((((IsPoly.const _).mul (isPoly_kap P (isPolyS_wC P))).add
    ((((IsPoly.const _).mul (isPoly_xA P)).mul (isPoly_m0A P)).mul (isPoly_l0A P))).add
    ((((IsPoly.const _).mul (isPoly_m0A P)).mul (IsPoly.const _)).mul (isPoly_S21 P))).add
    ((isPoly_S12 P).mul (isPoly_l0A P))).add ((IsPoly.const _).mul (isPoly_quartic_sum P))

theorem isPoly_QQr (i j : Fin 2) : IsPoly fun Y => QQr P Y i j := by
  fin_cases i <;> fin_cases j
  · exact isPoly_upper_left_entry P
  · exact isPoly_upper_right_entry P
  · exact isPoly_t21 P
  · exact isPoly_diagonal_entry P

theorem entries_of_generic
    (h : ∀ u v : ℂ, Good P u → Good P v → u - v ≠ 0 → u - v ≠ 1 → u - v ≠ -1 → ∀ i j k l : Fin 2,
      (u - v) • (QQr P u i j * QQr P v k l - QQr P v k l * QQr P u i j) =
        QQr P u k j * QQr P v i l - QQr P v k j * QQr P u i l)
    (u v : ℂ) (i j k l : Fin 2) :
    (u - v) • (QQr P u i j * QQr P v k l - QQr P v k l * QQr P u i j) =
      QQr P u k j * QQr P v i l - QQr P v k j * QQr P u i l := by
  set F : ℂ → ℂ → A P := fun u v => (u - v) • (QQr P u i j * QQr P v k l - QQr P v k l * QQr P u i j) -
    (QQr P u k j * QQr P v i l - QQr P v k j * QQr P u i l)
  have hu : ∀ v, IsPoly fun u => F u v := fun v =>
    (IsPoly.smul (IsPolyS.id.sub (IsPolyS.const v))
      (((isPoly_QQr P i j).mul (IsPoly.const _)).sub ((IsPoly.const _).mul (isPoly_QQr P i j)))).sub
      (((isPoly_QQr P k j).mul (IsPoly.const _)).sub ((IsPoly.const _).mul (isPoly_QQr P i l)))
  have hv : ∀ u, IsPoly fun v => F u v := fun u =>
    (IsPoly.smul ((IsPolyS.const u).sub IsPolyS.id)
      (((IsPoly.const _).mul (isPoly_QQr P k l)).sub ((isPoly_QQr P k l).mul (IsPoly.const _)))).sub
      (((IsPoly.const _).mul (isPoly_QQr P i l)).sub ((isPoly_QQr P k j).mul (IsPoly.const _)))
  have h1 : ∀ v, Good P v → ∀ u, F u v = 0 := by
    intro v gv
    refine (hu v).eq_zero ({Y : ℂ | ¬ Good P Y} ∪ {v, v + 1, v - 1})
      ((bad_finite P).union (by simp)) ?_
    intro u hu'
    simp only [Set.mem_union, Set.mem_ofPred_eq, Set.mem_insert_iff, Set.mem_singleton_iff, not_or, not_not] at hu'
    obtain ⟨gu, a0, a1, a2⟩ := hu'
    exact sub_eq_zero.mpr (h u v gu gv (fun e => a0 (by linear_combination e)) (fun e => a1 (by linear_combination e))
      (fun e => a2 (by linear_combination e)) i j k l)
  have h2 : F u v = 0 := by
    refine (hv u).eq_zero {Y : ℂ | ¬ Good P Y} (bad_finite P) ?_ v
    intro v' hv'
    simp only [Set.mem_ofPred_eq, not_not] at hv'
    exact h1 v' hv' u
  exact sub_eq_zero.mp h2

end

end PC

namespace L3

open Formalism.FourierDecayAlt.P.MAx1.ModelAlgebraRelations.L3
  (sh ee ee_diag ee_off_diagonal_first ee_off_diagonal_second sum_antisymm)

noncomputable section

variable (P : Par)

theorem comm_term (j : ℕ) (f f' : Ty P → ℂ) (hs : ∀ π π', Up P j π π' → f' π' = f π) (c u v : ℂ)
    (hf : ∀ π, (u - v) * ((f π - f' π) * rr P j v π) = c * (f π * (rr P j u π - rr P j v π))) :
    (u - v) • (kap P f * lam P j v - lam P j v * kap P f) = c • (kap P f * (lam P j u - lam P j v)) := by
  unfold lam
  have e1 : kap P f * (kap P (rr P j v) * SS P j) = kap P (f * rr P j v) * SS P j := by
    rw [← mul_assoc, kap_mul]
  have e2 : (kap P (rr P j v) * SS P j) * kap P f = kap P (rr P j v * f') * SS P j := by
    rw [mul_assoc, ← S_shift P j f f' hs, ← mul_assoc, kap_mul]
  have e3 : kap P f * (kap P (rr P j u) * SS P j - kap P (rr P j v) * SS P j) =
      kap P (f * (rr P j u - rr P j v)) * SS P j := by
    rw [← sub_mul, ← map_sub, ← mul_assoc, kap_mul]
  rw [e1, e2, e3, ← sub_mul, ← map_sub, ← smul_mul_assoc, ← smul_mul_assoc, ← map_smul, ← map_smul]
  congr 2
  funext π
  simp only [Pi.smul_apply, Pi.sub_apply, Pi.mul_apply, smul_eq_mul]
  linear_combination hf π

theorem comm_sum (f : Ty P → ℂ) (f' : ℕ → Ty P → ℂ) (c u v : ℂ)
    (hs : ∀ j ∈ Icc 1 (P.k - 1), ∀ π π', Up P j π π' → f' j π' = f π)
    (hf : ∀ j ∈ Icc 1 (P.k - 1), ∀ π,
      (u - v) * ((f π - f' j π) * rr P j v π) = c * (f π * (rr P j u π - rr P j v π))) :
    (u - v) • (kap P f * abelian₂ P v - abelian₂ P v * kap P f) = c • (kap P f * (abelian₂ P u - abelian₂ P v)) := by
  unfold abelian₂
  simp only [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_sub_distrib, Finset.smul_sum]
  exact Finset.sum_congr rfl fun j hj => comm_term P j f (f' j) (hs j hj) c u v (hf j hj)

theorem Lam1 (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    (u - v) • (xA P u * abelian₂ P v - abelian₂ P v * xA P u) = -(xA P u * (abelian₂ P u - abelian₂ P v)) := by
  have h := comm_sum P (fun π => xC P π u)
    (fun j π => (u + (rho P π j : ℂ) - 1) * xEx P {j} π u) (-1) u v
    (fun j hj π π' hU => by
      rw [xEx_up P hU {j} (Finset.mem_singleton_self j), rho_up P hU hj, ite_eq_left rfl, xC_split P π u hj]
      ring)
    (fun j hj π => by
      have h1 := good0 P hu π hj
      have h2 := good0 P hv π hj
      simp only [rr]
      rw [xC_split P π u hj]
      field_simp
      ring)
  rw [neg_one_smul] at h
  exact h

theorem Lam2 (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    (u - v) • ((kap P fun π => (xC P π (u + 1))⁻¹) * abelian₂ P v -
      abelian₂ P v * (kap P fun π => (xC P π (u + 1))⁻¹)) =
      (kap P fun π => (xC P π (u + 1))⁻¹) * (abelian₂ P u - abelian₂ P v) := by
  have h := comm_sum P (fun π => (xC P π (u + 1))⁻¹)
    (fun j π => (u + (rho P π j : ℂ) + 1) * (u + (rho P π j : ℂ))⁻¹ * (xC P π (u + 1))⁻¹) 1 u v
    (fun j hj π π' hU => by
      have h0 := good0 P hu π' hj
      have h1 := good1 P hu π' hj
      rw [xC_split P π' (u + 1) hj, xC_split P π (u + 1) hj,
        xEx_up P hU {j} (Finset.mem_singleton_self j), mul_inv, mul_inv]
      rw [rho_up P hU hj, ite_eq_left rfl] at h0 h1 ⊢
      generalize (xEx P {j} π (u + 1))⁻¹ = Ei
      have h2 : u + 1 + ((rho P π j : ℂ) + 1) ≠ 0 := by intro h; apply h1; rw [← h]; ring
      have h3 : u + 1 + (rho P π j : ℂ) ≠ 0 := by intro h; apply h0; rw [← h]; ring
      field_simp
      ring)
    (fun j hj π => by
      have h1 := good0 P hu π hj
      have h2 := good0 P hv π hj
      simp only [rr]
      generalize (xC P π (u + 1))⁻¹ = Xi
      field_simp
      ring)
  rw [one_smul] at h
  exact h

theorem lam_mul (i : ℕ) {j : ℕ} (hj : j ∈ Icc 1 (P.k - 1)) (a b : ℂ) :
    lam P i a * lam P j b = kap P (rr P i a * sh P i j b) * (SS P i * SS P j) := by
  have h := S_shift P i (rr P j b) (sh P i j b) (fun π π' hU => by
    simp only [sh, rr]
    rw [rho_up P hU hj]
    congr 1
    ring)
  unfold lam
  calc kap P (rr P i a) * SS P i * (kap P (rr P j b) * SS P j)
      = kap P (rr P i a) * (SS P i * kap P (rr P j b)) * SS P j := by simp only [mul_assoc]
    _ = kap P (rr P i a) * (kap P (sh P i j b) * SS P i) * SS P j := by rw [h]
    _ = _ := by rw [← kap_mul]; simp only [mul_assoc]

def FF (i j : ℕ) (u v : ℂ) : A P :=
  (u - v) • (lam P i u * lam P j v - lam P i v * lam P j u) -
    (lam P i u - lam P i v) * (lam P j u - lam P j v)

theorem FF_eq (i : ℕ) {j : ℕ} (hj : j ∈ Icc 1 (P.k - 1)) (u v : ℂ) :
    FF P i j u v = kap P (ee P i j u v) * (SS P i * SS P j) := by
  unfold FF ee
  simp only [sub_mul, mul_sub, lam_mul P _ hj, map_sub, map_smul, smul_mul_assoc]
  abel

theorem comm_tgt (hC : SSComm) (hP : P.OK) {i j : ℕ} (hi : i ∈ Icc 1 (P.k - 1))
    (hj : j ∈ Icc 1 (P.k - 1)) (hne : j ≠ i) :
    (kap P fun π => (rho P π j : ℂ) - (rho P π i : ℂ) - 1) * (SS P j * SS P i) =
      (kap P fun π => (rho P π j : ℂ) - (rho P π i : ℂ) + 1) * (SS P i * SS P j) := by
  have h := hC P hP i hi j hj hne
  have a1 := S_shift P i (fun π => ((rho P π j - rho P π i - 1 : ℝ) : ℂ))
    (fun π => (rho P π j : ℂ) - (rho P π i : ℂ)) (fun π π' hU => by
      rw [rho_up P hU hj, rho_up P hU hi, ite_eq_right hne, ite_eq_left rfl]
      push_cast
      ring)
  have a2 := S_shift P j (fun π => (rho P π j : ℂ) - (rho P π i : ℂ))
    (fun π => (rho P π j : ℂ) - (rho P π i : ℂ) - 1) (fun π π' hU => by
      rw [rho_up P hU hj, rho_up P hU hi, ite_eq_right hne.symm, ite_eq_left rfl]
      ring)
  have b1 := S_shift P j (fun π => ((rho P π j - rho P π i + 1 : ℝ) : ℂ))
    (fun π => (rho P π j : ℂ) - (rho P π i : ℂ)) (fun π π' hU => by
      rw [rho_up P hU hj, rho_up P hU hi, ite_eq_right hne.symm, ite_eq_left rfl]
      push_cast
      ring)
  have b2 := S_shift P i (fun π => (rho P π j : ℂ) - (rho P π i : ℂ))
    (fun π => (rho P π j : ℂ) - (rho P π i : ℂ) + 1) (fun π π' hU => by
      rw [rho_up P hU hj, rho_up P hU hi, ite_eq_right hne, ite_eq_left rfl]
      ring)
  rw [← mul_assoc, a2, mul_assoc, a1, ← mul_assoc, h, mul_assoc, ← b1, ← mul_assoc, ← b2, mul_assoc]

theorem FF_pair (hC : SSComm) (hP : P.OK) {i j : ℕ} (hi : i ∈ Icc 1 (P.k - 1))
    (hj : j ∈ Icc 1 (P.k - 1)) (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    FF P i j u v + FF P j i u v = 0 := by
  by_cases hne : j = i
  · subst hne
    rw [FF_eq P _ hj, ee_diag P hj u v hu hv, map_zero, zero_mul, add_zero]
  · rw [FF_eq P _ hj, FF_eq P _ hi, ee_off_diagonal_first P hi hj hne u v hu hv, ee_off_diagonal_second P hi hj hne u v hu hv,
      map_neg, ← kap_mul, ← kap_mul, neg_mul, mul_assoc, mul_assoc, comm_tgt P hC hP hi hj hne,
      add_neg_cancel]

theorem Lam3 (hC : SSComm) (hP : P.OK) (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    (u - v) • (abelian₂ P u * abelian₂ P v - abelian₂ P v * abelian₂ P u) = (abelian₂ P u - abelian₂ P v) * (abelian₂ P u - abelian₂ P v) := by
  have h := sum_antisymm (Icc 1 (P.k - 1)) (fun i j => FF P i j u v)
    (fun i hi j hj => FF_pair P hC hP hi hj u v hu hv)
  rw [← sub_eq_zero, ← h]
  unfold abelian₂ FF
  simp only [← Finset.sum_sub_distrib, Finset.sum_mul_sum, Finset.smul_sum]

end

end L3

namespace L4

open Formalism.FourierDecayAlt.P.MAx1.ModelAlgebraRelations.L4
  (rr1 rr_up_same rr_up_ne rho_unchanged_off_index xC_rr xEx_rr)

noncomputable section

variable (P : Par)

theorem kap_sum' (s : Finset ℕ) (f : ℕ → Ty P → ℂ) :
    kap P (fun π => ∑ l ∈ s, f l π) = ∑ l ∈ s, kap P (f l) := by
  rw [← map_sum]
  congr 1
  funext π
  simp [Finset.sum_apply]

theorem xLam {u : ℂ} (hu : Good P u) : xA P u * abelian₂ P u = weightedSumBis P u := by
  unfold abelian₂ weightedSumBis lam xA
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun j hj => ?_
  rw [← mul_assoc, kap_mul]
  refine S_shift P j _ _ fun π π' h => ?_
  show xC P π' u * rr P j u π' = xEx P {j} π u
  rw [xC_rr P hu hj, xEx_up P h {j} (by simp)]

theorem Lamsx {u : ℂ} (hu : Good P u) : Lams P u * xA P u = S12 P u := by
  unfold Lams S12 lams xA
  rw [Finset.sum_mul]
  refine Finset.sum_congr rfl fun j hj => ?_
  rw [mul_assoc, kap_mul]
  refine Ss_shift P j _ _ fun π π' h => ?_
  show rr P j u π' * xC P π' u = xEx P {j} π u
  rw [mul_comm, xC_rr P hu hj, xEx_up P h {j} (by simp)]

theorem E_Ss (l : ℕ) (u : ℂ) :
    (kap P fun π => xEx P {l} π u) * star (SS P l) = star (SS P l) * kap P fun π => xEx P {l} π u :=
  (Ss_shift P l (fun π => xEx P {l} π u) (fun π => xEx P {l} π u)
    fun _ _ h => xEx_up P h {l} (Finset.mem_singleton_self l) u).symm

theorem T_ne {u : ℂ} (hu : Good P u) {l j : ℕ} (hj : j ∈ Icc 1 (P.k - 1)) (hne : j ≠ l) :
    (kap P fun π => xEx P {l} π u) * star (SS P l) * (kap P (rr P j u) * SS P j) =
      star (SS P l) * SS P j * kap P fun π => xEx P {l, j} π u := by
  have h1 : kap P ((fun π => xEx P {l} π u) * rr P j u) * SS P j = SS P j * kap P fun π => xEx P {l, j} π u :=
    S_shift P j (fun π => xEx P {l, j} π u) ((fun π => xEx P {l} π u) * rr P j u) fun π π' h => by
      rw [Pi.mul_apply, xEx_rr P hu hj hne, xEx_up P h {l, j} (by simp)]
  rw [E_Ss, mul_assoc, ← mul_assoc (kap P _) (kap P _), kap_mul, h1, mul_assoc]

theorem T_eq (hP : P.OK) (hN : SSNorm) (u : ℂ) {l : ℕ} (hl : l ∈ Icc 1 (P.k - 1)) :
    (kap P fun π => xEx P {l} π u) * star (SS P l) * (kap P (rr P l u) * SS P l) =
      kap P fun π => ((Nrm P l π : ℝ) : ℂ) * xEx P {l} π u / (u + (rho P π l : ℂ) + 1) := by
  have h1 : kap P ((fun π => xEx P {l} π u) * rr P l u) * SS P l =
      SS P l * kap P ((fun π => xEx P {l} π u) * rr1 P l u) :=
    S_shift P l ((fun π => xEx P {l} π u) * rr1 P l u) ((fun π => xEx P {l} π u) * rr P l u) fun π π' h => by
      rw [Pi.mul_apply, Pi.mul_apply, xEx_up P h {l} (by simp), rr_up_same P hl h]
  rw [E_Ss, mul_assoc, ← mul_assoc (kap P _) (kap P _), kap_mul, h1, ← mul_assoc, (hN P hP l hl).1, kap_mul]
  congr 1
  funext π
  simp only [Pi.mul_apply, rr1, div_eq_mul_inv, mul_assoc]

theorem upper_sum_mul_lambda (hP : P.OK) {u : ℂ} (hu : Good P u) (hN : SSNorm) :
    S12 P u * abelian₂ P u = S4 P u + kap P fun π => ∑ l ∈ Icc 1 (P.k - 1),
      ((Nrm P l π : ℝ) : ℂ) * xEx P {l} π u / (u + (rho P π l : ℂ) + 1) := by
  have e1 : S12 P u * abelian₂ P u = ∑ l ∈ Icc 1 (P.k - 1), ∑ j ∈ Icc 1 (P.k - 1),
      (kap P fun π => xEx P {l} π u) * star (SS P l) * (kap P (rr P j u) * SS P j) :=
    Finset.sum_mul_sum _ _ _ _
  have e2 : ∀ l ∈ Icc 1 (P.k - 1), ∑ j ∈ Icc 1 (P.k - 1),
      (kap P fun π => xEx P {l} π u) * star (SS P l) * (kap P (rr P j u) * SS P j) =
      (∑ j ∈ (Icc 1 (P.k - 1)).erase l, star (SS P l) * SS P j * kap P fun π => xEx P {l, j} π u) +
        kap P fun π => ((Nrm P l π : ℝ) : ℂ) * xEx P {l} π u / (u + (rho P π l : ℂ) + 1) := by
    intro l hl
    rw [← Finset.sum_erase_add _ _ hl, T_eq P hP hN u hl]
    refine congrArg (· + _) ?_
    refine Finset.sum_congr rfl fun j hj => ?_
    have hj' := Finset.mem_erase.1 hj
    exact T_ne P hu hj'.2 hj'.1
  rw [e1, Finset.sum_congr rfl e2, Finset.sum_add_distrib,
    kap_sum' P _ (fun l π => ((Nrm P l π : ℝ) : ℂ) * xEx P {l} π u / (u + (rho P π l : ℂ) + 1))]
  rfl

theorem Lam4 (hP : P.OK) (u v : ℂ) (hN : SSNorm) (hM : SSMixed) :
    Lams P u * abelian₂ P v - abelian₂ P v * Lams P u = kap P fun π => ∑ j ∈ Icc 1 (P.k - 1),
      (((Nrm P j π : ℝ) : ℂ) / ((u + (rho P π j : ℂ) + 1) * (v + (rho P π j : ℂ) + 1)) -
        ((NrmDown P j π : ℝ) : ℂ) / ((u + (rho P π j : ℂ)) * (v + (rho P π j : ℂ)))) := by
  rw [kap_sum' P _ (fun j π => ((Nrm P j π : ℝ) : ℂ) / ((u + (rho P π j : ℂ) + 1) * (v + (rho P π j : ℂ) + 1)) -
        ((NrmDown P j π : ℝ) : ℂ) / ((u + (rho P π j : ℂ)) * (v + (rho P π j : ℂ))))]
  have e1 : Lams P u * abelian₂ P v =
      ∑ i ∈ Icc 1 (P.k - 1), ∑ j ∈ Icc 1 (P.k - 1), lams P i u * lam P j v := Finset.sum_mul_sum _ _ _ _
  have e2 : abelian₂ P v * Lams P u =
      ∑ i ∈ Icc 1 (P.k - 1), ∑ j ∈ Icc 1 (P.k - 1), lam P j v * lams P i u := by
    unfold Lams abelian₂
    rw [Finset.sum_mul_sum, Finset.sum_comm]
  rw [e1, e2, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun i hi => ?_
  rw [← Finset.sum_sub_distrib]
  have hlam : ∀ j ∈ Icc 1 (P.k - 1), lam P j v = SS P j * kap P (rr1 P j v) := fun j hj =>
    S_shift P j _ _ fun π π' h => rr_up_same P hj h v
  rw [Finset.sum_eq_single_of_mem i hi]
  · have h1 : lams P i u * lam P i v = kap P ((fun π => ((Nrm P i π : ℝ) : ℂ)) * (rr1 P i u * rr1 P i v)) := by
      unfold lams lam
      rw [mul_assoc, ← mul_assoc (kap P _) (kap P _), kap_mul,
        S_shift P i (rr1 P i u * rr1 P i v) _ (fun π π' h => by
          show rr P i u π' * rr P i v π' = rr1 P i u π * rr1 P i v π
          rw [rr_up_same P hi h, rr_up_same P hi h]),
        ← mul_assoc, (hN P hP i hi).1, kap_mul]
    have h2 : lam P i v * lams P i u = kap P (rr P i v * (fun π => ((NrmDown P i π : ℝ) : ℂ)) * rr P i u) := by
      unfold lams lam
      rw [mul_assoc, ← mul_assoc (SS P i), (hN P hP i hi).2, kap_mul, kap_mul, mul_assoc]
    rw [h1, h2, ← map_sub]
    congr 1
    funext π
    simp only [Pi.sub_apply, Pi.mul_apply, rr, rr1, div_eq_mul_inv, mul_inv]
    ring
  · intro j hj hne
    rw [sub_eq_zero, hlam j hj]
    unfold lams
    have h3 : kap P (rr P i u) * SS P j = SS P j * kap P (rr P i u) :=
      S_shift P j _ _ fun π π' h => rr_up_ne P hi (Ne.symm hne) h u
    have h4 : kap P (rr1 P j v) * star (SS P i) = star (SS P i) * kap P (rr1 P j v) :=
      (Ss_shift P i _ _ fun π π' h => rho_unchanged_off_index P hj hne h v).symm
    calc star (SS P i) * kap P (rr P i u) * (SS P j * kap P (rr1 P j v))
        = star (SS P i) * (kap P (rr P i u) * SS P j) * kap P (rr1 P j v) := by simp only [mul_assoc]
      _ = star (SS P i) * SS P j * (kap P (rr P i u) * kap P (rr1 P j v)) := by rw [h3]; simp only [mul_assoc]
      _ = SS P j * star (SS P i) * (kap P (rr1 P j v) * kap P (rr P i u)) := by
          rw [hM P hP i hi j hj hne, kap_comm]
      _ = SS P j * (star (SS P i) * kap P (rr1 P j v)) * kap P (rr P i u) := by simp only [mul_assoc]
      _ = SS P j * kap P (rr1 P j v) * (star (SS P i) * kap P (rr P i u)) := by rw [← h4]; simp only [mul_assoc]

end

end L4

noncomputable section

variable (P : Par)

def cc : A P := zbA P * ggiA P

def cz : A P := zA P * ggiA P

theorem sc_mul (a b : Pr P.r) : sc P a * sc P b = sc P (a * b) := by
  unfold sc; exact (map_mul _ _ _).symm

theorem cc_sc : cc P = sc P (zbP * ggiP P.TT) := sc_mul P _ _
theorem cz_sc : cz P = sc P (zP * ggiP P.TT) := sc_mul P _ _

theorem lowering_constant_eq_shift (u : ℂ) : l0A P u = -nabA P - (u + 1 / 2) • cc P := by
  unfold l0A cc; rw [Algebra.smul_def]

theorem raising_constant_eq_shift (u : ℂ) : m0A P u = -nabsA P - (u - 1 / 2) • cz P := by
  unfold m0A cz; rw [Algebra.smul_def]

theorem lam_sc (j : ℕ) (u : ℂ) (a : Pr P.r) : lam P j u * sc P a = sc P a * lam P j u := by
  unfold lam; rw [mul_assoc, S_sc, ← mul_assoc, kap_sc, mul_assoc]

theorem Lam_sc (u : ℂ) (a : Pr P.r) : abelian₂ P u * sc P a = sc P a * abelian₂ P u := by
  unfold abelian₂; rw [Finset.sum_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun j _ => lam_sc P j u a

theorem lams_sc (j : ℕ) (u : ℂ) (a : Pr P.r) : lams P j u * sc P a = sc P a * lams P j u := by
  unfold lams; rw [mul_assoc, kap_sc, ← mul_assoc, Ss_sc, mul_assoc]

theorem Lams_sc (u : ℂ) (a : Pr P.r) : Lams P u * sc P a = sc P a * Lams P u := by
  unfold Lams; rw [Finset.sum_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun j _ => lams_sc P j u a

theorem zeta_mem_function_algebra : zA P ∈ fnsA P := by simp [fnsA]
theorem mem_zb : zbA P ∈ fnsA P := by simp [fnsA]
theorem mem_g : ggA P ∈ fnsA P := by simp [fnsA]
theorem mem_G : ggiA P ∈ fnsA P := by simp [fnsA]

theorem fcomm {x y : A P} (hx : x ∈ fnsA P) (hy : y ∈ fnsA P) : x * y = y * x := (Mx2.levFns P).1 x hx y hy

theorem gG : ggA P * ggiA P = 1 := (Mx2.levFns P).2.2.2.2.2.2.1
theorem Gg : ggiA P * ggA P = 1 := (Mx2.levFns P).2.2.2.2.2.2.2.1
theorem g_def : ggA P = zA P * zbA P - algebraMap ℂ (A P) (P.TT : ℂ) := (Mx2.levFns P).2.2.2.2.2.2.2.2

theorem besselUnipotent_mulVec_middle_vec : nabA P * zA P = zA P * nabA P + 1 := (Mx2.levNab P).1
theorem N_zb : nabA P * zbA P = zbA P * nabA P := (Mx2.levNab P).2.2.1
theorem nabla_gamma_relations : nabA P * ggA P = ggA P * nabA P + zbA P := (Mx2.levNab P).2.2.2.2.1
theorem nabla_star_gamma_relations : nabA P * ggiA P = ggiA P * nabA P - zbA P * ggiA P * ggiA P := (Mx2.levNab P).2.2.2.2.2.1
theorem Ns_zb : nabsA P * zbA P = zbA P * nabsA P - 1 := (Mx2.levNabs P).1
theorem nabla_star_mul_GG : nabsA P * ggA P = ggA P * nabsA P - zA P := (Mx2.levNabs P).2.2.2.2.1
theorem nabla_star_gamma_inv_comm : nabsA P * ggiA P = ggiA P * nabsA P + zA P * ggiA P * ggiA P := (Mx2.levNabs P).2.2.2.2.2.1

theorem g_cc : ggA P * cc P = zbA P := by
  unfold cc; rw [lc (fcomm P (mem_g P) (mem_zb P)), gG, mul_one]
theorem g_cz : ggA P * cz P = zA P := by
  unfold cz; rw [lc (fcomm P (mem_g P) (zeta_mem_function_algebra P)), gG, mul_one]

theorem N_g : nabA P * ggA P = ggA P * nabA P + ggA P * cc P := by rw [g_cc, nabla_gamma_relations]
theorem N_G : nabA P * ggiA P = ggiA P * nabA P - cc P * ggiA P := nabla_star_gamma_relations P
theorem Ns_g : nabsA P * ggA P = ggA P * nabsA P - ggA P * cz P := by rw [g_cz, nabla_star_mul_GG]
theorem Ns_G : nabsA P * ggiA P = ggiA P * nabsA P + cz P * ggiA P := nabla_star_gamma_inv_comm P
theorem N_cc : nabA P * cc P = cc P * nabA P - cc P * cc P :=
  abs_Nc _ _ _ (N_zb P) (nabla_star_gamma_relations P) (fcomm P (mem_G P) (mem_zb P))
theorem Ns_cc : nabsA P * cc P = cc P * nabsA P + (P.TT : ℂ) • (ggiA P * ggiA P) :=
  abs_Nsc _ _ _ _ _ _ (g_def P) (gG P) (Ns_zb P) (nabla_star_gamma_inv_comm P) (fcomm P (mem_zb P) (zeta_mem_function_algebra P))
theorem N_cz : nabA P * cz P = cz P * nabA P - (P.TT : ℂ) • (ggiA P * ggiA P) :=
  abs_Ncz _ _ _ _ _ _ (g_def P) (gG P) (besselUnipotent_mulVec_middle_vec P) (nabla_star_gamma_relations P)

theorem G_cc : ggiA P * cc P = cc P * ggiA P := by
  unfold cc; rw [lc (fcomm P (mem_G P) (mem_zb P)), mul_assoc]
theorem G_cz : ggiA P * cz P = cz P * ggiA P := by
  unfold cz; rw [lc (fcomm P (mem_G P) (zeta_mem_function_algebra P)), mul_assoc]
theorem cc_g : cc P * ggA P = ggA P * cc P := by
  unfold cc; rw [mul_assoc, Gg, mul_one, lc (fcomm P (mem_g P) (mem_zb P)), gG, mul_one]
theorem cz_g : cz P * ggA P = ggA P * cz P := by
  unfold cz; rw [mul_assoc, Gg, mul_one, lc (fcomm P (mem_g P) (zeta_mem_function_algebra P)), gG, mul_one]
theorem cz_cc : cz P * cc P = cc P * cz P := by
  rw [cc_sc, cz_sc, sc_mul, sc_mul]
  congr 1
  simp only [zP, zbP, ggiP]
  rw [Mx4.multiplierPair_mul, Mx4.multiplierPair_mul]
  exact Mx4.multiplierPair_comm _ _ _ _

theorem G_sc : ggiA P = sc P (ggiP P.TT) := rfl

theorem star_g : star (ggA P) = ggA P := (star_generators P).2.2.2.1
theorem star_G : star (ggiA P) = ggiA P := (star_generators P).2.2.2.2.1
theorem star_alt : star (zA P) = zbA P := (star_generators P).2.1
theorem star_N : star (nabA P) = nabsA P := (star_generators P).2.2.2.2.2
theorem star_Ns : star (nabsA P) = nabA P := by rw [← star_N, star_star]
theorem star_zb : star (zbA P) = zA P := by rw [← star_alt, star_star]
theorem star_cc : star (cc P) = cz P := by
  unfold cc cz; rw [star_mul, star_G, star_zb, fcomm P (mem_G P) (zeta_mem_function_algebra P)]
theorem star_cz : star (cz P) = cc P := by rw [← star_cc, star_star]

theorem N_Lam (hS : NabSS) (u : ℂ) : nabA P * abelian₂ P u = abelian₂ P u * nabA P - cc P * abelian₂ P u := by
  unfold abelian₂; rw [Finset.mul_sum, Finset.sum_mul, Finset.mul_sum, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun j hj => ?_
  unfold lam
  rw [← mul_assoc, ← kap_nab, mul_assoc, (hS P j hj).1, mul_sub, cc_sc, ← mul_assoc (sc P _), ← kap_sc, ← cc_sc]
  simp only [mul_assoc, cc]

theorem Ns_Lam (hS : NabSS) (u : ℂ) : nabsA P * abelian₂ P u = abelian₂ P u * nabsA P - cz P * abelian₂ P u := by
  unfold abelian₂; rw [Finset.mul_sum, Finset.sum_mul, Finset.mul_sum, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun j hj => ?_
  unfold lam
  rw [← mul_assoc, ← kap_nabs, mul_assoc, (hS P j hj).2, mul_sub, cz_sc, ← mul_assoc (sc P _), ← kap_sc, ← cz_sc]
  simp only [mul_assoc, cz]

theorem N_Lams (hS : NabSS) (u : ℂ) : nabA P * Lams P u = Lams P u * nabA P + cc P * Lams P u := by
  have h := congrArg star (Ns_Lam P hS (star u))
  rw [star_mul, star_sub, star_mul, star_mul, star_Lam, star_Ns, star_cz] at h
  rw [h, cc_sc, Lams_sc]; abel

theorem mt_eq (u : ℂ) : mt P u = -nabsA P - (u + 1 / 2) • cz P + ggiA P * Lams P u := by
  unfold mt
  rw [lA_eq, lowering_constant_eq_shift, star_add, star_sub, star_neg, star_N, star_smul, star_cc, star_mul, star_Lam, star_G, G_sc, Lams_sc]
  congr 3
  simp

theorem x_N (u : ℂ) : nabA P * xA P u = xA P u * nabA P := (kap_nab P _).symm
theorem x_Ns (u : ℂ) : nabsA P * xA P u = xA P u * nabsA P := (kap_nabs P _).symm
theorem kap_g (f : Ty P → ℂ) : kap P f * ggA P = ggA P * kap P f := kap_sc P _ _
theorem kap_G (f : Ty P → ℂ) : kap P f * ggiA P = ggiA P * kap P f := kap_sc P _ _
theorem kap_cc (f : Ty P → ℂ) : kap P f * cc P = cc P * kap P f := by rw [cc_sc]; exact kap_sc P _ _
theorem kap_cz (f : Ty P → ℂ) : kap P f * cz P = cz P * kap P f := by rw [cz_sc]; exact kap_sc P _ _
theorem Lam_cc (u : ℂ) : abelian₂ P u * cc P = cc P * abelian₂ P u := by rw [cc_sc]; exact Lam_sc P _ _
theorem Lam_cz (u : ℂ) : abelian₂ P u * cz P = cz P * abelian₂ P u := by rw [cz_sc]; exact Lam_sc P _ _
theorem Lams_cc (u : ℂ) : Lams P u * cc P = cc P * Lams P u := by rw [cc_sc]; exact Lams_sc P _ _
theorem Lams_cz (u : ℂ) : Lams P u * cz P = cz P * Lams P u := by rw [cz_sc]; exact Lams_sc P _ _

theorem lowering_relation_diagonal_left (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    (u - v) • (t22 P u * lA P v - lA P v * t22 P u) = -(t22 P u * (lA P u - lA P v)) := by
  have h := commutator_identity_one (nabA P) (cc P) (ggA P) (ggiA P) (xA P u) (abelian₂ P u) (abelian₂ P v) (u + 1 / 2) (v + 1 / 2)
    (N_g P) (x_N P u) (gG P) (Gg P) (cc_g P) (kap_sc P _ _) (kap_sc P _ _) (kap_cc P _)
    (Lam_sc P _ _) (Lam_sc P _ _) (by rw [half]; exact L3.Lam1 P u v hu hv)
  rw [half] at h
  rw [t22, lA_eq, lA_eq, lowering_constant_eq_shift, lowering_constant_eq_shift]
  exact h

theorem lowering_relation_diagonal_right (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    (u - v) • (dA P u * lA P v - lA P v * dA P u) = dA P u * (lA P u - lA P v) := by
  have h := commutator_identity_two (nabA P) (cc P) (ggiA P) (kap P fun π => (xC P π (u + 1))⁻¹) (abelian₂ P u) (abelian₂ P v)
    (u + 1 / 2) (v + 1 / 2) (qC P u)
    (N_G P) (kap_nab P _).symm (G_cc P) (kap_sc P _ _) (kap_cc P _)
    (Lam_sc P _ _) (Lam_sc P _ _) (by rw [half]; exact L3.Lam2 P u v hu hv)
  rw [half] at h
  rw [dA, lA_eq, lA_eq, lowering_constant_eq_shift, lowering_constant_eq_shift]
  exact h

theorem commutator_l_sq (hC : SSComm) (hS : NabSS) (hP : P.OK) (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    (u - v) • (lA P u * lA P v - lA P v * lA P u) = (lA P u - lA P v) * (lA P u - lA P v) := by
  have h := raising_pair_relation (nabA P) (cc P) (ggiA P) (abelian₂ P u) (abelian₂ P v) (u + 1 / 2) (v + 1 / 2)
    (N_cc P) (N_G P) (N_Lam P hS u) (N_Lam P hS v) (G_cc P) (Lam_cc P u) (Lam_cc P v)
    (Lam_sc P _ _) (Lam_sc P _ _) (by rw [half]; exact L3.Lam3 P hC hP u v hu hv)
  rw [half] at h
  rw [lA_eq, lA_eq, lowering_constant_eq_shift, lowering_constant_eq_shift]
  exact h

theorem relD4core (hN : SSNorm) (hM : SSMixed) (hS : NabSS) (hK : Curvature) (hP : P.OK)
    (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    (u - v) • (mt P u * lA P v - lA P v * mt P u) = kap P (hh P v - hh P u) * (ggiA P * ggiA P) := by
  have hcurv : nabsA P * nabA P = nabA P * nabsA P +
      (kap P fun π => ((2 * aC P π * P.TT : ℝ) : ℂ)) * (ggiA P * ggiA P) := by
    rw [← mul_assoc, ← hK P]; abel
  have h := commutator_identity_four (nabA P) (nabsA P) (cc P) (cz P) (ggiA P) (kap P fun π => ((2 * aC P π * P.TT : ℝ) : ℂ))
    (Lams P u) (abelian₂ P v) (u + 1 / 2) (v + 1 / 2) (P.TT : ℂ) hcurv (Ns_cc P) (N_cz P) (N_G P) (Ns_G P)
    (Ns_Lam P hS v) (N_Lams P hS u) (G_cc P) (G_cz P) (cz_cc P) (Lam_cc P v) (Lam_cz P v) (Lam_sc P _ _)
    (Lams_cc P u) (Lams_cz P u) (Lams_sc P _ _)
  rw [mt_eq, lA_eq, lowering_constant_eq_shift, h, L4.Lam4 P hP u v hN hM]
  have e1 : ∀ f : Ty P → ℂ, ggiA P * (ggiA P * kap P f) = kap P f * (ggiA P * ggiA P) := fun f => by
    rw [← mul_assoc, G_sc, sc_mul, kap_sc]
  have e2 : ∀ z : ℂ, z • (ggiA P * ggiA P) = kap P (fun _ => z) * (ggiA P * ggiA P) := fun z => by
    have : kap P (fun _ => z) = algebraMap ℂ (A P) z := (kap P).commutes z
    rw [this, Algebra.smul_def]
  rw [e1, e2, ← add_mul, ← add_mul, ← map_add (f := _), ← map_add (f := _), ← smul_mul_assoc, ← map_smul]
  congr 2
  funext π
  have hs := MAx1.ModelAlgebraRelations.WB.scalar_partial_fraction_identity P hP π u v hu hv
  simp only [Pi.add_apply, Pi.smul_apply, Pi.sub_apply, smul_eq_mul, hh]
  rw [← hs]
  push_cast
  ring

theorem mixed_relation_diagonal_four (hN : SSNorm) (hM : SSMixed) (hS : NabSS) (hK : Curvature) (hP : P.OK)
    (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    (u - v) • (t22 P v * mt P u * lA P v * t22 P u - t22 P v * lA P v * mt P u * t22 P u) =
      dA P v * t22 P u - t22 P v * dA P u := by
  have h := relD4core P hN hM hS hK hP u v hu hv
  have e : (u - v) • (t22 P v * mt P u * lA P v * t22 P u - t22 P v * lA P v * mt P u * t22 P u) =
      t22 P v * ((u - v) • (mt P u * lA P v - lA P v * mt P u)) * t22 P u := by
    simp only [mul_sub, sub_mul, mul_smul_comm, smul_mul_assoc, mul_assoc]
  rw [e, h, t22, t22, xA, xA, absSand _ _ _ _ _ (gG P) (Gg P) (kap_sc P _ _) (kap_sc P _ _) (kap_sc P _ _) (kap_sc P _ _)]
  have e3 : dA P v * (ggA P * kap P fun π => xC P π u) = kap P fun π => qC P v * (xC P π (v + 1))⁻¹ * xC P π u := by
    rw [dA, smul_mul_assoc, mul_assoc, lc (kap_g P _), lc1 (Gg P), kap_mul, ← map_smul]
    congr 1
    funext π
    simp only [Pi.smul_apply, Pi.mul_apply, smul_eq_mul, mul_assoc]
  have e4 : (ggA P * kap P fun π => xC P π v) * dA P u = kap P fun π => xC P π v * (qC P u * (xC P π (u + 1))⁻¹) := by
    rw [dA, mul_smul_comm, mul_assoc, lc (kap_G P _), lc1 (gG P), kap_mul, ← map_smul]
    congr 1
    funext π
    simp only [Pi.smul_apply, Pi.mul_apply, smul_eq_mul, mul_left_comm]
  rw [e3, e4, kap_mul, kap_mul, ← map_sub]
  congr 1
  funext π
  have h1 := xC_ne P hu π
  have h2 := xC_ne P hv π
  have h3 := coordinate_shift_ne_zero P hu π
  have h4 := coordinate_shift_ne_zero P hv π
  simp only [Pi.mul_apply, Pi.sub_apply, hh]
  field_simp

theorem star_t22 (u : ℂ) : star (t22 P (star u)) = t22 P u := by
  rw [t22, t22, star_mul, star_g, xA, xA, star_kap, kap_g]
  congr 2
  funext π
  exact star_xC P π u

theorem star_dA (u : ℂ) : star (dA P (star u)) = dA P u := by
  rw [dA, dA, star_smul, star_qC, star_mul, star_G, star_kap, kap_G]
  congr 3
  funext π
  have : star u + 1 = star (u + 1) := by simp
  rw [star_inv₀, this, star_xC]

theorem star_lA (u : ℂ) : star (lA P (star u)) = mt P u := rfl

theorem commutator_t22_m (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    (u - v) • (t22 P u * mt P v - mt P v * t22 P u) = (mt P u - mt P v) * t22 P u := by
  have h := congrArg star (lowering_relation_diagonal_left P (star u) (star v) (good_star P hu) (good_star P hv))
  simp only [star_smul, star_sub, star_mul, star_neg, star_star, star_t22, star_lA] at h
  simp only [sub_mul, smul_sub] at h ⊢
  linear_combination (norm := module) (-1 : ℂ) • h

theorem commutator_d_m (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    (u - v) • (dA P u * mt P v - mt P v * dA P u) = -((mt P u - mt P v) * dA P u) := by
  have h := congrArg star (lowering_relation_diagonal_right P (star u) (star v) (good_star P hu) (good_star P hv))
  simp only [star_smul, star_sub, star_mul, star_star, star_dA, star_lA] at h
  simp only [sub_mul, smul_sub] at h ⊢
  linear_combination (norm := module) (-1 : ℂ) • h

theorem raising_relation_self (hC : SSComm) (hS : NabSS) (hP : P.OK) (u v : ℂ) (hu : Good P u) (hv : Good P v) :
    (u - v) • (mt P u * mt P v - mt P v * mt P u) = -((mt P u - mt P v) * (mt P u - mt P v)) := by
  have h := congrArg star (commutator_l_sq P hC hS hP (star u) (star v) (good_star P hu) (good_star P hv))
  simp only [star_smul, star_sub, star_mul, star_star, star_lA] at h
  simp only [mul_sub, sub_mul, smul_sub] at h ⊢
  linear_combination (norm := module) (-1 : ℂ) • h

theorem nf21 {u : ℂ} (hu : Good P u) : t21 P u = t22 P u * lA P u := by
  rw [t21, t22, lA_eq, diagonal_lowering_absorb (ggA P) (ggiA P) (xA P u) _ _ (gG P) (kap_G P _), L4.xLam P hu]

theorem nf12 {u : ℂ} (hu : Good P u) : t12 P u = mt P u * t22 P u := by
  rw [t12, t22, mt_eq, raising_operator_absorb _ _ _ _ _ _ _ (Ns_g P) (x_Ns P u) (Gg P) (cz_g P) (kap_cz P _).symm (Lams_sc P _ _),
    L4.Lamsx P hu, raising_constant_eq_shift]
  congr 4
  ring

theorem coordinate_commute_raising_constant (u v : ℂ) : xA P u * m0A P v = m0A P v * xA P u := by
  rw [raising_constant_eq_shift]
  simp only [mul_sub, sub_mul, mul_neg, neg_mul, mul_smul_comm, smul_mul_assoc, x_Ns]
  rw [xA, kap_cz]

theorem S12_commute_GGinv (u : ℂ) : S12 P u * ggiA P = ggiA P * S12 P u := by
  unfold S12
  rw [Finset.sum_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [mul_assoc, G_sc, Ss_sc, ← mul_assoc, kap_sc, mul_assoc]

theorem nf11 (hN : SSNorm) (hP : P.OK) {u : ℂ} (hu : Good P u) :
    t11 P u = dA P u + mt P u * t22 P u * lA P u := by
  rw [← nf12 P hu, t12, lA_eq, absN _ _ _ _ _ _ _ (coordinate_commute_raising_constant P u u) (kap_G P _) (S12_commute_GGinv P u), L4.xLam P hu,
    L4.upper_sum_mul_lambda P hP hu hN, t11, mul_add]
  have e : ggiA P * (kap P fun π => wC P π u) = dA P u + ggiA P * kap P fun π =>
      ∑ l ∈ Icc 1 (P.k - 1), ((Nrm P l π : ℝ) : ℂ) * xEx P {l} π u / (u + (rho P π l : ℂ) + 1) := by
    rw [dA, ← mul_smul_comm, ← map_smul, ← mul_add, ← map_add (f := _)]
    congr 2
    funext π
    rw [MAx1.ModelAlgebraRelations.WB.wC_eq P hP π u hu]
    simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, div_eq_mul_inv]
  rw [e]
  abel

theorem comm_tt (u v : ℂ) : t22 P v * t22 P u = t22 P u * t22 P v :=
  absCC _ _ _ _ rfl (kap_comm P _ _) (kap_g P _) (kap_g P _)

theorem comm_dd (u v : ℂ) : dA P v * dA P u = dA P u * dA P v := by
  simp only [dA, smul_mul_assoc, mul_smul_comm]
  rw [smul_comm, absCC _ _ _ _ rfl (kap_comm P _ _) (kap_G P _) (kap_G P _)]

theorem comm_dt (u v : ℂ) : dA P v * t22 P u = t22 P u * dA P v := by
  simp only [dA, t22, xA, smul_mul_assoc, mul_smul_comm]
  rw [absCC _ _ _ _ ((Gg P).trans (gG P).symm) (kap_comm P _ _) (kap_g P _) (kap_G P _)]

theorem generic (hN : SSNorm) (hC : SSComm) (hM : SSMixed) (hS : NabSS) (hK : Curvature) (hP : P.OK)
    (u v : ℂ) (hu : Good P u) (hv : Good P v) (h0 : u - v ≠ 0) (h1 : u - v ≠ 1) (h2 : u - v ≠ -1)
    (i j k l : Fin 2) :
    (u - v) • (QQr P u i j * QQr P v k l - QQr P v k l * QQr P u i j) =
      QQr P u k j * QQr P v i l - QQr P v k j * QQr P u i l := by
  have eU : ∀ {y : ℂ}, Good P y → QQr P y =
      !![dA P y + mt P y * t22 P y * lA P y, mt P y * t22 P y; t22 P y * lA P y, t22 P y] := fun {y} hy => by
    rw [QQr, nf11 P hN hP hy, nf12 P hy, nf21 P hy]
  have e : v - u = -(u - v) := by ring
  rw [eU hu, eU hv]
  refine MAx1.ModelAlgebraRelations.GA.gauss_rtt (u - v) h0 h1 h2 (t22 P u) (t22 P v) (dA P u) (dA P v) (lA P u) (lA P v) (mt P u) (mt P v)
    (comm_tt P u v) (comm_dd P u v) (comm_dt P u v) (comm_dt P v u)
    (lowering_relation_diagonal_left P u v hu hv) ?_ (lowering_relation_diagonal_right P u v hu hv) ?_ (commutator_t22_m P u v hu hv) ?_ (commutator_d_m P u v hu hv) ?_
    (commutator_l_sq P hC hS hP u v hu hv) (raising_relation_self P hC hS hP u v hu hv) (mixed_relation_diagonal_four P hN hM hS hK hP u v hu hv) ?_ i j k l
  · have h := lowering_relation_diagonal_left P v u hv hu
    rw [e] at h
    simp only [mul_sub, smul_sub, neg_smul] at h ⊢
    linear_combination (norm := module) (-1 : ℂ) • h
  · have h := lowering_relation_diagonal_right P v u hv hu
    rw [e] at h
    simp only [mul_sub, smul_sub, neg_smul] at h ⊢
    linear_combination (norm := module) (-1 : ℂ) • h
  · have h := commutator_t22_m P v u hv hu
    rw [e] at h
    simp only [sub_mul, smul_sub, neg_smul] at h ⊢
    linear_combination (norm := module) (-1 : ℂ) • h
  · have h := commutator_d_m P v u hv hu
    rw [e] at h
    simp only [sub_mul, smul_sub, neg_smul] at h ⊢
    linear_combination (norm := module) (-1 : ℂ) • h
  · have h := mixed_relation_diagonal_four P hN hM hS hK hP v u hv hu
    rw [e] at h
    simp only [smul_sub, neg_smul] at h ⊢
    linear_combination (norm := module) (-1 : ℂ) • h

theorem entries_of (hN : SSNorm) (hC : SSComm) (hM : SSMixed) (hS : NabSS) (hK : Curvature) : QQRTTEntries :=
  fun P hP => PC.entries_of_generic P fun u v hu hv h0 h1 h2 i j k l =>
    generic P hN hC hM hS hK hP u v hu hv h0 h1 h2 i j k l

end

end Formalism.FourierDecayAlt.P.Mx6

end

@[expose] public section

namespace Formalism.FourierDecayAlt.P.Mx6.PC

open Formalism.YangianSpanCharacter.T Formalism.FourierDecayAlt.W

section Entries

variable {B : Type} [Ring B]

theorem kronecker_E1_E2_apply (M N : Matrix (Fin 2) (Fin 2) B) (i k j l : Fin 2) :
    (E1 M * E2 N) (i, k) (j, l) = M i j * N k l :=
  Formalism.FourierDecayAlt.P.MAx1.ModelAlgebraRelations.PC.kronecker_E1_E2_apply M N i k j l

theorem kronecker_embed_mul_apply (M N : Matrix (Fin 2) (Fin 2) B) (i k j l : Fin 2) :
    (E2 N * E1 M) (i, k) (j, l) = N k l * M i j :=
  Formalism.FourierDecayAlt.P.MAx1.ModelAlgebraRelations.PC.kronecker_embed_mul_apply M N i k j l

theorem Pf_mul_apply (X : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) B) (i k : Fin 2) (p : Fin 2 × Fin 2) :
    (Pf B * X) (i, k) p = X (k, i) p :=
  Formalism.FourierDecayAlt.P.MAx1.ModelAlgebraRelations.PC.Pf_mul_apply X i k p

theorem mul_Pf_apply (X : Matrix (Fin 2 × Fin 2) (Fin 2 × Fin 2) B) (p : Fin 2 × Fin 2) (j l : Fin 2) :
    (X * Pf B) p (j, l) = X p (l, j) :=
  Formalism.FourierDecayAlt.P.MAx1.ModelAlgebraRelations.PC.mul_Pf_apply X p j l

end Entries

end Formalism.FourierDecayAlt.P.Mx6.PC

namespace Formalism.FourierDecayAlt.P

theorem transfer_rtt_entries : Formalism.FourierDecayAlt.M.QQRTTEntries :=
  Mx6.entries_of shift_norm_relation shift_commute_relation shift_mixed_relation nabla_shift_relation m_curvature_proof

end Formalism.FourierDecayAlt.P

module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffAtSecondCoordinate
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateSizesOfHypotheses
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPIntegralOfPlaces
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralAeConvergenceContinuity
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenDetBottomLeftNeZero, Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCoefficientHasCompactSupport

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenDetBottomLeftNeZero =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenDetBottomLeftNeZero", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffAtSecondCoordinate\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.PBI

open Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.U Formalism.FourierDecayAlt.P.Ux3 Formalism.FourierDecayAlt.P.PBI.Sm
open scoped ComplexConjugate ContDiff

noncomputable section

section msgen

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {x : E}
variable {m n : Type*} [Fintype m] [Fintype n]

theorem ms_neg {f : E → Matrix m n ℂ} (hf : MS f x) : MS (fun y => -f y) x :=
  fun i j => by simpa only [Matrix.neg_apply] using (hf i j).neg

theorem ms_csmul (c : ℂ) {f : E → Matrix m n ℂ} (hf : MS f x) : MS (fun y => c • f y) x :=
  ms_smul contDiffAt_const hf

theorem ms_fromBlocks {m₁ m₂ n₁ n₂ : Type*} [Fintype m₁] [Fintype m₂] [Fintype n₁] [Fintype n₂]
    {A : E → Matrix m₁ n₁ ℂ} {B : E → Matrix m₁ n₂ ℂ} {C : E → Matrix m₂ n₁ ℂ} {D : E → Matrix m₂ n₂ ℂ}
    (hA : MS A x) (hB : MS B x) (hC : MS C x) (hD : MS D x) :
    MS (fun y => Matrix.fromBlocks (A y) (B y) (C y) (D y)) x := by
  rintro (i | i) (l | l)
  · simpa using hA i l
  · simpa using hB i l
  · simpa using hC i l
  · simpa using hD i l

theorem ms_fromRows {m₁ m₂ : Type*} [Fintype m₁] [Fintype m₂]
    {A : E → Matrix m₁ n ℂ} {B : E → Matrix m₂ n ℂ} (hA : MS A x) (hB : MS B x) :
    MS (fun y => Matrix.fromRows (A y) (B y)) x := by
  rintro (i | i) l
  · simpa using hA i l
  · simpa using hB i l

theorem ms_fromCols {n₁ n₂ : Type*} [Fintype n₁] [Fintype n₂]
    {A : E → Matrix m n₁ ℂ} {B : E → Matrix m n₂ ℂ} (hA : MS A x) (hB : MS B x) :
    MS (fun y => Matrix.fromCols (A y) (B y)) x := by
  intro i l
  rcases l with l | l
  · simpa using hA i l
  · simpa using hB i l

end msgen

section chart

variable {k j ρ : ℕ}

theorem measurable_block_three {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {x : E}
    {A11 : E → Matrix (Fin j) (Fin j) ℂ} {A12 : E → Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ}
    {A13 : E → Matrix (Fin j) (Fin j) ℂ} {A21 : E → Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ} {A22 : E → B.Mat k ρ}
    {A23 : E → Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ} {A31 : E → Matrix (Fin j) (Fin j) ℂ}
    {A32 : E → Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ} {A33 : E → Matrix (Fin j) (Fin j) ℂ}
    (h11 : MS A11 x) (h12 : MS A12 x) (h13 : MS A13 x) (h21 : MS A21 x) (h22 : MS A22 x) (h23 : MS A23 x)
    (h31 : MS A31 x) (h32 : MS A32 x) (h33 : MS A33 x) :
    MS (fun y => blk3 (k := k) (j := j) (ρ := ρ) (A11 y) (A12 y) (A13 y) (A21 y) (A22 y) (A23 y) (A31 y) (A32 y)
      (A33 y)) x := by
  intro i l
  have h := ms_fromBlocks (ms_fromBlocks h11 h12 h21 h22) (ms_fromRows h13 h23) (ms_fromCols h31 h32) h33
    ((eB k j ρ).symm i) ((eB k j ρ).symm l)
  simpa [blk3, Matrix.reindex_apply, Matrix.submatrix_apply] using h

theorem ms_ofMt (y₀ : Mt k j) : MS (fun y : Mt k j => Matrix.of y) y₀ := fun i l => by
  have h := contDiffAt_pi.1 (contDiffAt_pi.1 (contDiffAt_id (𝕜 := ℝ) (n := ∞) (x := y₀)) i) l
  simpa using h

def bk11 (M : B.Mat k (j + ρ)) : Matrix (Fin j) (Fin j) ℂ :=
  M.submatrix (fun a => eB k j ρ (Sum.inl (Sum.inl a))) (fun b => eB k j ρ (Sum.inl (Sum.inl b)))
def bk21 (M : B.Mat k (j + ρ)) : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ :=
  M.submatrix (fun a => eB k j ρ (Sum.inl (Sum.inr a))) (fun b => eB k j ρ (Sum.inl (Sum.inl b)))
def bk22 (M : B.Mat k (j + ρ)) : B.Mat k ρ :=
  M.submatrix (fun a => eB k j ρ (Sum.inl (Sum.inr a))) (fun b => eB k j ρ (Sum.inl (Sum.inr b)))
def bk31 (M : B.Mat k (j + ρ)) : Matrix (Fin j) (Fin j) ℂ :=
  M.submatrix (fun a => eB k j ρ (Sum.inr a)) (fun b => eB k j ρ (Sum.inl (Sum.inl b)))
def bk32 (M : B.Mat k (j + ρ)) : Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ :=
  M.submatrix (fun a => eB k j ρ (Sum.inr a)) (fun b => eB k j ρ (Sum.inl (Sum.inr b)))
def bk33 (M : B.Mat k (j + ρ)) : Matrix (Fin j) (Fin j) ℂ :=
  M.submatrix (fun a => eB k j ρ (Sum.inr a)) (fun b => eB k j ρ (Sum.inr b))

def chC (M : B.Mat k (j + ρ)) : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ := -(bk21 M * (bk31 M)⁻¹)
def chS (M : B.Mat k (j + ρ)) : Matrix (Fin j) (Fin j) ℂ :=
  G.wMat j * (-(G.wMat j * (chC M)ᴴ * Hpk k ρ) * chC M - bk11 M * (bk31 M)⁻¹) +
    (1 / 2 : ℂ) • ((chC M)ᴴ * Hpk k ρ * chC M)

def chC' (M : B.Mat k (j + ρ)) : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ :=
  -(Hpk k ρ * ((bk31 M)⁻¹ * bk32 M)ᴴ * G.wMat j)
def chS' (M : B.Mat k (j + ρ)) : Matrix (Fin j) (Fin j) ℂ :=
  G.wMat j * ((bk31 M)⁻¹ * bk33 M) + (1 / 2 : ℂ) • ((chC' M)ᴴ * Hpk k ρ * chC' M)
def chX (M : B.Mat k (j + ρ)) : RC k j ρ := (Matrix.of.symm (chC M), skewCoords (chS M))
def chX' (M : B.Mat k (j + ρ)) : RC k j ρ := (Matrix.of.symm (chC' M), skewCoords (chS' M))

def chZ (M : B.Mat k (j + ρ)) : Matrix (Fin j) (Fin j) ℂ := G.wMat j * bk31 M
def chMu (M : B.Mat k (j + ρ)) : B.Mat k ρ := bk22 (Rn k j ρ (chX M) * M * (Rn k j ρ (chX' M))⁻¹)

def chart (y : Mt k (j + ρ)) : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ) :=
  ((chX (Matrix.of y), chX' (Matrix.of y)), (Matrix.of.symm (chZ (Matrix.of y)), Matrix.of.symm (chMu (Matrix.of y))))

end chart

section smooth

variable {k j ρ : ℕ}

theorem ms_skewOfCoords {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {x : E}
    {S : E → Matrix (Fin j) (Fin j) ℂ} (hS : MS S x) : MS (fun y => skewOf (skewCoords (S y))) x := by
  intro a b
  have e : (fun y => skewOf (skewCoords (S y)) a b) = fun y =>
      (if a < b then S y a b else 0) - (if b < a then conj (S y b a) else 0) +
        (if a = b then Complex.I * (((S y a a).im : ℝ) : ℂ) else 0) := by
    funext y
    simp only [skewOf, skewCoords, G.strictUpper, Matrix.add_apply, Matrix.sub_apply, Matrix.of_apply,
      Matrix.conjTranspose_apply, Matrix.diagonal_apply]
    by_cases hab : a < b
    · have hba : ¬ b < a := fun h => absurd (lt_trans hab h) (lt_irrefl a)
      have hne : a ≠ b := ne_of_lt hab
      simp [hab, hba, hne]
    · by_cases hba : b < a
      · have hne : a ≠ b := ne_of_gt hba
        simp [hab, hba, hne]
      · have hab' : a = b := le_antisymm (not_lt.1 hba) (not_lt.1 hab)
        subst hab'
        simp
  rw [e]
  refine ContDiffAt.add (ContDiffAt.sub ?_ ?_) ?_
  · split_ifs
    · exact hS a b
    · exact contDiffAt_const
  · split_ifs
    · exact cd_conj (hS b a)
    · exact contDiffAt_const
  · split_ifs
    · exact contDiffAt_const.mul (cd_ofReal ((Complex.imCLM.contDiff (n := ∞)).contDiffAt.comp _ (hS a a)))
    · exact contDiffAt_const

theorem ms_rn {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {x : E}
    {C : E → Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ} {S : E → Matrix (Fin j) (Fin j) ℂ} (hC : MS C x) (hS : MS S x) :
    MS (fun y => Rn k j ρ (Matrix.of.symm (C y), skewCoords (S y))) x := by
  simp only [rn_eq, Equiv.apply_symm_apply]
  refine measurable_block_three (ms_const _) ?_ ?_ (ms_const _) (ms_const _) hC (ms_const _) (ms_const _) (ms_const _)
  · exact ms_neg (ms_mul (ms_mul (ms_const _) (ms_conjT hC)) (ms_const _))
  · exact ms_mul (ms_const _) (ms_add (ms_csmul _ (ms_mul (ms_mul (ms_conjT hC) (ms_const _)) hC))
      (ms_skewOfCoords hS))

theorem ms_rn_inv {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {x : E}
    {C : E → Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ} {S : E → Matrix (Fin j) (Fin j) ℂ} (hC : MS C x) (hS : MS S x) :
    MS (fun y => (Rn k j ρ (Matrix.of.symm (C y), skewCoords (S y)))⁻¹) x := by
  simp only [rn_eq, uni_inv, Equiv.apply_symm_apply]
  have ha := ms_neg (ms_mul (ms_mul (ms_const (G.wMat j)) (ms_conjT hC)) (ms_const (Hpk k ρ)))
  have hb := ms_mul (ms_const (G.wMat j)) (ms_add (ms_csmul (-(1 / 2 : ℂ))
    (ms_mul (ms_mul (ms_conjT hC) (ms_const (Hpk k ρ))) hC)) (ms_skewOfCoords hS))
  exact measurable_block_three (ms_const _) (ms_neg ha) (ms_sub (ms_mul ha hC) hb) (ms_const _) (ms_const _) (ms_neg hC)
    (ms_const _) (ms_const _) (ms_const _)

theorem chart_contDiffAt (y₀ : Mt k (j + ρ)) (h₀ : (bk31 (Matrix.of y₀)).det ≠ 0) :
    ContDiffAt ℝ ∞ (chart (k := k) (j := j) (ρ := ρ)) y₀ := by
  have hM := ms_ofMt (k := k) (j := j + ρ) y₀
  have h11 : MS (fun y : Mt k (j + ρ) => bk11 (Matrix.of y)) y₀ := ms_submatrix hM _ _
  have h21 : MS (fun y : Mt k (j + ρ) => bk21 (Matrix.of y)) y₀ := ms_submatrix hM _ _
  have h31 : MS (fun y : Mt k (j + ρ) => bk31 (Matrix.of y)) y₀ := ms_submatrix hM _ _
  have h32 : MS (fun y : Mt k (j + ρ) => bk32 (Matrix.of y)) y₀ := ms_submatrix hM _ _
  have h33 : MS (fun y : Mt k (j + ρ) => bk33 (Matrix.of y)) y₀ := ms_submatrix hM _ _
  have hinv : MS (fun y : Mt k (j + ρ) => (bk31 (Matrix.of y))⁻¹) y₀ := ms_inv h31 h₀
  have hC : MS (fun y : Mt k (j + ρ) => chC (Matrix.of y)) y₀ := ms_neg (ms_mul h21 hinv)
  have hS : MS (fun y : Mt k (j + ρ) => chS (Matrix.of y)) y₀ :=
    ms_add (ms_mul (ms_const _) (ms_sub (ms_mul (ms_neg (ms_mul (ms_mul (ms_const _) (ms_conjT hC))
      (ms_const _))) hC) (ms_mul h11 hinv))) (ms_csmul _ (ms_mul (ms_mul (ms_conjT hC) (ms_const _)) hC))
  have hC' : MS (fun y : Mt k (j + ρ) => chC' (Matrix.of y)) y₀ :=
    ms_neg (ms_mul (ms_mul (ms_const _) (ms_conjT (ms_mul hinv h32))) (ms_const _))
  have hS' : MS (fun y : Mt k (j + ρ) => chS' (Matrix.of y)) y₀ :=
    ms_add (ms_mul (ms_const _) (ms_mul hinv h33)) (ms_csmul _ (ms_mul (ms_mul (ms_conjT hC') (ms_const _)) hC'))
  have hZ : MS (fun y : Mt k (j + ρ) => chZ (Matrix.of y)) y₀ := ms_mul (ms_const _) h31
  have hMu : MS (fun y : Mt k (j + ρ) => chMu (Matrix.of y)) y₀ :=
    ms_submatrix (ms_mul (ms_mul (ms_rn hC hS) hM) (ms_rn_inv hC' hS')) _ _
  have hX : ∀ {Cf : Mt k (j + ρ) → Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ}
      {Sf : Mt k (j + ρ) → Matrix (Fin j) (Fin j) ℂ}, MS Cf y₀ → MS Sf y₀ →
      ContDiffAt ℝ ∞ (fun y => ((Matrix.of.symm (Cf y), skewCoords (Sf y)) : RC k j ρ)) y₀ := by
    intro Cf Sf hCf hSf
    refine ContDiffAt.prodMk ?_ (ContDiffAt.prodMk ?_ ?_)
    · exact contDiffAt_pi.2 fun i => contDiffAt_pi.2 fun a => by simpa using hCf i a
    · exact contDiffAt_pi.2 fun q => by simpa [skewCoords] using hSf q.1.1 q.1.2
    · exact contDiffAt_pi.2 fun i => by
        have h := (Complex.imCLM.contDiff (n := ∞)).contDiffAt.comp _ (hSf i i)
        simp only [Function.comp_def, Complex.imCLM_apply] at h
        simpa [skewCoords] using h
  refine ContDiffAt.prodMk (ContDiffAt.prodMk (hX hC hS) (hX hC' hS')) (ContDiffAt.prodMk ?_ ?_)
  · exact contDiffAt_pi.2 fun i => contDiffAt_pi.2 fun a => by simpa using hZ i a
  · exact contDiffAt_pi.2 fun i => contDiffAt_pi.2 fun a => by simpa using hMu i a

theorem chart_contDiffOn :
    ContDiffOn ℝ ∞ (chart (k := k) (j := j) (ρ := ρ)) {y | (bk31 (Matrix.of y)).det ≠ 0} :=
  fun y hy => (chart_contDiffAt y hy).contDiffWithinAt

theorem isOpen_det_bottom_left_ne_zero : IsOpen {y : Mt k (j + ρ) | (bk31 (Matrix.of y)).det ≠ 0} := by
  have hc : Continuous fun y : Mt k (j + ρ) => (bk31 (Matrix.of y)).det := by
    unfold bk31
    fun_prop
  exact isOpen_ne_fun hc continuous_const

end smooth

section ident

variable {k j ρ : ℕ}

section blocks
variable (A11 : Matrix (Fin j) (Fin j) ℂ) (A12 : Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ) (A13 : Matrix (Fin j) (Fin j) ℂ)
  (A21 : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ) (A22 : B.Mat k ρ) (A23 : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ)
  (A31 : Matrix (Fin j) (Fin j) ℂ) (A32 : Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ) (A33 : Matrix (Fin j) (Fin j) ℂ)

theorem block_three_top_left : bk11 (blk3 A11 A12 A13 A21 A22 A23 A31 A32 A33) = A11 := by ext a b; simp [bk11, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]
theorem block_three_middle_left : bk21 (blk3 A11 A12 A13 A21 A22 A23 A31 A32 A33) = A21 := by ext a b; simp [bk21, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]
theorem block_three_center : bk22 (blk3 A11 A12 A13 A21 A22 A23 A31 A32 A33) = A22 := by ext a b; simp [bk22, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]
theorem block_three_bottom_left : bk31 (blk3 A11 A12 A13 A21 A22 A23 A31 A32 A33) = A31 := by
  ext a b; simp [bk31, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply, Matrix.fromCols_apply_inl]
theorem block_three_bottom_center : bk32 (blk3 A11 A12 A13 A21 A22 A23 A31 A32 A33) = A32 := by
  ext a b; simp [bk32, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply, Matrix.fromCols_apply_inr]
theorem block_three_bottom_right : bk33 (blk3 A11 A12 A13 A21 A22 A23 A31 A32 A33) = A33 := by ext a b; simp [bk33, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]

end blocks

theorem skewCoords_skewOf {n : ℕ} (q : (G.UT n → ℂ) × (Fin n → ℝ)) : skewCoords (skewOf q) = q := by
  apply skewOf_inj
  exact skewOf_coords _ (skewOf_conjTranspose _)

theorem chart_spec (g : B.Mat k (j + ρ)) (hg : g ∈ B.GV k (j + ρ)) (hD : DjU k j ρ g ≠ 0) :
    (chZ g).det ≠ 0 ∧ chMu g ∈ B.GV k ρ ∧
      g = (Rn k j ρ (chX g))⁻¹ * mMap k j ρ (chZ g) (chMu g) * Rn k j ρ (chX' g) := by
  obtain ⟨x, x', Z, γ, hZ, hγ, hgeq⟩ := bigCell_exists g hg hD
  suffices hx : chX g = x ∧ chX' g = x' ∧ chZ g = Z ∧ chMu g = γ by
    obtain ⟨h1, h2, h3, h4⟩ := hx
    rw [h1, h2, h3, h4]
    exact ⟨hZ, hγ, hgeq⟩
  have hb : g = blk3
      ((-(G.wMat j * (Matrix.of x.1)ᴴ * Hpk k ρ) * Matrix.of x.1 -
          G.wMat j * (-(1 / 2 : ℂ) • ((Matrix.of x.1)ᴴ * Hpk k ρ * Matrix.of x.1) + skewOf x.2)) * (G.wMat j * Z))
      ((-(G.wMat j * (Matrix.of x.1)ᴴ * Hpk k ρ) * Matrix.of x.1 -
          G.wMat j * (-(1 / 2 : ℂ) • ((Matrix.of x.1)ᴴ * Hpk k ρ * Matrix.of x.1) + skewOf x.2)) * (G.wMat j * Z) *
          -(G.wMat j * (Matrix.of x'.1)ᴴ * Hpk k ρ) + - -(G.wMat j * (Matrix.of x.1)ᴴ * Hpk k ρ) * γ)
      ((-(G.wMat j * (Matrix.of x.1)ᴴ * Hpk k ρ) * Matrix.of x.1 -
          G.wMat j * (-(1 / 2 : ℂ) • ((Matrix.of x.1)ᴴ * Hpk k ρ * Matrix.of x.1) + skewOf x.2)) * (G.wMat j * Z) *
          (G.wMat j * (-(1 / 2 : ℂ) • ((Matrix.of x'.1)ᴴ * Hpk k ρ * Matrix.of x'.1) + skewOf x'.2)) +
        - -(G.wMat j * (Matrix.of x.1)ᴴ * Hpk k ρ) * γ * Matrix.of x'.1 + Zᴴ⁻¹ * G.wMat j)
      (-Matrix.of x.1 * (G.wMat j * Z))
      (-Matrix.of x.1 * (G.wMat j * Z) * -(G.wMat j * (Matrix.of x'.1)ᴴ * Hpk k ρ) + γ)
      (-Matrix.of x.1 * (G.wMat j * Z) *
          (G.wMat j * (-(1 / 2 : ℂ) • ((Matrix.of x'.1)ᴴ * Hpk k ρ * Matrix.of x'.1) + skewOf x'.2)) +
        γ * Matrix.of x'.1)
      (G.wMat j * Z) (G.wMat j * Z * -(G.wMat j * (Matrix.of x'.1)ᴴ * Hpk k ρ))
      (G.wMat j * Z * (G.wMat j * (-(1 / 2 : ℂ) • ((Matrix.of x'.1)ᴴ * Hpk k ρ * Matrix.of x'.1) + skewOf x'.2))) := by
    rw [hgeq, rn_eq, rn_eq, uni_inv]
    unfold mMap
    rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul]
    simp only [Matrix.one_mul, Matrix.mul_one, Matrix.zero_mul, Matrix.mul_zero, add_zero, zero_add]
  have hu : IsUnit (G.wMat j * Z).det := by
    rw [Matrix.det_mul]; exact (wMat_det j).mul (isUnit_iff_ne_zero.mpr hZ)
  have hWW : G.wMat j * G.wMat j = 1 := wMat_mul_self j
  have hHH : Hpk k ρ * Hpk k ρ = 1 := hpk_sq k ρ
  have i1 : (G.wMat j * Z) * (G.wMat j * Z)⁻¹ = 1 := Matrix.mul_nonsing_inv _ hu
  have i2 : (G.wMat j * Z)⁻¹ * (G.wMat j * Z) = 1 := Matrix.nonsing_inv_mul _ hu
  have e31 : bk31 g = G.wMat j * Z := by rw [hb, block_three_bottom_left]
  have eZ : chZ g = Z := by
    unfold chZ; rw [e31, ← Matrix.mul_assoc, hWW, Matrix.one_mul]
  have eC : chC g = Matrix.of x.1 := by
    unfold chC
    rw [e31, hb, block_three_middle_left]
    simp only [Matrix.neg_mul, neg_neg, Matrix.mul_assoc, i1, Matrix.mul_one]
  have eC' : chC' g = Matrix.of x'.1 := by
    unfold chC'
    rw [e31, hb, block_three_bottom_center, ← Matrix.mul_assoc, i2, Matrix.one_mul]
    simp only [Matrix.conjTranspose_neg, Matrix.conjTranspose_mul, wMat_conjTranspose, _root_.Formalism.FourierDecayAlt.P.Ux4.hpk_conjTranspose,
      Matrix.conjTranspose_conjTranspose, Matrix.mul_neg, Matrix.neg_mul, neg_neg, ← Matrix.mul_assoc, hHH,
      Matrix.one_mul]
    rw [Matrix.mul_assoc, hWW, Matrix.mul_one]
  have eS' : chS' g = skewOf x'.2 := by
    unfold chS'
    rw [eC', e31, hb, block_three_bottom_right, ← Matrix.mul_assoc (G.wMat j * Z)⁻¹, i2, Matrix.one_mul, ← Matrix.mul_assoc, hWW,
      Matrix.one_mul]
    module
  have eS : chS g = skewOf x.2 := by
    unfold chS
    rw [eC, e31, hb, block_three_top_left, Matrix.mul_assoc _ (G.wMat j * Z), i1, Matrix.mul_one]
    simp only [Matrix.mul_neg, Matrix.mul_add, ← Matrix.mul_assoc, hWW,
      Matrix.one_mul, Matrix.mul_sub]
    module
  have eX : chX g = x := by
    unfold chX; rw [eC, eS, Equiv.symm_apply_apply, skewCoords_skewOf]
  have eX' : chX' g = x' := by
    unfold chX'; rw [eC', eS', Equiv.symm_apply_apply, skewCoords_skewOf]
  refine ⟨eX, eX', eZ, ?_⟩
  unfold chMu
  rw [eX, eX']
  conv_lhs => rw [hgeq]
  rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, _root_.Formalism.FourierDecayAlt.P.Ux4.Rn_mul_inv, Matrix.one_mul, Matrix.mul_assoc, _root_.Formalism.FourierDecayAlt.P.Ux4.Rn_mul_inv,
    Matrix.mul_one]
  unfold mMap
  rw [block_three_center]

theorem djU_eq (g : B.Mat k (j + ρ)) : DjU k j ρ g = (G.wMat j * bk31 g).det := by
  have h := hat_z_of_block3 (bk11 g) (g.submatrix (fun a => eB k j ρ (Sum.inl (Sum.inl a))) (fun b => eB k j ρ (Sum.inl (Sum.inr b))))
    (g.submatrix (fun a => eB k j ρ (Sum.inl (Sum.inl a))) (fun b => eB k j ρ (Sum.inr b))) (bk21 g) (bk22 g)
    (g.submatrix (fun a => eB k j ρ (Sum.inl (Sum.inr a))) (fun b => eB k j ρ (Sum.inr b))) (bk31 g) (bk32 g) (bk33 g)
  have e : g = blk3 (bk11 g) (g.submatrix (fun a => eB k j ρ (Sum.inl (Sum.inl a))) (fun b => eB k j ρ (Sum.inl (Sum.inr b))))
      (g.submatrix (fun a => eB k j ρ (Sum.inl (Sum.inl a))) (fun b => eB k j ρ (Sum.inr b))) (bk21 g) (bk22 g)
      (g.submatrix (fun a => eB k j ρ (Sum.inl (Sum.inr a))) (fun b => eB k j ρ (Sum.inr b))) (bk31 g) (bk32 g)
      (bk33 g) := block3_eta g
  unfold DjU
  conv_lhs => rw [e]
  rw [h]

theorem djU_ne_iff (g : B.Mat k (j + ρ)) : DjU k j ρ g ≠ 0 ↔ (bk31 g).det ≠ 0 := by
  rw [djU_eq, Matrix.det_mul]
  have hW := (wMat_det j).ne_zero
  constructor
  · intro h h0; exact h (by rw [h0, mul_zero])
  · intro h; exact mul_ne_zero hW h

end ident

end

end Formalism.FourierDecayAlt.P.PBI

namespace Formalism.FourierDecayAlt.P

open Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.U

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenDetBottomLeftNeZero =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCoefficientHasCompactSupport =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCoefficientHasCompactSupport", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenDetBottomLeftNeZero\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateSizesOfHypotheses\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralAeConvergenceContinuity\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPIntegralOfPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix MeasureTheory Filter Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.U Formalism.FourierDecayAlt.P.Ux3
open scoped ContDiff

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace Formalism.FourierDecayAlt.P.PBI

section mk

variable {k j ρ : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]


open Classical in
def chartCoefficient (b b' : RC k j ρ → ℝ) (Φ : (Fin j → Fin j → ℂ) → Mt k ρ → (Wq →L[ℂ] Wp)) (g : B.Mat k (j + ρ)) :
    Wq →L[ℂ] Wp :=
  if DjU k j ρ g ≠ 0 then
    ((b (chart (Matrix.of.symm g)).1.1 * b' (chart (Matrix.of.symm g)).1.2 : ℝ) : ℂ) •
      Φ (chart (Matrix.of.symm g)).2.1 (chart (Matrix.of.symm g)).2.2
  else 0

def psiC (q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ)) : B.Mat k (j + ρ) :=
  (Rn k j ρ q.1.1)⁻¹ * mMap k j ρ (Matrix.of q.2.1) (Matrix.of q.2.2) * Rn k j ρ q.1.2

theorem psiC_mem {q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ)} (hZ : (Matrix.of q.2.1).det ≠ 0)
    (hμ : Matrix.of q.2.2 ∈ B.GV k ρ) : psiC q ∈ B.GV k (j + ρ) := by
  exact Formalism.FourierDecayAlt.P.Ux6.gV_slice q.1.1 q.1.2 _ ((Formalism.FourierDecayAlt.P.Ux2.sliceMem k j ρ).1 _ _ hZ hμ)

theorem djU_psiC (q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ)) :
    DjU k j ρ (psiC q) = (Matrix.of q.2.1).det := by
  unfold DjU psiC
  rw [zhSlice]

theorem chart_psiC {q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ)} (hZ : (Matrix.of q.2.1).det ≠ 0)
    (hμ : Matrix.of q.2.2 ∈ B.GV k ρ) : chart (Matrix.of.symm (psiC q)) = q := by
  have hg := psiC_mem hZ hμ
  have hD : DjU k j ρ (psiC q) ≠ 0 := by rw [djU_psiC]; exact hZ
  obtain ⟨hZ', hμ', heq⟩ := chart_spec (psiC q) hg hD
  obtain ⟨q0, -, huniq⟩ := _root_.Formalism.FourierDecayAlt.P.Ux3.bigCellBij k j ρ (psiC q) hg hD
  have e1 := huniq ((q.1.1, q.1.2), (Matrix.of q.2.1, Matrix.of q.2.2)) ⟨hZ, hμ, rfl⟩
  have e2 := huniq ((chX (psiC q), chX' (psiC q)), (chZ (psiC q), chMu (psiC q))) ⟨hZ', hμ', heq⟩
  have e := e2.trans e1.symm
  simp only [Prod.mk.injEq] at e
  obtain ⟨⟨h1, h2⟩, h3, h4⟩ := e
  unfold chart
  simp only [Equiv.apply_symm_apply, h1, h2, h3, h4]
  rfl

theorem chartCoefficient_apply (b b' : RC k j ρ → ℝ) (Φ : (Fin j → Fin j → ℂ) → Mt k ρ → (Wq →L[ℂ] Wp))
    (q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ)) (hZ : (Matrix.of q.2.1).det ≠ 0)
    (hμ : Matrix.of q.2.2 ∈ B.GV k ρ) :
    chartCoefficient b b' Φ (psiC q) = ((b q.1.1 * b' q.1.2 : ℝ) : ℂ) • Φ q.2.1 q.2.2 := by
  unfold chartCoefficient
  rw [if_pos (by rw [djU_psiC]; exact hZ), chart_psiC hZ hμ]

end mk

end Formalism.FourierDecayAlt.P.PBI

namespace Formalism.FourierDecayAlt.P.PBI

section cont

open Formalism.FourierDecayAlt.P.PBI.Sm
open scoped ComplexConjugate

variable {k j ρ : ℕ}

theorem ms_skewOf {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {x : E}
    {f : E → (G.UT j → ℂ) × (Fin j → ℝ)} (hf : ContDiffAt ℝ ∞ f x) : MS (fun y => skewOf (f y)) x := by
  have hU : MS (fun y => G.strictUpper (f y).1) x := by
    intro a b
    simp only [G.strictUpper, Matrix.of_apply]
    by_cases h : a < b
    · simp only [h, dite_true]
      exact contDiffAt_pi.1 hf.fst ⟨(a, b), h⟩
    · simp only [h, dite_false]
      exact contDiffAt_const
  have hD : MS (fun y => Matrix.diagonal fun i => Complex.I * ((f y).2 i : ℂ)) x := by
    intro a b
    simp only [Matrix.diagonal_apply]
    by_cases h : a = b
    · subst h
      simp only [if_true]
      exact contDiffAt_const.mul (Complex.ofRealCLM.contDiff.contDiffAt.comp x (contDiffAt_pi.1 hf.snd a))
    · simp only [h, if_false]
      exact contDiffAt_const
  unfold skewOf
  exact ms_add (ms_sub hU (ms_conjT hU)) hD

theorem ms_ofC {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {x : E} {m n : ℕ}
    {f : E → (Fin m → Fin n → ℂ)} (hf : ContDiffAt ℝ ∞ f x) : MS (fun y => Matrix.of (f y)) x := by
  intro i j
  exact contDiffAt_pi.1 (contDiffAt_pi.1 hf i) j

theorem ms_rnC {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {x : E} {f : E → RC k j ρ}
    (hf : ContDiffAt ℝ ∞ f x) : MS (fun y => Rn k j ρ (f y)) x := by
  have h1 : MS (fun y => Matrix.of (f y).1) x := ms_ofC hf.fst
  have h2 : MS (fun y => skewOf (f y).2) x := ms_skewOf hf.snd
  unfold Rn
  refine measurable_block_three (ms_const _) ?_ ?_ (ms_const _) (ms_const _) h1 (ms_const _) (ms_const _) (ms_const _)
  · exact ms_neg (ms_mul (ms_mul (ms_const _) (ms_conjT h1)) (ms_const _))
  · exact ms_mul (ms_const _) (ms_add (ms_csmul _ (ms_mul (ms_mul (ms_conjT h1) (ms_const _)) h1)) h2)

theorem ms_rnC_inv {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {x : E} {f : E → RC k j ρ}
    (hf : ContDiffAt ℝ ∞ f x) : MS (fun y => (Rn k j ρ (f y))⁻¹) x := by
  exact ms_inv (ms_rnC hf) (Matrix.det_ne_zero_of_left_inverse (rn_inv_mul _))

theorem ms_psiC (q₀ : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ)) (h₀ : (Matrix.of q₀.2.1).det ≠ 0) :
    MS (fun q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ) => psiC q) q₀ := by
  have hZ : MS (fun q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ) => Matrix.of q.2.1) q₀ := ms_ofC (contDiffAt_fst.comp q₀ contDiffAt_snd)
  have hγ : MS (fun q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ) => Matrix.of q.2.2) q₀ := ms_ofC (contDiffAt_snd.comp q₀ contDiffAt_snd)
  have hR1 : MS (fun q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ) => (Rn k j ρ q.1.1)⁻¹) q₀ := ms_rnC_inv (contDiffAt_fst.comp q₀ contDiffAt_fst)
  have hR2 : MS (fun q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ) => Rn k j ρ q.1.2) q₀ := ms_rnC (contDiffAt_snd.comp q₀ contDiffAt_fst)
  have hZi : MS (fun q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ) => (Matrix.of q.2.1)ᴴ⁻¹) q₀ :=
    ms_inv (ms_conjT hZ) (by rw [Matrix.det_conjTranspose]; exact (star_ne_zero).2 h₀)
  have hM : MS (fun q : (RC k j ρ × RC k j ρ) × ((Fin j → Fin j → ℂ) × Mt k ρ) => mMap k j ρ (Matrix.of q.2.1) (Matrix.of q.2.2)) q₀ := by
    unfold mMap
    exact measurable_block_three (ms_const _) (ms_const _) (ms_mul hZi (ms_const _)) (ms_const _) hγ (ms_const _)
      (ms_mul (ms_const _) hZ) (ms_const _) (ms_const _)
  unfold psiC
  exact ms_mul (ms_mul hR1 hM) hR2

theorem continuousAt_of_ms {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] {x : E} {m n : Type*}
    [Fintype m] [Fintype n] {f : E → Matrix m n ℂ} (hf : MS f x) : ContinuousAt f x := by
  exact continuousAt_pi.2 fun i => continuousAt_pi.2 fun j => (hf i j).continuousAt

end cont

end Formalism.FourierDecayAlt.P.PBI

namespace Formalism.FourierDecayAlt.P.PBI

section cpt

open Formalism.FourierDecayAlt.P.PBI.Sm

variable {k j ρ : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem continuous_gN' : Continuous (fun g : B.Mat k (j + ρ) => B.gN g) := by
  unfold B.gN
  exact (continuous_finsetSum _ fun i _ => continuous_finsetSum _ fun j _ =>
    Complex.continuous_normSq.comp ((continuous_apply j).comp (continuous_apply i))).sqrt

theorem chartCoefficient_hasCompactSupport (Bs : B.RealPlaceData k (j + ρ) Wp Wq) (b b' : RC k j ρ → ℝ) (hb : ContDiff ℝ ∞ b)
    (hbc : HasCompactSupport b) (hb' : ContDiff ℝ ∞ b') (hb'c : HasCompactSupport b')
    (Φ : (Fin j → Fin j → ℂ) → Mt k ρ → (Wq →L[ℂ] Wp)) (V : Set ((Fin j → Fin j → ℂ) × Mt k ρ)) (hV : IsOpen V)
    (hΦ : ∀ q₀ ∈ V, Matrix.of q₀.2 ∈ B.GV k ρ → ∃ (U : Set ((Fin j → Fin j → ℂ) × Mt k ρ))
      (F : (Fin j → Fin j → ℂ) × Mt k ρ → (Wq →L[ℂ] Wp)), IsOpen U ∧ q₀ ∈ U ∧ ContDiffOn ℝ ∞ F U ∧
        ∀ q ∈ U, Matrix.of q.2 ∈ B.GV k ρ → Φ q.1 q.2 = F q)
    (K : Set ((Fin j → Fin j → ℂ) × Mt k ρ)) (hK : IsCompact K) (hKV : K ⊆ V)
    (hKpos : ∀ q ∈ K, (Matrix.of q.1).det ≠ 0 ∧
      0 < Gf k ρ (lowV k j ρ Bs.z) (lowV k j ρ Bs.z') (Matrix.of q.2))
    (hsupp : ∀ q, Matrix.of q.2 ∈ B.GV k ρ → q ∉ K → Φ q.1 q.2 = 0) :
    KB.CptCoef Bs (chartCoefficient b b' Φ) := by
  set KG : Set ((Fin j → Fin j → ℂ) × Mt k ρ) := K ∩ {q | Matrix.of q.2 ∈ B.GV k ρ} with hKG
  have hKGc : IsCompact KG := hK.inter_right (Formalism.FourierDecayAlt.P.B7.isClosed_GV.preimage continuous_snd)
  set C := psiC '' ((tsupport b ×ˢ tsupport b') ×ˢ KG) with hCdef
  have hCc : IsCompact C := by
    refine IsCompact.image_of_continuousOn ((hbc.isCompact.prod hb'c.isCompact).prod hKGc) fun q hq => ?_
    exact (continuousAt_of_ms (ms_psiC q (hKpos q.2 hq.2.1).1)).continuousWithinAt

  have hsub : ∀ g ∈ B.GV k (j + ρ), chartCoefficient b b' Φ g ≠ 0 → g ∈ C := by
    intro g hg hne
    have hD : DjU k j ρ g ≠ 0 := by
      intro h0; apply hne; unfold chartCoefficient; rw [if_neg (not_not.2 h0)]
    obtain ⟨hZ, hμ, heq⟩ := chart_spec g hg hD
    unfold chartCoefficient at hne
    rw [if_pos hD] at hne
    have hμ' : Matrix.of (chart (Matrix.of.symm g)).2.2 ∈ B.GV k ρ := by
      simpa only [chart, Equiv.apply_symm_apply] using hμ
    obtain ⟨hc, hΦne⟩ := smul_ne_zero_iff.1 hne
    have hc' : b (chart (Matrix.of.symm g)).1.1 * b' (chart (Matrix.of.symm g)).1.2 ≠ 0 := by exact_mod_cast hc
    obtain ⟨hb1, hb2⟩ := mul_ne_zero_iff.1 hc'
    have hK' : (chart (Matrix.of.symm g)).2 ∈ K := by
      by_contra hn; exact hΦne (hsupp _ hμ' hn)
    refine ⟨chart (Matrix.of.symm g), ⟨⟨subset_tsupport _ hb1, subset_tsupport _ hb2⟩, hK', hμ'⟩, ?_⟩
    unfold psiC chart
    simp only [Equiv.apply_symm_apply]
    exact heq.symm
  refine ⟨?_, ?_, ?_⟩
  ·
    intro g₀ hg₀
    by_cases hC : g₀ ∈ C
    · obtain ⟨q₁, hq₁, rfl⟩ := hC
      have hdet : (Matrix.of q₁.2.1).det ≠ 0 := (hKpos _ hq₁.2.1).1
      have hμ₁ : Matrix.of q₁.2.2 ∈ B.GV k ρ := hq₁.2.2
      have hch₁ := chart_psiC hdet hμ₁
      obtain ⟨UΦ, FΦ, hUΦ, hq₁U, hFΦ, hΦF⟩ := hΦ q₁.2 (hKV hq₁.2.1) hμ₁
      have hOpenD : IsOpen {g : B.Mat k (j + ρ) | (bk31 g).det ≠ 0} := isOpen_det_bottom_left_ne_zero
      have hchc : ContDiffOn ℝ ∞ (fun g : B.Mat k (j + ρ) => chart (Matrix.of.symm g))
          {g : B.Mat k (j + ρ) | (bk31 g).det ≠ 0} := chart_contDiffOn
      set U := {g : B.Mat k (j + ρ) | (bk31 g).det ≠ 0} ∩
        (fun g : B.Mat k (j + ρ) => (chart (Matrix.of.symm g)).2) ⁻¹' UΦ with hUdef
      have hUo : IsOpen U :=
        (hchc.continuousOn.snd).isOpen_inter_preimage hOpenD hUΦ
      have hD₁ : (bk31 (psiC q₁)).det ≠ 0 := (djU_ne_iff _).1 (by rw [djU_psiC]; exact hdet)
      refine ⟨U, fun g => ((b (chart (Matrix.of.symm g)).1.1 * b' (chart (Matrix.of.symm g)).1.2 : ℝ) : ℂ) •
        FΦ (chart (Matrix.of.symm g)).2, hUo, ⟨hD₁, by simp only [Set.mem_preimage, hch₁]; exact hq₁U⟩, ?_, ?_⟩
      · have hsub' : U ⊆ {g : B.Mat k (j + ρ) | (bk31 g).det ≠ 0} := Set.inter_subset_left
        have hchU := hchc.mono hsub'
        have hx : ContDiffOn ℝ ∞ (fun g : B.Mat k (j + ρ) => b (chart (Matrix.of.symm g)).1.1) U :=
          hb.comp_contDiffOn ((contDiff_fst.comp contDiff_fst).comp_contDiffOn hchU)
        have hx' : ContDiffOn ℝ ∞ (fun g : B.Mat k (j + ρ) => b' (chart (Matrix.of.symm g)).1.2) U :=
          hb'.comp_contDiffOn ((contDiff_snd.comp contDiff_fst).comp_contDiffOn hchU)
        have hF : ContDiffOn ℝ ∞ (fun g : B.Mat k (j + ρ) => FΦ (chart (Matrix.of.symm g)).2) U :=
          hFΦ.comp (contDiff_snd.comp_contDiffOn hchU) (fun g hg => hg.2)
        have hc : ContDiffOn ℝ ∞ (fun g : B.Mat k (j + ρ) =>
            ((b (chart (Matrix.of.symm g)).1.1 * b' (chart (Matrix.of.symm g)).1.2 : ℝ) : ℂ)) U :=
          Complex.ofRealCLM.contDiff.comp_contDiffOn (hx.mul hx')
        exact hc.smul hF
      · intro g hgU hgG
        have hD : DjU k j ρ g ≠ 0 := (djU_ne_iff g).2 hgU.1
        obtain ⟨-, hμ, -⟩ := chart_spec g hgG hD
        have hμ' : Matrix.of (chart (Matrix.of.symm g)).2.2 ∈ B.GV k ρ := by simpa only [chart, Equiv.apply_symm_apply] using hμ
        unfold chartCoefficient
        rw [if_pos hD, hΦF _ hgU.2 hμ']
    · refine ⟨Cᶜ, fun _ => 0, hCc.isClosed.isOpen_compl, hC, contDiffOn_const, fun g hgU hgG => ?_⟩
      by_contra hne
      exact hgU (hsub g hgG hne)
  · obtain ⟨R, hR⟩ := hCc.bddAbove_image continuous_gN'.continuousOn
    exact ⟨R, fun g hg hne => hR ⟨g, hsub g hg hne, rfl⟩⟩
  · by_cases hKe : KG.Nonempty
    · set hf : (Fin j → Fin j → ℂ) × Mt k ρ → ℝ := fun q =>
        Complex.normSq (Matrix.of q.1).det * Gf k ρ (lowV k j ρ Bs.z) (lowV k j ρ Bs.z') (Matrix.of q.2) with hfdef
      have hcont : Continuous hf := by
        have c1 : Continuous (fun q : (Fin j → Fin j → ℂ) × Mt k ρ => (Matrix.of q.1).det) :=
          Continuous.matrix_det continuous_fst
        have c2 : Continuous (fun q : (Fin j → Fin j → ℂ) × Mt k ρ =>
            Gf k ρ (lowV k j ρ Bs.z) (lowV k j ρ Bs.z') (Matrix.of q.2)) :=
          (Formalism.FourierDecayAlt.P.JCx1.contDiff_Gf (k := k) (r := ρ) _ _).continuous.comp continuous_snd
        exact (Complex.continuous_normSq.comp c1).mul c2
      obtain ⟨q₀, hq₀, hmin⟩ := hKGc.exists_isMinOn hKe hcont.continuousOn
      have hpos : 0 < hf q₀ := by
        obtain ⟨h1, h2⟩ := hKpos q₀ hq₀.1
        exact mul_pos (Complex.normSq_pos.2 h1) h2
      refine ⟨hf q₀, hpos, fun g hg hne => ?_⟩
      obtain ⟨q, hq, rfl⟩ := hsub g hg hne
      have e := _root_.Formalism.FourierDecayAlt.P.Ux3.gfSlice k j ρ Bs.z Bs.z' Bs.z_mem Bs.z'_mem q.1.1 q.1.2 (Matrix.of q.2.1) (Matrix.of q.2.2)
      unfold psiC
      rw [e]
      exact hmin hq.2
    · refine ⟨1, one_pos, fun g hg hne => ?_⟩
      obtain ⟨q, hq, -⟩ := hsub g hg hne
      exact absurd ⟨q.2, hq.2⟩ hKe

end cpt

end Formalism.FourierDecayAlt.P.PBI
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCoefficientHasCompactSupport =====

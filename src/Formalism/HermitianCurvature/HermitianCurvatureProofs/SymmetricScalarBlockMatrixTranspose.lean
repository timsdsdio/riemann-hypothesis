module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DirectionsInParabolic
public import Formalism.HermitianCurvature.StatementU
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MulDiagOfTriangular
public import Formalism.FormalDegreeBessel.FinalG
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open Matrix Formalism.FourierDecayAlt Formalism.FourierDecayAlt.U Formalism.REAL Formalism.QuantumDeterminants

noncomputable section

namespace Formalism.FourierDecayAlt.P.Ux2
section blocks3

variable {k j ρ : ℕ}




lemma mul_eB (M N : B.Mat k (j + ρ)) (x y : Ix k j ρ) :
    (M * N) (eB k j ρ x) (eB k j ρ y) =
      ∑ z : Ix k j ρ, M (eB k j ρ x) (eB k j ρ z) * N (eB k j ρ z) (eB k j ρ y) := by
  rw [Matrix.mul_apply]
  exact (Equiv.sum_comp (eB k j ρ) (fun z => M (eB k j ρ x) z * N z (eB k j ρ y))).symm




lemma wMat_mul_apply {d : ℕ} (M : Matrix (Fin d) (Fin d) ℂ) (i j : Fin d) :
    (G.wMat d * M) i j = M i.rev j := by
  simp [Matrix.mul_apply, G.wMat]


theorem hpkBlocks : HpkBlocks := by
  intro k j ρ
  apply _root_.Formalism.FourierDecayAlt.P.Ux4.ext_eB; intro x y
  rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]
  rcases x with (x|x)|x <;> rcases y with (y|y)|y <;>
    (have hx := x.isLt; have hy := y.isLt
     simp [Hpk, G.wMat, Fin.ext_iff, _root_.Formalism.FourierDecayAlt.P.Ux4.block_index_first_val_eq, _root_.Formalism.FourierDecayAlt.P.Ux4.block_index_middle_val_eq, _root_.Formalism.FourierDecayAlt.P.Ux4.block_index_last_val_eq, Fin.val_rev] <;> split_ifs <;> first | rfl | omega)

lemma block3_congr {A11 ToralGalois : Matrix (Fin j) (Fin j) ℂ} {A12 cocyclesToWachVectorsExponent : Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ}
    {A13 B13 : Matrix (Fin j) (Fin j) ℂ} {A21 B21 : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ} {A22 B22 : B.Mat k ρ}
    {A23 B23 : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ} {A31 B31 : Matrix (Fin j) (Fin j) ℂ}
    {A32 B32 : Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ} {A33 B33 : Matrix (Fin j) (Fin j) ℂ}
    (h11 : A11 = ToralGalois) (h12 : A12 = cocyclesToWachVectorsExponent) (h13 : A13 = B13) (h21 : A21 = B21) (h22 : A22 = B22) (h23 : A23 = B23)
    (h31 : A31 = B31) (h32 : A32 = B32) (h33 : A33 = B33) :
    blk3 A11 A12 A13 A21 A22 A23 A31 A32 A33 = blk3 ToralGalois cocyclesToWachVectorsExponent B13 B21 B22 B23 B31 B32 B33 := by
  subst_vars; rfl

lemma wMat_sq_assoc (d : ℕ) {n : Type*} (M : Matrix (Fin d) n ℂ) : G.wMat d * (G.wMat d * M) = M := by
  rw [← Matrix.mul_assoc, _root_.Formalism.FourierDecayAlt.P.Ux4.wMat_mul_self, Matrix.one_mul]

theorem sliceMem : SliceMem := by
  intro k j ρ
  refine ⟨?_, ?_, ?_⟩
  · intro Z γ hZ hγ
    have hγ' : γᴴ * Hpk k ρ * γ = Hpk k ρ := hγ
    have hZu : IsUnit Z.det := isUnit_iff_ne_zero.mpr hZ
    have hu : IsUnit Zᴴ.det := by
      rw [det_conjTranspose]; exact isUnit_iff_ne_zero.mpr (star_ne_zero.mpr hZ)
    show (mMap k j ρ Z γ)ᴴ * Hpk k (j + ρ) * mMap k j ρ Z γ = Hpk k (j + ρ)
    rw [hpkBlocks k j ρ]; unfold mMap
    rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_conjTranspose, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul]
    refine block3_congr ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ <;>
      simp [Matrix.mul_assoc, _root_.Formalism.FourierDecayAlt.P.Ux4.wMat_conjTranspose, Matrix.conjTranspose_nonsing_inv, wMat_sq_assoc, hγ', Matrix.nonsing_inv_mul _ hZu, Matrix.mul_nonsing_inv_cancel_left _ _ hu]
  · intro q hq
    have hqu : IsUnit q.det := isUnit_iff_ne_zero.mpr hq
    have hu : IsUnit qᴴ.det := by
      rw [det_conjTranspose]; exact isUnit_iff_ne_zero.mpr (star_ne_zero.mpr hq)
    show (muP k j ρ q)ᴴ * Hpk k (j + ρ) * muP k j ρ q = Hpk k (j + ρ)
    rw [hpkBlocks k j ρ]; unfold muP
    rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_conjTranspose, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul]
    refine block3_congr ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ <;>
      simp [Matrix.mul_assoc, _root_.Formalism.FourierDecayAlt.P.Ux4.wMat_conjTranspose, Matrix.conjTranspose_nonsing_inv, wMat_sq_assoc, Matrix.nonsing_inv_mul _ hqu, Matrix.mul_nonsing_inv_cancel_left _ _ hu]
  · intro y hy
    have hy' : yᴴ * Hpk k ρ * y = Hpk k ρ := hy
    show (embG k j ρ y)ᴴ * Hpk k (j + ρ) * embG k j ρ y = Hpk k (j + ρ)
    rw [hpkBlocks k j ρ]; unfold embG
    rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_conjTranspose, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul]
    refine block3_congr ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ <;> simp [hy']

section blocks
variable (M : B.Mat k (j + ρ))
def b11 : Matrix (Fin j) (Fin j) ℂ := Matrix.of fun a b => M (eB k j ρ (Sum.inl (Sum.inl a))) (eB k j ρ (Sum.inl (Sum.inl b)))
def b12 : Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ := Matrix.of fun a b => M (eB k j ρ (Sum.inl (Sum.inl a))) (eB k j ρ (Sum.inl (Sum.inr b)))
def b13 : Matrix (Fin j) (Fin j) ℂ := Matrix.of fun a b => M (eB k j ρ (Sum.inl (Sum.inl a))) (eB k j ρ (Sum.inr b))
def b21 : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ := Matrix.of fun a b => M (eB k j ρ (Sum.inl (Sum.inr a))) (eB k j ρ (Sum.inl (Sum.inl b)))
def b22 : B.Mat k ρ := Matrix.of fun a b => M (eB k j ρ (Sum.inl (Sum.inr a))) (eB k j ρ (Sum.inl (Sum.inr b)))
def b23 : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ := Matrix.of fun a b => M (eB k j ρ (Sum.inl (Sum.inr a))) (eB k j ρ (Sum.inr b))
def b31 : Matrix (Fin j) (Fin j) ℂ := Matrix.of fun a b => M (eB k j ρ (Sum.inr a)) (eB k j ρ (Sum.inl (Sum.inl b)))
def b32 : Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ := Matrix.of fun a b => M (eB k j ρ (Sum.inr a)) (eB k j ρ (Sum.inl (Sum.inr b)))
def b33 : Matrix (Fin j) (Fin j) ℂ := Matrix.of fun a b => M (eB k j ρ (Sum.inr a)) (eB k j ρ (Sum.inr b))

lemma block3_eta : M = blk3 (b11 M) (b12 M) (b13 M) (b21 M) (b22 M) (b23 M) (b31 M) (b32 M) (b33 M) := by
  apply _root_.Formalism.FourierDecayAlt.P.Ux4.ext_eB; intro x y; rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]
  rcases x with (x|x)|x <;> rcases y with (y|y)|y <;> rfl
end blocks

lemma block3_injective {A11 ToralGalois : Matrix (Fin j) (Fin j) ℂ} {A12 cocyclesToWachVectorsExponent : Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ}
    {A13 B13 : Matrix (Fin j) (Fin j) ℂ} {A21 B21 : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ} {A22 B22 : B.Mat k ρ}
    {A23 B23 : Matrix (Fin (2 * ρ + k + 1)) (Fin j) ℂ} {A31 B31 : Matrix (Fin j) (Fin j) ℂ}
    {A32 B32 : Matrix (Fin j) (Fin (2 * ρ + k + 1)) ℂ} {A33 B33 : Matrix (Fin j) (Fin j) ℂ}
    (h : blk3 A11 A12 A13 A21 A22 A23 A31 A32 A33 = blk3 ToralGalois cocyclesToWachVectorsExponent B13 B21 B22 B23 B31 B32 B33) :
    A11 = ToralGalois ∧ A12 = cocyclesToWachVectorsExponent ∧ A13 = B13 ∧ A21 = B21 ∧ A22 = B22 ∧ A23 = B23 ∧ A31 = B31 ∧ A32 = B32 ∧ A33 = B33 := by
  have e : ∀ x y, blk3 A11 A12 A13 A21 A22 A23 A31 A32 A33 (eB k j ρ x) (eB k j ρ y) =
      blk3 ToralGalois cocyclesToWachVectorsExponent B13 B21 B22 B23 B31 B32 B33 (eB k j ρ x) (eB k j ρ y) := fun x y => by rw [h]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> ext a b
  · simpa [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply] using e (Sum.inl (Sum.inl a)) (Sum.inl (Sum.inl b))
  · simpa [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply] using e (Sum.inl (Sum.inl a)) (Sum.inl (Sum.inr b))
  · simpa [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply] using e (Sum.inl (Sum.inl a)) (Sum.inr b)
  · simpa [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply] using e (Sum.inl (Sum.inr a)) (Sum.inl (Sum.inl b))
  · simpa [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply] using e (Sum.inl (Sum.inr a)) (Sum.inl (Sum.inr b))
  · simpa [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply] using e (Sum.inl (Sum.inr a)) (Sum.inr b)
  · simpa [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply] using e (Sum.inr a) (Sum.inl (Sum.inl b))
  · simpa [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply] using e (Sum.inr a) (Sum.inl (Sum.inr b))
  · simpa [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply] using e (Sum.inr a) (Sum.inr b)

lemma rset_blocks {g : B.Mat k (j + ρ)} (hg : g ∈ Rset k j ρ) :
    b11 g = 1 ∧ b21 g = 0 ∧ b31 g = 0 ∧ b22 g = 1 ∧ b32 g = 0 := by
  obtain ⟨_, h1, h2⟩ := hg
  refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> ext a b
  · have := h1 (eB k j ρ (Sum.inl (Sum.inl a))) (eB k j ρ (Sum.inl (Sum.inl b))) (by rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_first_val_eq]; exact b.isLt)
    simpa [b11, Matrix.one_apply] using this
  · have := h1 (eB k j ρ (Sum.inl (Sum.inr a))) (eB k j ρ (Sum.inl (Sum.inl b))) (by rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_first_val_eq]; exact b.isLt)
    simpa [b21] using this
  · have := h1 (eB k j ρ (Sum.inr a)) (eB k j ρ (Sum.inl (Sum.inl b))) (by rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_first_val_eq]; exact b.isLt)
    simpa [b31] using this
  · have hb := b.isLt
    have := h2 (eB k j ρ (Sum.inl (Sum.inr a))) (eB k j ρ (Sum.inl (Sum.inr b))) (by rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_middle_val_eq]; omega)
      (by rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_middle_val_eq]; omega) (by rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_middle_val_eq]; omega)
    simpa [b22, Matrix.one_apply] using this
  · have hb := b.isLt
    have := h2 (eB k j ρ (Sum.inr a)) (eB k j ρ (Sum.inl (Sum.inr b))) (by rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_middle_val_eq]; omega)
      (by rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_middle_val_eq]; omega) (by rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_last_val_eq]; omega)
    simpa [b32] using this

lemma rset_of_blocks {g : B.Mat k (j + ρ)} (hG : g ∈ B.GV k (j + ρ)) (h11 : b11 g = 1) (h21 : b21 g = 0)
    (h31 : b31 g = 0) (h22 : b22 g = 1) (h32 : b32 g = 0) : g ∈ Rset k j ρ := by
  refine ⟨hG, ?_, ?_⟩
  · intro i b hb
    obtain ⟨x, rfl⟩ := (eB k j ρ).surjective i
    obtain ⟨y, rfl⟩ := (eB k j ρ).surjective b
    rcases y with (y|y)|y
    · rcases x with (x|x)|x
      · have := congrFun (congrFun h11 x) y; simpa [b11, Matrix.one_apply] using this
      · have := congrFun (congrFun h21 x) y; simpa [b21] using this
      · have := congrFun (congrFun h31 x) y; simpa [b31] using this
    · rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_middle_val_eq] at hb; omega
    · rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_last_val_eq] at hb; omega
  · intro i b hb1 hb2 hi
    obtain ⟨x, rfl⟩ := (eB k j ρ).surjective i
    obtain ⟨y, rfl⟩ := (eB k j ρ).surjective b
    rcases y with (y|y)|y
    · rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_first_val_eq] at hb1; have := y.isLt; omega
    · rcases x with (x|x)|x
      · rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_first_val_eq] at hi; have := x.isLt; omega
      · have := congrFun (congrFun h22 x) y; simpa [b22, Matrix.one_apply] using this
      · have := congrFun (congrFun h32 x) y; simpa [b32] using this
    · rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_last_val_eq] at hb2; omega

lemma rset_sub_nset : Rset k j ρ ⊆ Nset k (j + ρ) := by
  rintro g ⟨hG, h1, h2⟩
  refine ⟨hG, ?_, ?_⟩
  · intro a i hai
    by_cases ha : a.val < j
    · exact h1 i (eI k (j + ρ) a) ha
    · have hai' : a.val ≤ i.val := hai
      have := a.isLt
      exact h2 i (eI k (j + ρ) a) (show j ≤ a.val by omega) (show a.val < j + (2 * ρ + k + 1) by omega) (by omega)
  · intro i b hb1 hb2 hi
    exact h2 i b (by omega) (by omega) (by omega)


lemma skewOf_lt (q : (G.UT j → ℂ) × (Fin j → ℝ)) {a b : Fin j} (h : a < b) : skewOf q a b = q.1 ⟨(a, b), h⟩ := by
  simp [skewOf, G.strictUpper, h, not_lt.mpr h.le, ne_of_lt h, conjTranspose_apply]

lemma skewOf_diag (q : (G.UT j → ℂ) × (Fin j → ℝ)) (a : Fin j) : skewOf q a a = Complex.I * q.2 a := by
  simp [skewOf, G.strictUpper, conjTranspose_apply]

lemma rn_mem (x : RC k j ρ) : Rn k j ρ x ∈ B.GV k (j + ρ) := by
  have hH : (Hpk k ρ)ᴴ = Hpk k ρ := (hpkFacts k ρ).1
  have hS := _root_.Formalism.FourierDecayAlt.P.Ux4.skewOf_conjTranspose x.2
  show (Rn k j ρ x)ᴴ * Hpk k (j + ρ) * Rn k j ρ x = Hpk k (j + ρ)
  rw [hpkBlocks k j ρ]; unfold Rn
  rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_conjTranspose, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul]
  refine block3_congr ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ <;>
    simp [Matrix.mul_assoc, _root_.Formalism.FourierDecayAlt.P.Ux4.wMat_conjTranspose, wMat_sq_assoc, _root_.Formalism.FourierDecayAlt.P.Ux4.wMat_mul_self, hH, hS, Matrix.conjTranspose_smul] <;> module

lemma rn_rset (x : RC k j ρ) : Rn k j ρ x ∈ Rset k j ρ :=
  rset_of_blocks (rn_mem x) (by ext a b; simp [b11, Rn, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]) (by ext a b; simp [b21, Rn, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply])
    (by ext a b; simp [b31, Rn, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]) (by ext a b; simp [b22, Rn, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]) (by ext a b; simp [b32, Rn, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply])

lemma rn_injective : Function.Injective (Rn k j ρ) := by
  intro x y h
  unfold Rn at h
  obtain ⟨-, -, h13, -, -, h23, -, -, -⟩ := block3_injective h
  have h1 : x.1 = y.1 := by funext i a; exact congrFun (congrFun h23 i) a
  have hw := congrArg (G.wMat j * ·) h13
  simp only [wMat_sq_assoc] at hw
  rw [h1] at hw
  have hs : skewOf x.2 = skewOf y.2 := add_left_cancel hw
  have h2 : x.2 = y.2 := by
    refine Prod.ext ?_ ?_
    · funext p
      have := congrFun (congrFun hs p.1.1) p.1.2
      rw [skewOf_lt _ p.2, skewOf_lt _ p.2] at this
      exact this
    · funext a
      have := congrArg Complex.im (congrFun (congrFun hs a) a)
      rw [skewOf_diag, skewOf_diag] at this
      simpa using this
  exact Prod.ext h1 h2

lemma rset_sub_range {g : B.Mat k (j + ρ)} (hg : g ∈ Rset k j ρ) : ∃ x, Rn k j ρ x = g := by
  obtain ⟨h11, h21, h31, h22, h32⟩ := rset_blocks hg
  have hH : (Hpk k ρ)ᴴ = Hpk k ρ := (hpkFacts k ρ).1
  have hG : gᴴ * Hpk k (j + ρ) * g = Hpk k (j + ρ) := hg.1
  have hgeta := block3_eta g
  rw [h11, h21, h31, h22, h32] at hgeta
  rw [hgeta, hpkBlocks k j ρ, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_conjTranspose, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul] at hG
  obtain ⟨-, -, e13, -, -, e23, -, -, e33⟩ := block3_injective hG
  simp [Matrix.mul_assoc] at e13 e23 e33
  have hD : b33 g = 1 := by
    have := congrArg (G.wMat j * ·) e13
    simpa [wMat_sq_assoc, _root_.Formalism.FourierDecayAlt.P.Ux4.wMat_mul_self] using this
  rw [hD] at e23 e33 hgeta
  simp at e23 e33
  have hA1 : (b12 g)ᴴ * G.wMat j = -(Hpk k ρ * b23 g) := eq_neg_of_add_eq_zero_right e23
  have hA2 : (b12 g)ᴴ = -(Hpk k ρ * b23 g * G.wMat j) := by
    have := congrArg (· * G.wMat j) hA1
    simpa [Matrix.mul_assoc, _root_.Formalism.FourierDecayAlt.P.Ux4.wMat_mul_self] using this
  have hA : b12 g = -(G.wMat j * (b23 g)ᴴ * Hpk k ρ) := by
    have := congrArg Matrix.conjTranspose hA2
    simpa [Matrix.mul_assoc, _root_.Formalism.FourierDecayAlt.P.Ux4.wMat_conjTranspose, hH] using this
  set S : Matrix (Fin j) (Fin j) ℂ := G.wMat j * b13 g + (1 / 2 : ℂ) • ((b23 g)ᴴ * Hpk k ρ * b23 g) with hSdef
  have hS : Sᴴ = -S := by
    rw [eq_neg_iff_add_eq_zero, hSdef]
    simp only [conjTranspose_add, conjTranspose_mul, conjTranspose_smul, _root_.Formalism.FourierDecayAlt.P.Ux4.wMat_conjTranspose, hH, conjTranspose_conjTranspose]
    have hstar : star (1 / 2 : ℂ) = 1 / 2 := by simp
    rw [hstar]
    rw [← e33]; simp only [Matrix.mul_assoc]; module
  have hSe : ∀ a b, star (S b a) = -S a b := fun a b => by
    have := congrFun (congrFun hS a) b
    simpa [conjTranspose_apply] using this
  let q : (G.UT j → ℂ) × (Fin j → ℝ) := (fun p => S p.1.1 p.1.2, fun a => (S a a).im)
  have hq : skewOf q = S := by
    ext a b
    rcases lt_trichotomy a b with h | h | h
    · rw [skewOf_lt _ h]
    · subst h
      rw [skewOf_diag]
      have hre : (S a a).re = 0 := by
        have := congrArg Complex.re (hSe a a)
        simp at this; linarith
      apply Complex.ext <;> simp [q, hre]
    · have h1 := congrFun (congrFun (_root_.Formalism.FourierDecayAlt.P.Ux4.skewOf_conjTranspose q) a) b
      simp only [conjTranspose_apply, Matrix.neg_apply] at h1
      rw [skewOf_lt _ h] at h1
      have h2 := hSe a b
      exact neg_inj.mp (h1.symm.trans h2)
  refine ⟨(Matrix.of.symm (b23 g), q), ?_⟩
  conv_rhs => rw [hgeta]
  unfold Rn
  refine block3_congr rfl ?_ ?_ rfl rfl ?_ rfl rfl rfl
  · simp [hA] <;> rfl
  · rw [hq, hSdef]
    simp only [Equiv.apply_symm_apply]
    have : (-(1 / 2 : ℂ)) • ((b23 g)ᴴ * Hpk k ρ * b23 g) +
        (G.wMat j * b13 g + (1 / 2 : ℂ) • ((b23 g)ᴴ * Hpk k ρ * b23 g)) = G.wMat j * b13 g := by module
    rw [this, wMat_sq_assoc]
  · simp <;> rfl

theorem radicalParam : RadicalParam := by
  intro k j ρ
  refine ⟨rn_injective, ?_, rset_sub_nset⟩
  ext g
  constructor
  · rintro ⟨x, rfl⟩; exact rn_rset x
  · intro hg; exact rset_sub_range hg

end blocks3

section tri

variable {p : ℕ}

def uniK (κ : Fin p → ℤ) (M : Matrix (Fin p) (Fin p) ℂ) : Prop :=
  (∀ i, M i i = 1) ∧ ∀ a b, κ a < κ b → M a b = 0

def kL (p : ℕ) : Fin p → ℤ := fun a => (a.val : ℤ)

def kU (p : ℕ) : Fin p → ℤ := fun a => -(a.val : ℤ)

lemma kL_lt {a b : Fin p} : kL p a < kL p b ↔ a < b := by
  simp only [kL, Nat.cast_lt]; exact Fin.lt_def.symm
lemma kU_lt {a b : Fin p} : kU p a < kU p b ↔ b < a := by
  simp only [kU, neg_lt_neg_iff, Nat.cast_lt]; exact Fin.lt_def.symm
lemma kU_inj : Function.Injective (kU p) := fun a b h => Fin.ext (by simpa [kU] using h)

lemma lower_iff (l : Matrix (Fin p) (Fin p) ℂ) : G.IsLowerUni l ↔ uniK (kL p) l := by
  simp only [G.IsLowerUni, G.IsUpperUni, uniK, transpose_apply, kL_lt]
  exact ⟨fun h => ⟨h.1, fun a b hab => h.2 b a hab⟩, fun h => ⟨h.1, fun a b hab => h.2 b a hab⟩⟩

lemma upper_iff (u : Matrix (Fin p) (Fin p) ℂ) : G.IsUpperUni u ↔ uniK (kU p) u := by
  simp [G.IsUpperUni, uniK, kU_lt]

lemma uniK_mul {κ : Fin p → ℤ} (hκ : Function.Injective κ) {M N : Matrix (Fin p) (Fin p) ℂ}
    (hM : uniK κ M) (hN : uniK κ N) : uniK κ (M * N) := by
  refine ⟨fun i => by rw [_root_.GlobalTheory.TriangularDiagonal.mul_diag_of_triangular hκ hM.2 hN.2, hM.1, hN.1, one_mul], fun a b hab => ?_⟩
  rw [Matrix.mul_apply]
  refine Finset.sum_eq_zero fun c _ => ?_
  by_cases h : κ a < κ c
  · rw [hM.2 a c h, zero_mul]
  · rw [hN.2 c b (lt_of_le_of_lt (not_lt.mp h) hab), mul_zero]

lemma upK_unit {U : Matrix (Fin p) (Fin p) ℂ} (h : uniK (kU p) U) : IsUnit U.det := by
  rw [Matrix.det_of_isUpperTriangular (fun i j hij => h.2 i j (kU_lt.mpr hij))]
  simp [h.1]

lemma permutationMatrix_mul_apply (σ : Equiv.Perm (Fin p)) (M : Matrix (Fin p) (Fin p) ℂ) (a b : Fin p) :
    (wP σ * M) a b = M (σ a) b := by
  simp [wP, Matrix.mul_apply]

lemma mul_wP_apply (σ : Equiv.Perm (Fin p)) (M : Matrix (Fin p) (Fin p) ℂ) (a b : Fin p) :
    (M * wP σ) a b = M a (σ.symm b) := by
  simp [wP, Matrix.mul_apply, ← Equiv.eq_symm_apply]

lemma permutationMatrix_mul_symm (σ : Equiv.Perm (Fin p)) : wP σ * wP σ.symm = 1 := by
  ext a b
  rw [permutationMatrix_mul_apply]
  by_cases h : a = b
  · subst h; simp [wP]
  · simp [wP, Matrix.one_apply_ne h, h]

lemma permutationMatrix_symm_mul (σ : Equiv.Perm (Fin p)) : wP σ.symm * wP σ = 1 := by
  simpa using permutationMatrix_mul_symm σ.symm

lemma permutationMatrix_inv (σ : Equiv.Perm (Fin p)) : (wP σ)⁻¹ = wP σ.symm := Matrix.inv_eq_right_inv (permutationMatrix_mul_symm σ)

lemma permutationMatrix_conj_apply (σ : Equiv.Perm (Fin p)) (M : Matrix (Fin p) (Fin p) ℂ) (a b : Fin p) :
    (wP σ * M * (wP σ)⁻¹) a b = M (σ a) (σ b) := by
  rw [permutationMatrix_inv, mul_wP_apply, permutationMatrix_mul_apply]; simp

lemma lowW_apply (σ : Equiv.Perm (Fin p)) (v : LW σ → ℂ) (a b : Fin p) :
    lowW σ v a b = (if a = b then 1 else 0) + (if h : b < a ∧ σ.symm b < σ.symm a then v ⟨(a, b), h⟩ else 0) := by
  simp [lowW, Matrix.one_apply]

theorem lowWSpec : LowWSpec := by
  intro p σ l
  constructor
  · rintro ⟨hl, hc⟩
    rw [lower_iff] at hl hc
    refine ⟨fun q => l q.1.1 q.1.2, ?_⟩
    ext a b
    rw [lowW_apply]
    rcases lt_trichotomy a b with h | h | h
    · simp [hl.2 a b (kL_lt.mpr h), ne_of_lt h, not_lt.mpr h.le]
    · subst h; simp [hl.1]
    · by_cases hs : σ.symm b < σ.symm a
      · simp [h, hs, ne_of_gt h]
      · have hs' : σ.symm a < σ.symm b :=
          lt_of_le_of_ne (not_lt.mp hs) (fun e => ne_of_gt h (σ.symm.injective e))
        have := hc.2 (σ.symm a) (σ.symm b) (kL_lt.mpr hs')
        rw [permutationMatrix_conj_apply] at this
        simp at this
        simp [this, hs, ne_of_gt h]
  · rintro ⟨v, rfl⟩
    rw [lower_iff, lower_iff]
    refine ⟨⟨fun i => by simp [lowW_apply], fun a b hab => ?_⟩,
      ⟨fun i => by simp [permutationMatrix_conj_apply, lowW_apply], fun a b hab => ?_⟩⟩
    · rw [kL_lt] at hab; simp [lowW_apply, ne_of_lt hab, not_lt.mpr hab.le]
    · rw [kL_lt] at hab; rw [permutationMatrix_conj_apply, lowW_apply]
      simp [σ.injective.ne (ne_of_lt hab), not_lt.mpr hab.le]

lemma upper_eq {u : Matrix (Fin p) (Fin p) ℂ} (hu : uniK (kU p) u) : u = G.upper (fun q => u q.1.1 q.1.2) := by
  ext a b
  simp only [G.upper, G.strictUpper, Matrix.add_apply, Matrix.of_apply]
  rcases lt_trichotomy a b with h | h | h
  · simp [h, ne_of_lt h]
  · subst h; simp [hu.1]
  · simp [not_lt.mpr h.le, ne_of_gt h, hu.2 a b (kU_lt.mpr h)]

lemma upper_uni (u : G.UT p → ℂ) : uniK (kU p) (G.upper u) := by
  refine ⟨fun i => by simp [G.upper, G.strictUpper], fun a b hab => ?_⟩
  rw [kU_lt] at hab
  simp [G.upper, G.strictUpper, not_lt.mpr hab.le, ne_of_gt hab]

end tri

section twoBlocks

variable {p s : ℕ}


lemma symmetricScalarBlockMatrix_transpose (A : Matrix (Fin p) (Fin p) ℂ) (B : Matrix (Fin p) (Fin s) ℂ)
    (C : Matrix (Fin s) (Fin p) ℂ) (D : Matrix (Fin s) (Fin s) ℂ) :
    (blk2 A B C D)ᵀ = blk2 Aᵀ Cᵀ Bᵀ Dᵀ := by
  unfold blk2
  rw [Matrix.transpose_reindex, Matrix.fromBlocks_transpose]

lemma block2_apply_upper_left (A : Matrix (Fin p) (Fin p) ℂ) (B : Matrix (Fin p) (Fin s) ℂ)
    (C : Matrix (Fin s) (Fin p) ℂ) (D : Matrix (Fin s) (Fin s) ℂ) (x y : Fin p) :
    blk2 A B C D (Fin.castAdd s x) (Fin.castAdd s y) = A x y := by simp [blk2]

lemma block2_apply_lower_left (A : Matrix (Fin p) (Fin p) ℂ) (B : Matrix (Fin p) (Fin s) ℂ)
    (C : Matrix (Fin s) (Fin p) ℂ) (D : Matrix (Fin s) (Fin s) ℂ) (x : Fin s) (y : Fin p) :
    blk2 A B C D (Fin.natAdd p x) (Fin.castAdd s y) = C x y := by simp [blk2]

lemma block2_apply_lower_right (A : Matrix (Fin p) (Fin p) ℂ) (B : Matrix (Fin p) (Fin s) ℂ)
    (C : Matrix (Fin s) (Fin p) ℂ) (D : Matrix (Fin s) (Fin s) ℂ) (x y : Fin s) :
    blk2 A B C D (Fin.natAdd p x) (Fin.natAdd p y) = D x y := by simp [blk2]

lemma supS_eq (M : Matrix (Fin p) (Fin p) ℂ) : supS M = subS Mᵀ := by
  simp [subS, supS, transpose_apply]

lemma subdiagonal_sum_block2 (A : Matrix (Fin p) (Fin p) ℂ) (B : Matrix (Fin p) (Fin s) ℂ)
    (C : Matrix (Fin s) (Fin p) ℂ) (D : Matrix (Fin s) (Fin s) ℂ) :
    subS (blk2 A B C D) = subS A + (if h : 0 < s ∧ 0 < p then C ⟨0, h.1⟩ ⟨p - 1, by omega⟩ else 0) + subS D := by
  unfold subS
  rw [Fin.sum_univ_add]
  have h1 : ∀ i : Fin p, (if h : (Fin.castAdd s i).val + 1 < p + s then blk2 A B C D ⟨(Fin.castAdd s i).val + 1, h⟩ (Fin.castAdd s i) else 0) =
      (if h : i.val + 1 < p then A ⟨i.val + 1, h⟩ i else 0) +
        (if h : i.val + 1 = p ∧ 0 < s then C ⟨0, h.2⟩ i else 0) := by
    intro i
    have hi := i.isLt
    by_cases ha : i.val + 1 < p
    · have hlt : (Fin.castAdd s i).val + 1 < p + s := by simp; omega
      rw [dite_eq_left hlt, dite_eq_left ha, dite_eq_right (by omega), add_zero]
      have e : (⟨(Fin.castAdd s i).val + 1, hlt⟩ : Fin (p + s)) = Fin.castAdd s ⟨i.val + 1, ha⟩ := Fin.ext (by simp)
      rw [e, block2_apply_upper_left]
    · by_cases hs : 0 < s
      · have hlt : (Fin.castAdd s i).val + 1 < p + s := by simp; omega
        rw [dite_eq_left hlt, dite_eq_right ha, dite_eq_left ⟨by omega, hs⟩, zero_add]
        have e : (⟨(Fin.castAdd s i).val + 1, hlt⟩ : Fin (p + s)) = Fin.natAdd p ⟨0, hs⟩ := Fin.ext (by simp; omega)
        rw [e, block2_apply_lower_left]
      · rw [dite_eq_right (by simp; omega), dite_eq_right ha, dite_eq_right (by omega), add_zero]
  have h2 : ∀ i : Fin s, (if h : (Fin.natAdd p i).val + 1 < p + s then blk2 A B C D ⟨(Fin.natAdd p i).val + 1, h⟩ (Fin.natAdd p i) else 0) =
      (if h : i.val + 1 < s then D ⟨i.val + 1, h⟩ i else 0) := by
    intro i
    by_cases ha : i.val + 1 < s
    · have hlt : (Fin.natAdd p i).val + 1 < p + s := by simp; omega
      rw [dite_eq_left hlt, dite_eq_left ha]
      have e : (⟨(Fin.natAdd p i).val + 1, hlt⟩ : Fin (p + s)) = Fin.natAdd p ⟨i.val + 1, ha⟩ := Fin.ext (by simp; omega)
      rw [e, block2_apply_lower_right]
    · rw [dite_eq_right (by simp; omega), dite_eq_right ha]
  simp only [h1, h2, Finset.sum_add_distrib]
  congr 2
  by_cases hps : 0 < s ∧ 0 < p
  · rw [dite_eq_left hps, Finset.sum_eq_single ⟨p - 1, by omega⟩]
    · rw [dite_eq_left ⟨by simp; omega, hps.1⟩]
    · intro i _ hi
      rw [dite_eq_right]
      rintro ⟨h, -⟩
      exact hi (Fin.ext (by simp; omega))
    · simp
  · rw [dite_eq_right hps]
    refine Finset.sum_eq_zero fun i _ => ?_
    rw [dite_eq_right]
    rintro ⟨h, h'⟩
    exact hps ⟨h', by omega⟩

theorem charBlock : CharBlock := by
  intro p s a b lh uh l u hlh hl huh hu
  rw [lower_iff] at hlh hl
  rw [upper_iff] at huh hu
  constructor
  · rw [_root_.Formalism.FourierDecayAlt.P.Ux4.symmetricScalarBlockMatrix_mul, subdiagonal_sum_block2]
    simp only [Matrix.one_mul, Matrix.mul_zero, add_zero, zero_add]
    congr 2
    unfold cornerA
    by_cases hps : 0 < s ∧ 0 < p
    · rw [dite_eq_left hps, dite_eq_left hps, Matrix.mul_apply, Finset.sum_eq_single ⟨p - 1, by omega⟩]
      · rw [hlh.1, mul_one]; rfl
      · intro c _ hc
        have : c.val < p - 1 := by have := c.isLt; have : c.val ≠ p - 1 := fun e => hc (Fin.ext e); omega
        rw [hlh.2 c ⟨p - 1, by omega⟩ (kL_lt.mpr (Fin.lt_def.mpr this)), mul_zero]
      · simp
    · rw [dite_eq_right hps, dite_eq_right hps]
  · rw [_root_.Formalism.FourierDecayAlt.P.Ux4.symmetricScalarBlockMatrix_mul, supS_eq, supS_eq, supS_eq]
    simp only [Matrix.mul_zero, Matrix.zero_mul, add_zero, zero_add, Matrix.mul_one]
    rw [symmetricScalarBlockMatrix_transpose, subdiagonal_sum_block2]
    congr 2
    unfold cornerB
    by_cases hps : 0 < s ∧ 0 < p
    · rw [dite_eq_left hps, dite_eq_left hps, transpose_apply, Matrix.mul_apply, Finset.sum_eq_single ⟨p - 1, by omega⟩]
      · rw [huh.1, one_mul]; rfl
      · intro c _ hc
        have : c.val < p - 1 := by have := c.isLt; have : c.val ≠ p - 1 := fun e => hc (Fin.ext e); omega
        rw [huh.2 ⟨p - 1, by omega⟩ c (kU_lt.mpr (Fin.lt_def.mpr this)), zero_mul]
      · simp
    · rw [dite_eq_right hps, dite_eq_right hps]

end twoBlocks

end Formalism.FourierDecayAlt.P.Ux2

namespace Formalism.FourierDecayAlt.P

theorem hermitian_group_blocks : Formalism.FourierDecayAlt.U.HpkBlocks := Ux2.hpkBlocks

theorem slice_membership : Formalism.FourierDecayAlt.U.SliceMem := Ux2.sliceMem

theorem radical_parametrisation : Formalism.FourierDecayAlt.U.RadicalParam := Ux2.radicalParam

theorem low_weight_specialisation : Formalism.FourierDecayAlt.U.LowWSpec := Ux2.lowWSpec

theorem character_on_blocks : Formalism.FourierDecayAlt.U.CharBlock := Ux2.charBlock

end Formalism.FourierDecayAlt.P

module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFG
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase
public import Mathlib.Geometry.Manifold.PartitionOfUnity
public import Mathlib.Geometry.Manifold.ChartedSpace
public import Mathlib.Geometry.Manifold.IsManifold.Basic
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateSizesOfHypotheses
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HeisenbergLeviConjugationMeasure
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormFactor
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH2
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AsmCastVCastV
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PartialBesselSmoothCompactSupport
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenAdelicUnipotentTimesIntegralOutsideSet
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LowVLift
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RadicalUnipotentFirstBasisEqOne
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCoefficientHasCompactSupport
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
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Topology.UniformSpace.Matrix
import Mathlib.Topology.UniformSpace.Uniformizable
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Tower
import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension
import Mathlib.CategoryTheory.Countable
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul
import Aesop.Main
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.Analysis.Convolution
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumDualVectorEqZeta
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactlySupportedBanachModel

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGCkExt, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH_SFG_PtGV, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGAsm, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGGfStep, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGParamSmooth, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGRadProper, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH_SFG_PtSmooth, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamGood

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGCkExt =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGCkExt", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.Geometry.Manifold.PartitionOfUnity\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Matrix\nimport Mathlib.Topology.UniformSpace.Uniformizable\npublic import Mathlib.Geometry.Manifold.ChartedSpace\npublic import Mathlib.Geometry.Manifold.IsManifold.Basic\n\n"}
section -- clump:auto
@[expose] public section

open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSH.SFG

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem ckExt_proof : CkExt := by
  intro k r E _ _ F hF hc
  haveI : ProperSpace (B.Mat k r) := FiniteDimensional.proper ℝ _
  obtain ⟨R, hR⟩ := hc.isCompact.isBounded.subset_ball (0 : B.Mat k r)
  choose U f' hUo hmem hsm hag using hF
  let V : B.GV k r → Set (B.Mat k r) := fun i => U i.1 i.2 ∩ Metric.ball 0 R
  have hVo : ∀ i, IsOpen (V i) := fun i => (hUo i.1 i.2).inter Metric.isOpen_ball
  have hs : IsClosed (tsupport F ∩ B.GV k r) := (isClosed_tsupport F).inter B5.GV_closed
  have hcov : tsupport F ∩ B.GV k r ⊆ ⋃ i, V i := by
    intro x hx
    exact Set.mem_iUnion.2 ⟨⟨x, hx.2⟩, hmem x hx.2, hR hx.1⟩
  obtain ⟨ρ, hρ⟩ := @SmoothPartitionOfUnity.exists_isSubordinate _ (B.Mat k r) _ _ (B.Mat k r) _
    (modelWithCornersSelf ℝ (B.Mat k r)) (B.Mat k r) _ (chartedSpaceSelf _) _ _ _ _ _ hs V hVo hcov
  refine ⟨fun x => ∑ᶠ i, ρ i x • f' i.1 i.2 x, ?_, ?_, ?_⟩
  · rw [contDiff_iff_contDiffAt]
    intro x
    refine ρ.contDiffAt_finsum fun i hi => ?_
    have hx : x ∈ U i.1 i.2 := (hρ i hi).1
    exact (hsm i.1 i.2).contDiffAt ((hUo i.1 i.2).mem_nhds hx)
  · refine HasCompactSupport.intro (isCompact_closedBall (0 : B.Mat k r) R) fun x hx => ?_
    have h0 : ∀ i, ρ i x = 0 := fun i => by
      by_contra h
      exact hx (Metric.ball_subset_closedBall (hρ i (subset_tsupport _ h)).2)
    simp [h0]
  · intro g hg
    have key : ∀ i, ρ i g • f' i.1 i.2 g = ρ i g • F g := fun i => by
      by_cases h : ρ i g = 0
      · simp [h]
      · rw [← hag i.1 i.2 g (hρ i (subset_tsupport _ h)).1 hg]
    simp only [key]
    rw [← finsum_smul]
    by_cases hF0 : g ∈ tsupport F
    · rw [ρ.sum_eq_one ⟨hF0, hg⟩, one_smul]
    · rw [image_eq_zero_of_notMem_tsupport hF0, smul_zero]

end Formalism.FourierDecayAlt.P.CutSH.SFG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGCkExt =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH_SFG_PtGV =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH_SFG_PtGV", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateSizesOfHypotheses\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HeisenbergLeviConjugationMeasure\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormFactor\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSH.SFG

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.PBH

theorem radial_embedding_mem_unitary_group {k ρ m : ℕ} (e : ρ + 1 = m) (x : U.RC k 1 ρ) : rn1 e x ∈ B.GV k m := by
  exact PBE.castM_GV e (PBE.castM_GV _ (Ux6.Rn_mem x))

private theorem mMap_mem_GV_of_isUnit_det_of_mem_GV {k j ρ : ℕ} (Z : Matrix (Fin j) (Fin j) ℂ) (hZ : IsUnit Z.det)
    (γ : B.Mat k ρ) (hγ : γ ∈ B.GV k ρ) : U.mMap k j ρ Z γ ∈ B.GV k (j + ρ) := by
  have hr : ∀ a b : Fin j, a = b.rev ↔ b = a.rev := fun a b =>
    ⟨fun h => by rw [h, Fin.rev_rev], fun h => by rw [h, Fin.rev_rev]⟩
  have hw : G.wMat j * G.wMat j = 1 := by
    ext a b
    simp only [G.wMat, Matrix.mul_apply, Matrix.one_apply, Matrix.of_apply]
    rw [Finset.sum_eq_single b.rev]
    · simp [Fin.rev_rev, Fin.rev_inj, eq_comm]
    · intro c _ hc
      rw [if_neg (fun h => hc ((hr c b).2 h))]
      simp
    · simp
  have hwh : (G.wMat j).conjTranspose = G.wMat j := by
    ext a b
    simp only [G.wMat, Matrix.conjTranspose_apply, Matrix.of_apply]
    split_ifs with h1 h2 h2 <;> simp_all
  have hZ' : IsUnit Z.conjTranspose.det := by
    rw [Matrix.det_conjTranspose]
    exact hZ.star
  have hγ' : Matrix.conjTranspose γ * Hpk k ρ * γ = Hpk k ρ := hγ
  have h1 : Z.conjTranspose * (G.wMat j).conjTranspose * G.wMat j * (Z.conjTranspose⁻¹ * G.wMat j)
      = G.wMat j := by
    rw [hwh, Matrix.mul_assoc Z.conjTranspose, hw, Matrix.mul_one, ← Matrix.mul_assoc,
      Matrix.mul_nonsing_inv _ hZ', Matrix.one_mul]
  have h3 : (G.wMat j).conjTranspose * Z.conjTranspose⁻¹.conjTranspose * G.wMat j * (G.wMat j * Z)
      = G.wMat j := by
    rw [hwh, Matrix.conjTranspose_nonsing_inv, Matrix.conjTranspose_conjTranspose,
      Matrix.mul_assoc, ← Matrix.mul_assoc (G.wMat j) (G.wMat j) Z, hw, Matrix.one_mul,
      Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hZ, Matrix.mul_one]
  show Matrix.conjTranspose (U.mMap k j ρ Z γ) * Hpk k (j + ρ) * U.mMap k j ρ Z γ = Hpk k (j + ρ)
  rw [_root_.Formalism.FourierDecayAlt.P.Ux4.hpkBlocks k j ρ]
  unfold U.mMap
  rw [_root_.Formalism.FourierDecayAlt.P.Ux4.block3_conjTranspose, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_mul]
  simp only [Matrix.zero_mul, Matrix.mul_zero, add_zero, zero_add, Matrix.conjTranspose_zero,
    Matrix.conjTranspose_mul]
  rw [h1, hγ', h3]

theorem mc_GV {k ρ m : ℕ} (e : ρ + 1 = m) {t : ℂ} (ht : t ≠ 0) {γ : B.Mat k ρ} (hγ : γ ∈ B.GV k ρ) :
    mc e t γ ∈ B.GV k m := by
  unfold mc
  refine PBE.castM_GV e (PBE.castM_GV _ (mMap_mem_GV_of_isUnit_det_of_mem_GV _ ?_ γ hγ))
  simp [Matrix.det_unique, ht]

theorem point_mem_unitary_group : PtGV := by
  intro k ρ m e t ht γ hγ xx
  unfold pt
  exact HermitianFormFactor.UH_mul (HermitianFormFactor.UH_mul (HermitianFormFactor.UH_inv (B2x5.isUnit_det_Hpk k m) (radial_embedding_mem_unitary_group e xx.1))
    (mc_GV e ht hγ)) (radial_embedding_mem_unitary_group e xx.2)

end Formalism.FourierDecayAlt.P.CutSH.SFG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH_SFG_PtGV =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGAsm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGAsm", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AsmCastVCastV\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGCkExt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH_SFG_PtGV\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PartialBesselSmoothCompactSupport\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.Tower\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped ComplexConjugate ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSH.SFG

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P.PBH

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem sliceFamGood_of (hGf : GfStep) (hRP : RadProper) (hPS : ParamSmooth) (hPt : PtSmooth) (hGV : PtGV)
    (hE : CkExt) : CutSH.SliceFamGood := by
  intro Wp Wq _ _ _ _ _ _ P T _ _ j hj _ _ F hF
  have e : P.r - (j + 1) + 1 = P.r - j := by omega
  obtain ⟨⟨hcc, ε, hε, hFG⟩, hcs⟩ := hF
  have hFs : B.CkOn (⊤ : ℕ∞) (B.GV P.k (P.r - j)) F :=
    Formalism.FourierDecayAlt.P.PBE.ckOn_top_of_nat fun m => (hcc 0 m).choose_spec.1
  obtain ⟨Ft, hFt, -, hFtF⟩ := hE P.k (P.r - j) _ F hFs hcs
  obtain ⟨R, hR⟩ := (hcs.isCompact.image_of_continuousOn
    (Formalism.FourierDecayAlt.P.B6.gN_continuous (k := P.k) (r := P.r - j)).continuousOn).bddAbove
  have hRF : ∀ g, F g ≠ 0 → B.gN g ≤ R := fun g hne => hR ⟨g, subset_tsupport _ hne, rfl⟩
  have hsl : ∀ (t : ℂ) (γ : B.Mat P.k (P.r - (j + 1))), γ ∈ B.GV P.k (P.r - (j + 1)) → sliceFam T j hj F t γ =
      ((‖t‖ ^ (2 * (P.r - j) + P.k) : ℝ) : ℂ) • ∫ xx : U.RC P.k 1 (P.r - (j + 1)) × U.RC P.k 1 (P.r - (j + 1)),
        (psi P.k (P.r - j) (T.bs j).z cStd (rn1 e xx.1) * star (psi P.k (P.r - j) (T.bs j).z' cStd (rn1 e xx.2))) •
          F (pt e t γ xx) ∂((U.muRC P.k 1 (P.r - (j + 1))).prod (U.muRC P.k 1 (P.r - (j + 1)))) := by
    intro t γ hγ
    unfold sliceFam
    rw [Set.indicator_of_mem hγ]
    rfl
  refine ⟨?_, ?_⟩
  ·
    intro t₀ ht₀ γ₀ _
    have ht₀p : 0 < ‖t₀‖ := norm_pos_iff.2 ht₀
    set δ : ℝ := ‖t₀‖ / 2 with hδ
    have hδ0 : 0 < δ := by rw [hδ]; linarith
    obtain ⟨Kx, C, hKx, -, hKC⟩ := hRP P.k (P.r - (j + 1)) (P.r - j) e δ R hδ0
    obtain ⟨R1, hR1⟩ :=
      hKx.isBounded.subset_closedBall (0 : U.RC P.k 1 (P.r - (j + 1)) × U.RC P.k 1 (P.r - (j + 1)))
    have : HasContDiffBump (U.RC P.k 1 (P.r - (j + 1)) × U.RC P.k 1 (P.r - (j + 1))) := inferInstance
    set χ : ContDiffBump (0 : U.RC P.k 1 (P.r - (j + 1)) × U.RC P.k 1 (P.r - (j + 1))) :=
      ⟨max R1 0 + 1, max R1 0 + 2, by positivity, by linarith⟩ with hχ
    set s : Set (ℂ × B.Mat P.k (P.r - (j + 1))) := {p | δ < ‖p.1‖} with hs
    have hso : IsOpen s := isOpen_lt continuous_const (continuous_norm.comp continuous_fst)
    have hs0 : ∀ p ∈ s, p.1 ≠ 0 := fun p hp => norm_pos_iff.1 (hδ0.trans hp)
    set hI : ℂ × B.Mat P.k (P.r - (j + 1)) → U.RC P.k 1 (P.r - (j + 1)) × U.RC P.k 1 (P.r - (j + 1)) →
        (Wq →L[ℂ] Wp) :=
      fun p xx => χ xx • ((psi P.k (P.r - j) (T.bs j).z cStd (rn1 e xx.1) *
        star (psi P.k (P.r - j) (T.bs j).z' cStd (rn1 e xx.2))) • Ft (pt e p.1 p.2 xx)) with hIdef
    refine ⟨s, fun p => ((‖p.1‖ ^ (2 * (P.r - j) + P.k) : ℝ) : ℂ) •
      ∫ xx, hI p xx ∂((U.muRC P.k 1 (P.r - (j + 1))).prod (U.muRC P.k 1 (P.r - (j + 1)))), hso, ?_, ?_, ?_⟩
    · show δ < ‖t₀‖
      rw [hδ]; linarith
    ·
      have : BorelSpace (U.RC P.k 1 (P.r - (j + 1))) := Prod.borelSpace
      have : BorelSpace (U.RC P.k 1 (P.r - (j + 1)) × U.RC P.k 1 (P.r - (j + 1))) := Prod.borelSpace
      have := Formalism.FourierDecayAlt.P.Dx2.SplitF.sf_RC (k := P.k) 1 (P.r - (j + 1))
      have := Formalism.FourierDecayAlt.P.PartialBesselLeftWordLemmas.fmc_RC P.k 1 (P.r - (j + 1))
      have hsc : ContDiffOn ℝ ∞ (fun p : ℂ × B.Mat P.k (P.r - (j + 1)) =>
          ((‖p.1‖ ^ (2 * (P.r - j) + P.k) : ℝ) : ℂ)) s := by
        intro p hp
        have hn : ContDiffAt ℝ ∞ (fun p : ℂ × B.Mat P.k (P.r - (j + 1)) => ‖p.1‖) p :=
          (contDiffAt_norm ℝ (hs0 p hp)).comp p contDiffAt_fst
        exact (Complex.ofRealCLM.contDiff.contDiffAt.comp p (hn.pow _)).contDiffWithinAt
      have hps := (hPt P.k (P.r - (j + 1)) (P.r - j) e).2
      have hpt := (hPt P.k (P.r - (j + 1)) (P.r - j) e).1
      have hjoint : ContDiffOn ℝ ∞
          (fun q : (ℂ × B.Mat P.k (P.r - (j + 1))) × (U.RC P.k 1 (P.r - (j + 1)) × U.RC P.k 1 (P.r - (j + 1))) =>
            hI q.1 q.2) (s ×ˢ Set.univ) := by
        have h1 : ContDiff ℝ ∞ (fun q : (ℂ × B.Mat P.k (P.r - (j + 1))) ×
            (U.RC P.k 1 (P.r - (j + 1)) × U.RC P.k 1 (P.r - (j + 1))) => χ q.2) :=
          χ.contDiff.comp contDiff_snd
        have h2 : ContDiff ℝ ∞ (fun q : (ℂ × B.Mat P.k (P.r - (j + 1))) ×
            (U.RC P.k 1 (P.r - (j + 1)) × U.RC P.k 1 (P.r - (j + 1))) =>
            psi P.k (P.r - j) (T.bs j).z cStd (rn1 e q.2.1) *
              star (psi P.k (P.r - j) (T.bs j).z' cStd (rn1 e q.2.2))) := by
          refine ((hps (T.bs j).z).comp (contDiff_fst.comp contDiff_snd)).mul ?_
          exact Complex.conjCLE.contDiff.comp ((hps (T.bs j).z').comp (contDiff_snd.comp contDiff_snd))
        have h3 : ContDiffOn ℝ ∞ (fun q : (ℂ × B.Mat P.k (P.r - (j + 1))) ×
            (U.RC P.k 1 (P.r - (j + 1)) × U.RC P.k 1 (P.r - (j + 1))) => Ft (pt e q.1.1 q.1.2 q.2))
            (s ×ˢ Set.univ) :=
          hFt.comp_contDiffOn (hpt.mono (Set.prod_mono (fun p hp => hs0 p hp) le_rfl))
        exact h1.contDiffOn.smul (h2.contDiffOn.smul h3)
      have hvan : ∀ p ∈ s, ∀ xx, xx ∉ tsupport χ → hI p xx = 0 := by
        intro p _ xx hxx
        simp only [hIdef, image_eq_zero_of_notMem_tsupport hxx, zero_smul]
      have hint := hPS _ _ _ ((U.muRC P.k 1 (P.r - (j + 1))).prod (U.muRC P.k 1 (P.r - (j + 1)))) hI s
        (tsupport χ) hso χ.hasCompactSupport hvan hjoint
      exact hsc.smul hint
    ·
      rintro ⟨t, γ⟩ hp hγ
      have ht : t ≠ 0 := hs0 _ hp
      have hδt : δ ≤ ‖t‖ := le_of_lt hp
      show sliceFam T j hj F t γ = _
      rw [hsl t γ hγ]
      congr 1
      refine integral_congr_ae (Filter.Eventually.of_forall fun xx => ?_)
      have hpG := hGV P.k (P.r - (j + 1)) (P.r - j) e t ht γ hγ xx
      have hFt' : Ft (pt e t γ xx) = F (pt e t γ xx) := hFtF _ hpG
      show _ = hI (t, γ) xx
      simp only [hIdef]
      rw [hFt']
      by_cases hF0 : F (pt e t γ xx) = 0
      · simp only [hF0, smul_zero]
      · have hxK : xx ∈ Kx := (hKC t γ xx hδt (hRF _ hF0)).1
        have h1 : χ xx = 1 := by
          apply χ.one_of_mem_closedBall
          have := hR1 hxK
          rw [Metric.mem_closedBall] at this ⊢
          show dist xx 0 ≤ max R1 0 + 1
          linarith [le_max_left R1 0]
        rw [h1, one_smul]
  ·
    intro K hK hK0
    by_cases hne : K.Nonempty
    · obtain ⟨t1, ht1K, hmin⟩ := hK.exists_isMinOn hne continuous_norm.continuousOn
      have hδ0 : 0 < ‖t1‖ := norm_pos_iff.2 (hK0 t1 ht1K)
      obtain ⟨M, hM⟩ := hK.exists_bound_of_continuousOn continuous_norm.continuousOn
      have hM' : ∀ t ∈ K, ‖t‖ ≤ M := fun t ht => by simpa using hM t ht
      have hMp : 0 < M := hδ0.trans_le (hM' t1 ht1K)
      obtain ⟨Kx, C, -, hC, hKC⟩ := hRP P.k (P.r - (j + 1)) (P.r - j) e ‖t1‖ R hδ0
      refine ⟨C, hC, ε / M ^ 2, by positivity, ?_⟩
      intro t htK γ hne'
      have ht : t ≠ 0 := hK0 t htK
      have hγ : γ ∈ B.GV P.k (P.r - (j + 1)) := by
        by_contra hγ
        apply hne'
        unfold sliceFam
        rw [Set.indicator_of_notMem hγ]
      rw [hsl t γ hγ] at hne'
      obtain ⟨xx, hxx⟩ : ∃ xx, F (pt e t γ xx) ≠ 0 := by
        by_contra hall
        push Not at hall
        apply hne'
        simp only [hall, smul_zero, integral_zero]
      have hδt : ‖t1‖ ≤ ‖t‖ := hmin htK
      refine ⟨(hKC t γ xx hδt (hRF _ hxx)).2, fun _ => ?_⟩
      have hpG := hGV P.k (P.r - (j + 1)) (P.r - j) e t ht γ hγ xx
      have h1 : ε ≤ Gf P.k (P.r - j) (T.bs j).z (T.bs j).z' (pt e t γ xx) := hFG _ hpG hxx
      have hz : (T.bs j).z = D.castV e (D.castV (Nat.add_comm 1 (P.r - (j + 1)))
          (liftVec P.k 1 (P.r - (j + 1)) (T.bs (j + 1)).z)) := by
        rw [levTower_bs_z_eq_castV_liftVec T j hj, asm_castV_castV]
      have hz' : (T.bs j).z' = D.castV e (D.castV (Nat.add_comm 1 (P.r - (j + 1)))
          (liftVec P.k 1 (P.r - (j + 1)) (T.bs (j + 1)).z')) := by
        rw [levTower_bs_z'_eq_castV_liftVec T j hj, asm_castV_castV]
      rw [hz, hz', hGf P.k (P.r - (j + 1)) (P.r - j) e _ _ (T.bs (j + 1)).z_mem (T.bs (j + 1)).z'_mem t ht γ xx]
        at h1
      have htp : 0 < ‖t‖ := norm_pos_iff.2 ht
      have htM : ‖t‖ ^ 2 ≤ M ^ 2 := pow_le_pow_left₀ (norm_nonneg _) (hM' t htK) 2
      have hG0 : 0 < Gf P.k (P.r - (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z' γ := by
        by_contra hle
        push Not at hle
        have : ‖t‖ ^ 2 * Gf P.k (P.r - (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z' γ ≤ 0 :=
          mul_nonpos_of_nonneg_of_nonpos (by positivity) hle
        linarith
      rw [div_le_iff₀ (by positivity)]
      nlinarith
    · exact ⟨∅, isCompact_empty, 1, one_pos, fun t ht => absurd ⟨t, ht⟩ hne⟩

end Formalism.FourierDecayAlt.P.CutSH.SFG

namespace Formalism.FourierDecayAlt.P.CutSH

theorem cutSH_sliceFamGood_of (hGf : SFG.GfStep) (hRP : SFG.RadProper) (hPS : SFG.ParamSmooth)
    (hPt : SFG.PtSmooth) : SliceFamGood :=
  SFG.sliceFamGood_of hGf hRP hPS hPt SFG.point_mem_unitary_group SFG.ckExt_proof

end Formalism.FourierDecayAlt.P.CutSH
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGAsm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGGfStep =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGGfStep", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenAdelicUnipotentTimesIntegralOutsideSet\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LowVLift\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped ComplexConjugate ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSH.SFG

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P.PBH

theorem gf_castPt {k a b : ℕ} (h : a = b) (z z' : Fin (2 * a + k + 1) → ℂ) (A M C : B.Mat k a) :
    Gf k b (D.castV h z) (D.castV h z') ((D.castM h A)⁻¹ * D.castM h M * D.castM h C) =
      Gf k a z z' (A⁻¹ * M * C) := by
  subst h
  have h1 : ∀ v : Fin (2 * a + k + 1) → ℂ, D.castV rfl v = v := fun v => by
    funext i
    simp [D.castV]
  have h2 : ∀ X : B.Mat k a, D.castM rfl X = X := fun X => by
    ext i j
    simp [D.castM]
  rw [h1, h1, h2, h2, h2]

theorem gram_function_induction : GfStep := by
  intro k ρ m e z z' hz hz' t _ γ xx
  have h1 : 1 + ρ = ρ + 1 := Nat.add_comm 1 ρ
  show Gf k m (D.castV e (D.castV h1 (liftVec k 1 ρ z))) (D.castV e (D.castV h1 (liftVec k 1 ρ z')))
      ((D.castM e (D.castM h1 (U.Rn k 1 ρ xx.1)))⁻¹ *
        D.castM e (D.castM h1 (U.mMap k 1 ρ (Matrix.of fun _ _ => t) γ)) *
        D.castM e (D.castM h1 (U.Rn k 1 ρ xx.2))) = _
  rw [gf_castPt e, gf_castPt h1,
    _root_.Formalism.FourierDecayAlt.P.Ux3.gfSlice k 1 ρ _ _ (Qx4.lift_inWb hz) (Qx4.lift_inWb hz'), lowV_lift, lowV_lift]
  simp [Matrix.det_unique, Complex.normSq_eq_norm_sq]

end Formalism.FourierDecayAlt.P.CutSH.SFG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGGfStep =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGParamSmooth =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGParamSmooth", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFG\nimport Aesop.Main\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\nimport Mathlib.Analysis.Convolution\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped ContDiff Convolution

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSH.SFG

private theorem parameter_smooth_lemma {Pm X W : Type} [NormedAddCommGroup Pm] [NormedSpace ℝ Pm]
    [NormedAddCommGroup X] [NormedSpace ℝ X] [NormedAddCommGroup W] [NormedSpace ℝ W]
    (h : Pm → X → W) (s : Set Pm) (K : Set X) (hs : IsOpen s) (hK : IsCompact K)
    (hv : ∀ p ∈ s, ∀ x ∉ K, h p x = 0)
    (hh : ContDiffOn ℝ ∞ (fun q : Pm × X => h q.1 q.2) (s ×ˢ Set.univ)) :
    (∀ p ∈ s, ∀ x ∉ K, (fderiv ℝ (fun q : Pm × X => h q.1 q.2) (p, x)).comp
        (ContinuousLinearMap.inl ℝ Pm X) = 0) ∧
    ContDiffOn ℝ ∞ (fun q : Pm × X => (fderiv ℝ (fun q : Pm × X => h q.1 q.2) (q.1, q.2)).comp
        (ContinuousLinearMap.inl ℝ Pm X)) (s ×ˢ Set.univ) ∧
    ∀ p ∈ s, ∀ x, HasFDerivAt (fun p' => h p' x)
      ((fderiv ℝ (fun q : Pm × X => h q.1 q.2) (p, x)).comp (ContinuousLinearMap.inl ℝ Pm X)) p := by
  have hO : IsOpen (s ×ˢ (Set.univ : Set X)) := hs.prod isOpen_univ
  refine ⟨?_, ?_, ?_⟩
  · intro p hp x hx
    have hU : IsOpen (s ×ˢ Kᶜ) := hs.prod hK.isClosed.isOpen_compl
    have hz : (fun q : Pm × X => h q.1 q.2) =ᶠ[nhds (p, x)] fun _ => 0 := by
      filter_upwards [hU.mem_nhds ⟨hp, hx⟩] with q hq
      exact hv q.1 hq.1 q.2 hq.2
    rw [hz.fderiv_eq]
    simp
  · have h1 : ContDiffOn ℝ ∞ (fun q => fderiv ℝ (fun q : Pm × X => h q.1 q.2) q) (s ×ˢ Set.univ) :=
      hh.fderiv_of_isOpen hO (by simp)
    exact h1.clm_comp contDiffOn_const
  · intro p hp x
    have hd : DifferentiableAt ℝ (fun q : Pm × X => h q.1 q.2) (p, x) :=
      (hh.contDiffAt (hO.mem_nhds ⟨hp, trivial⟩)).differentiableAt (by simp)
    have hl : HasFDerivAt (fun e : Pm => (e, x)) (ContinuousLinearMap.inl ℝ Pm X) p :=
      hasFDerivAt_prodMk_left (𝕜 := ℝ) p x
    exact HasFDerivAt.comp (x := p) hd.hasFDerivAt hl

private theorem parameter_smooth_lemma_2 {Pm X W : Type} [NormedAddCommGroup Pm] [NormedSpace ℝ Pm]
    [NormedAddCommGroup X] [NormedSpace ℝ X] [FiniteDimensional ℝ X] [MeasurableSpace X]
    [BorelSpace X] [NormedAddCommGroup W] [NormedSpace ℝ W]
    (μ : Measure X) [IsFiniteMeasureOnCompacts μ]
    (h : Pm → X → W) (D : Pm → X → (Pm →L[ℝ] W)) (s : Set Pm) (K : Set X)
    (hs : IsOpen s) (hK : IsCompact K)
    (hv : ∀ p ∈ s, ∀ x ∉ K, h p x = 0) (hDv : ∀ p ∈ s, ∀ x ∉ K, D p x = 0)
    (hc : ContinuousOn (fun q : Pm × X => h q.1 q.2) (s ×ˢ Set.univ))
    (hDc : ContinuousOn (fun q : Pm × X => D q.1 q.2) (s ×ˢ Set.univ))
    (hD : ∀ p ∈ s, ∀ x, HasFDerivAt (fun p' => h p' x) (D p x) p)
    (p0 : Pm) (hp0 : p0 ∈ s) :
    HasFDerivAt (fun p => ∫ x, h p x ∂μ) (∫ x, D p0 x ∂μ) p0 := by
  have hO : IsOpen (s ×ˢ (Set.univ : Set X)) := hs.prod isOpen_univ
  have hcont : ∀ p ∈ s, Continuous (h p) := fun p hp =>
    hc.comp_continuous (continuous_const.prodMk continuous_id) (fun _ => ⟨hp, trivial⟩)
  have hDcont : ∀ p ∈ s, Continuous (D p) := fun p hp =>
    hDc.comp_continuous (continuous_const.prodMk continuous_id) (fun _ => ⟨hp, trivial⟩)
  obtain ⟨C, hC⟩ := hK.exists_bound_of_continuousOn (hDcont p0 hp0).continuousOn
  have hev : ∀ᶠ p in nhds p0, ∀ x ∈ K, ‖D p x‖ < C + 1 := by
    apply hK.eventually_forall_of_forall_eventually
    intro x hx
    have hca : ContinuousAt (fun q : Pm × X => D q.1 q.2) (p0, x) :=
      hDc.continuousAt (hO.mem_nhds ⟨hp0, trivial⟩)
    exact hca.norm.eventually (gt_mem_nhds (lt_of_le_of_lt (hC x hx) (lt_add_one C)))
  have hS : {p | p ∈ s ∧ ∀ x ∈ K, ‖D p x‖ < C + 1} ∈ nhds p0 :=
    Filter.inter_mem (hs.mem_nhds hp0) hev
  refine hasFDerivAt_integral_of_dominated_of_fderiv_le (bound := K.indicator fun _ => C + 1) hS
    ?_ ?_ ?_ ?_ ?_ ?_
  · filter_upwards [hs.mem_nhds hp0] with p hp
    exact (hcont p hp).aestronglyMeasurable
  · exact (hcont p0 hp0).integrable_of_hasCompactSupport (HasCompactSupport.intro hK (hv p0 hp0))
  · exact (hDcont p0 hp0).aestronglyMeasurable
  · refine Filter.Eventually.of_forall fun x p hp => ?_
    by_cases hx : x ∈ K
    · rw [Set.indicator_of_mem hx]
      exact (hp.2 x hx).le
    · rw [Set.indicator_of_notMem hx, hDv p hp.1 x hx, norm_zero]
  · exact (integrable_indicator_iff hK.isClosed.measurableSet).2
      (integrableOn_const hK.measure_lt_top.ne)
  · exact Filter.Eventually.of_forall fun x p hp => hD p hp.1 x

theorem parameter_smooth : ParamSmooth := by
  intro Pm X W _ _ _ _ _ _ _ _ _ μ _ h s K hs hK hv hh
  have key : ∀ n : ℕ, ∀ (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V] (g : Pm → X → V),
      (∀ p ∈ s, ∀ x ∉ K, g p x = 0) →
      ContDiffOn ℝ ∞ (fun q : Pm × X => g q.1 q.2) (s ×ˢ Set.univ) →
      ContDiffOn ℝ n (fun p => ∫ x, g p x ∂μ) s := by
    intro n
    induction n with
    | zero =>
      intro V _ _ g hgv hg
      obtain ⟨hDv, hDs, hD⟩ := parameter_smooth_lemma g s K hs hK hgv hg
      have hdiff : DifferentiableOn ℝ (fun p => ∫ x, g p x ∂μ) s := fun p hp =>
        (parameter_smooth_lemma_2 μ g _ s K hs hK hgv hDv hg.continuousOn hDs.continuousOn hD p
          hp).differentiableAt.differentiableWithinAt
      exact contDiffOn_zero.2 hdiff.continuousOn
    | succ n ih =>
      intro V _ _ g hgv hg
      obtain ⟨hDv, hDs, hD⟩ := parameter_smooth_lemma g s K hs hK hgv hg
      have hder := fun p hp =>
        parameter_smooth_lemma_2 μ g _ s K hs hK hgv hDv hg.continuousOn hDs.continuousOn hD p hp
      rw [Nat.cast_succ, contDiffOn_succ_iff_fderiv_of_isOpen hs]
      refine ⟨fun p hp => (hder p hp).differentiableAt.differentiableWithinAt, by simp, ?_⟩
      exact (ih (Pm →L[ℝ] V) (fun p x => (fderiv ℝ (fun q : Pm × X => g q.1 q.2) (p, x)).comp
        (ContinuousLinearMap.inl ℝ Pm X)) hDv hDs).congr fun p hp => (hder p hp).fderiv
  exact contDiffOn_infty.2 fun n => key n W h hv hh

end Formalism.FourierDecayAlt.P.CutSH.SFG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGParamSmooth =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGRadProper =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGRadProper", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RadicalUnipotentFirstBasisEqOne\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SumDualVectorEqZeta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactlySupportedBanachModel\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory
open scoped ComplexConjugate

set_option linter.unusedVariables false

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSH.SFG.RP

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.PBH

variable {k ρ : ℕ}

theorem nq_L (y : U.RC k 1 ρ) (Q : B.Mat k (1 + ρ)) (q : Fin (2 * (1 + ρ) + k + 1)) :
    (U.Rn k 1 ρ y * Q) (U.eB k 1 ρ (Sum.inr 0)) q = Q (U.eB k 1 ρ (Sum.inr 0)) q := by
  rw [Matrix.mul_apply, ← (U.eB k 1 ρ).sum_comp]
  simp [U.Rn, U.blk3, Fintype.sum_sum_type]

theorem nq_V (y : U.RC k 1 ρ) (Q : B.Mat k (1 + ρ)) (w : Fin (2 * ρ + k + 1)) (q : Fin (2 * (1 + ρ) + k + 1)) :
    (U.Rn k 1 ρ y * Q) (U.eB k 1 ρ (Sum.inl (Sum.inr w))) q =
      Q (U.eB k 1 ρ (Sum.inl (Sum.inr w))) q + cy y w * Q (U.eB k 1 ρ (Sum.inr 0)) q := by
  rw [Matrix.mul_apply, ← (U.eB k 1 ρ).sum_comp]
  simp [U.Rn, U.blk3, Fintype.sum_sum_type, Matrix.one_apply, cy]

theorem nq_0 (y : U.RC k 1 ρ) (Q : B.Mat k (1 + ρ)) (q : Fin (2 * (1 + ρ) + k + 1)) :
    (U.Rn k 1 ρ y * Q) (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) q =
      Q (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) q +
        ∑ v, -Matrix.vecMul (star (cy y)) (Hpk k ρ) v * Q (U.eB k 1 ρ (Sum.inl (Sum.inr v))) q +
        (-(1 / 2 : ℂ) * nn y + Complex.I * (dy y : ℂ)) * Q (U.eB k 1 ρ (Sum.inr 0)) q := by
  rw [Matrix.mul_apply, ← (U.eB k 1 ρ).sum_comp]
  simp [U.Rn, U.blk3, Fintype.sum_sum_type, _root_.Formalism.FourierDecayAlt.P.PBH.weyl_lift_eq_pair, cy, dy, nn, U.skewOf, G.strictUpper,
    Matrix.mul_apply, Matrix.vecMul, dotProduct, Matrix.conjTranspose_apply]

theorem mn_L (Z : Matrix (Fin 1) (Fin 1) ℂ) (γ : B.Mat k ρ) (N : B.Mat k (1 + ρ)) (q : Fin (2 * (1 + ρ) + k + 1)) :
    (U.mMap k 1 ρ Z γ * N) (U.eB k 1 ρ (Sum.inr 0)) q = Z 0 0 * N (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) q := by
  rw [Matrix.mul_apply, ← (U.eB k 1 ρ).sum_comp]
  simp [U.mMap, U.blk3, Fintype.sum_sum_type, _root_.Formalism.FourierDecayAlt.P.PBH.weyl_lift_eq_pair]

theorem mn_V (Z : Matrix (Fin 1) (Fin 1) ℂ) (γ : B.Mat k ρ) (N : B.Mat k (1 + ρ)) (w : Fin (2 * ρ + k + 1))
    (q : Fin (2 * (1 + ρ) + k + 1)) :
    (U.mMap k 1 ρ Z γ * N) (U.eB k 1 ρ (Sum.inl (Sum.inr w))) q =
      ∑ v, γ w v * N (U.eB k 1 ρ (Sum.inl (Sum.inr v))) q := by
  rw [Matrix.mul_apply, ← (U.eB k 1 ρ).sum_comp]
  simp [U.mMap, U.blk3, Fintype.sum_sum_type]

theorem mn_0 (Z : Matrix (Fin 1) (Fin 1) ℂ) (γ : B.Mat k ρ) (N : B.Mat k (1 + ρ)) (q : Fin (2 * (1 + ρ) + k + 1)) :
    (U.mMap k 1 ρ Z γ * N) (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) q =
      (Zᴴ⁻¹ * G.wMat 1) 0 0 * N (U.eB k 1 ρ (Sum.inr 0)) q := by
  rw [Matrix.mul_apply, ← (U.eB k 1 ρ).sum_comp]
  simp [U.mMap, U.blk3, Fintype.sum_sum_type]

theorem radial_entry_middle_zero (y : U.RC k 1 ρ) (v : Fin (2 * ρ + k + 1)) :
    U.Rn k 1 ρ y (U.eB k 1 ρ (Sum.inl (Sum.inr v))) (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) = 0 := by
  simp [radical_unipotent_rank_one_apply]

theorem rn_VV (y : U.RC k 1 ρ) (v u : Fin (2 * ρ + k + 1)) :
    U.Rn k 1 ρ y (U.eB k 1 ρ (Sum.inl (Sum.inr v))) (U.eB k 1 ρ (Sum.inl (Sum.inr u))) = if v = u then 1 else 0 := by
  simp [radical_unipotent_rank_one_apply, Matrix.one_apply]

theorem radial_entry_lower_zero (y : U.RC k 1 ρ) :
    U.Rn k 1 ρ y (U.eB k 1 ρ (Sum.inr 0)) (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) = 0 := by
  simp [radical_unipotent_rank_one_apply]

theorem hpk_le (a b : Fin (2 * ρ + k + 1)) : ‖Hpk k ρ a b‖ ≤ 1 := by
  unfold Hpk; split_ifs <;> simp

theorem vm_bd {N : ℕ} (s : Fin N → ℂ) (H : Matrix (Fin N) (Fin N) ℂ) (hH : ∀ i j, ‖H i j‖ ≤ 1) {A : ℝ}
    (hA : 0 ≤ A) (hs : ∀ i, ‖s i‖ ≤ A) (v : Fin N) : ‖Matrix.vecMul s H v‖ ≤ N * A := by
  rw [Matrix.vecMul]
  unfold dotProduct
  calc ‖∑ i, s i * H i v‖ ≤ ∑ i, ‖s i * H i v‖ := norm_sum_le _ _
    _ ≤ ∑ _i : Fin N, A := by
        apply Finset.sum_le_sum
        intro i _
        rw [norm_mul]
        calc ‖s i‖ * ‖H i v‖ ≤ A * 1 := mul_le_mul (hs i) (hH i v) (norm_nonneg _) hA
          _ = A := mul_one A
    _ = N * A := by simp

theorem dot_bd {N : ℕ} (u w : Fin N → ℂ) {A B' : ℝ} (hA : 0 ≤ A) (hB : 0 ≤ B') (hu : ∀ i, ‖u i‖ ≤ A)
    (hw : ∀ i, ‖w i‖ ≤ B') : ‖u ⬝ᵥ w‖ ≤ N * (A * B') := by
  unfold dotProduct
  calc ‖∑ i, u i * w i‖ ≤ ∑ i, ‖u i * w i‖ := norm_sum_le _ _
    _ ≤ ∑ _i : Fin N, A * B' := by
        apply Finset.sum_le_sum
        intro i _
        rw [norm_mul]
        exact mul_le_mul (hu i) (hw i) (norm_nonneg _) hA
    _ = N * (A * B') := by simp

theorem div_bd {a t : ℂ} {B' δ : ℝ} (hδ : 0 < δ) (ht : δ ≤ ‖t‖) (h : ‖a * t‖ ≤ B') : ‖a‖ ≤ B' / δ := by
  rw [norm_mul] at h
  rw [le_div_iff₀ hδ]
  calc ‖a‖ * δ ≤ ‖a‖ * ‖t‖ := mul_le_mul_of_nonneg_left ht (norm_nonneg _)
    _ ≤ B' := h

theorem norm_Id (d : ℝ) : ‖Complex.I * (d : ℂ)‖ = |d| := by
  rw [norm_mul, Complex.norm_I, one_mul, Complex.norm_real, Real.norm_eq_abs]

theorem rc_bd (x : U.RC k 1 ρ) {M : ℝ} (hM : 0 ≤ M) (hc : ∀ v, ‖cy x v‖ ≤ M) (hd : |dy x| ≤ M) : ‖x‖ ≤ M := by
  have h1 : ‖x.1‖ ≤ M := by
    refine (pi_norm_le_iff_of_nonneg hM).2 fun v => (pi_norm_le_iff_of_nonneg hM).2 fun i => ?_
    have hi : i = 0 := Subsingleton.elim _ _
    subst hi
    exact hc v
  have h2 : ‖x.2.1‖ ≤ M := by
    refine (pi_norm_le_iff_of_nonneg hM).2 fun p => ?_
    exact absurd p.2 (by have := p.1.1.2; have := p.1.2.2; omega)
  have h3 : ‖x.2.2‖ ≤ M := by
    refine (pi_norm_le_iff_of_nonneg hM).2 fun i => ?_
    have hi : i = 0 := Subsingleton.elim _ _
    subst hi
    rw [Real.norm_eq_abs]
    exact hd
  rw [Prod.norm_def, Prod.norm_def]
  exact max_le h1 (max_le h2 h3)

private theorem rn_eB_zero_entries_eq (y : U.RC k 1 ρ) :
    U.Rn k 1 ρ y (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) = 1 ∧
      (∀ v, U.Rn k 1 ρ y (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) (U.eB k 1 ρ (Sum.inl (Sum.inr v))) =
        -Matrix.vecMul (star (cy y)) (Hpk k ρ) v) ∧
      U.Rn k 1 ρ y (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) (U.eB k 1 ρ (Sum.inr 0)) =
        -(1 / 2 : ℂ) * nn y + Complex.I * (dy y : ℂ) := by
  refine ⟨?_, fun v => ?_, ?_⟩ <;>
    simp [U.Rn, U.blk3, _root_.Formalism.FourierDecayAlt.P.PBH.weyl_lift_eq_pair, cy, dy, nn, U.skewOf, G.strictUpper, Matrix.mul_apply,
      Matrix.vecMul, dotProduct, Matrix.conjTranspose_apply]

theorem rad_main (t : ℂ) (γ : B.Mat k ρ) (x x' : U.RC k 1 ρ) {R δ : ℝ} (hδ : 0 < δ) (hR0 : 0 ≤ R)
    (ht : δ ≤ ‖t‖)
    (hQ : ∀ p q, ‖((U.Rn k 1 ρ x)⁻¹ * U.mMap k 1 ρ (Matrix.of fun _ _ => t) γ * U.Rn k 1 ρ x') p q‖ ≤ R) :
    (∀ v, ‖cy x v‖ ≤ R / δ) ∧
      |dy x| ≤ R / δ + ((2 * ρ + k + 1 : ℕ) : ℝ) * ((((2 * ρ + k + 1 : ℕ) : ℝ) * (R / δ)) * (R / δ)) / 2 ∧
      (∀ v, ‖cy x' v‖ ≤ ((2 * ρ + k + 1 : ℕ) : ℝ) * (R / δ)) ∧
      |dy x'| ≤ R / δ + ((2 * ρ + k + 1 : ℕ) : ℝ) * ((R / δ) * (((2 * ρ + k + 1 : ℕ) : ℝ) * (R / δ))) / 2 ∧
      ∀ i j, ‖γ i j‖ ≤ R + R / δ * R := by
  have hRd : 0 ≤ R / δ := div_nonneg hR0 hδ.le
  have hnR : 0 ≤ ((2 * ρ + k + 1 : ℕ) : ℝ) * (R / δ) := mul_nonneg (Nat.cast_nonneg _) hRd
  set P := (U.Rn k 1 ρ x)⁻¹ * U.mMap k 1 ρ (Matrix.of fun _ _ => t) γ * U.Rn k 1 ρ x' with hPdef
  have key : U.Rn k 1 ρ x * P = U.mMap k 1 ρ (Matrix.of fun _ _ => t) γ * U.Rn k 1 ρ x' := by
    rw [hPdef, ← mul_assoc, ← mul_assoc, Matrix.mul_nonsing_inv _ (rn_unit x), one_mul]
  have eL : ∀ q, P (U.eB k 1 ρ (Sum.inr 0)) q = t * U.Rn k 1 ρ x' (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) q := by
    intro q
    have h := congrFun (congrFun key (U.eB k 1 ρ (Sum.inr 0))) q
    rw [nq_L, mn_L] at h
    simpa using h
  have eV : ∀ w q, P (U.eB k 1 ρ (Sum.inl (Sum.inr w))) q + cy x w * P (U.eB k 1 ρ (Sum.inr 0)) q =
      ∑ v, γ w v * U.Rn k 1 ρ x' (U.eB k 1 ρ (Sum.inl (Sum.inr v))) q := by
    intro w q
    have h := congrFun (congrFun key (U.eB k 1 ρ (Sum.inl (Sum.inr w)))) q
    rw [nq_V, mn_V] at h
    exact h
  have eO := congrFun (congrFun key (U.eB k 1 ρ (Sum.inl (Sum.inl 0)))) (U.eB k 1 ρ (Sum.inl (Sum.inl 0)))
  rw [nq_0, mn_0, radial_entry_lower_zero, mul_zero] at eO
  obtain ⟨hOO, hOV, hOL⟩ := rn_eB_zero_entries_eq x'
  have PLO : P (U.eB k 1 ρ (Sum.inr 0)) (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) = t := by
    rw [eL, hOO, mul_one]
  have PVO : ∀ w, P (U.eB k 1 ρ (Sum.inl (Sum.inr w))) (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) = -(cy x w * t) := by
    intro w
    have h := eV w (U.eB k 1 ρ (Sum.inl (Sum.inl 0)))
    rw [PLO, Finset.sum_eq_zero (fun v _ => by rw [radial_entry_middle_zero, mul_zero])] at h
    linear_combination h
  have hcx : ∀ v, ‖cy x v‖ ≤ R / δ := fun v =>
    div_bd hδ ht (by rw [← norm_neg, ← PVO]; exact hQ _ _)
  have hux : ∀ v, ‖Matrix.vecMul (star (cy x)) (Hpk k ρ) v‖ ≤ ((2 * ρ + k + 1 : ℕ) : ℝ) * (R / δ) :=
    vm_bd _ _ hpk_le hRd (fun i => by rw [Pi.star_apply, norm_star]; exact hcx i)
  have hnn : ‖nn x‖ ≤ ((2 * ρ + k + 1 : ℕ) : ℝ) * ((((2 * ρ + k + 1 : ℕ) : ℝ) * (R / δ)) * (R / δ)) :=
    dot_bd _ _ hnR hRd hux hcx
  rw [PLO] at eO
  simp only [PVO] at eO
  have hsum : ∑ v, -Matrix.vecMul (star (cy x)) (Hpk k ρ) v * -(cy x v * t) = nn x * t := by
    unfold nn dotProduct
    rw [Finset.sum_mul]
    exact Finset.sum_congr rfl fun v _ => by ring
  rw [hsum] at eO
  have ha : ‖(1 / 2 : ℂ) * nn x + Complex.I * (dy x : ℂ)‖ ≤ R / δ := by
    refine div_bd hδ ht ?_
    have h : ((1 / 2 : ℂ) * nn x + Complex.I * (dy x : ℂ)) * t =
        -P (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) (U.eB k 1 ρ (Sum.inl (Sum.inl 0))) := by
      linear_combination eO
    rw [h, norm_neg]
    exact hQ _ _
  have PLV : ∀ v, P (U.eB k 1 ρ (Sum.inr 0)) (U.eB k 1 ρ (Sum.inl (Sum.inr v))) =
      t * -Matrix.vecMul (star (cy x')) (Hpk k ρ) v := by
    intro v
    rw [eL, hOV]
  have hu' : ∀ v, ‖Matrix.vecMul (star (cy x')) (Hpk k ρ) v‖ ≤ R / δ := by
    intro v
    refine div_bd hδ ht ?_
    calc ‖Matrix.vecMul (star (cy x')) (Hpk k ρ) v * t‖
        = ‖P (U.eB k 1 ρ (Sum.inr 0)) (U.eB k 1 ρ (Sum.inl (Sum.inr v)))‖ := by
          rw [PLV, norm_mul, norm_mul, norm_neg, mul_comm]
      _ ≤ R := hQ _ _
  have hs : Matrix.vecMul (Matrix.vecMul (star (cy x')) (Hpk k ρ)) (Hpk k ρ) = star (cy x') := by
    rw [Matrix.vecMul_vecMul, _root_.Formalism.FourierDecayAlt.P.Ux1.hpk_sq', Matrix.vecMul_one]
  have hcx' : ∀ v, ‖cy x' v‖ ≤ ((2 * ρ + k + 1 : ℕ) : ℝ) * (R / δ) := by
    intro v
    rw [← norm_star, ← Pi.star_apply, ← hs]
    exact vm_bd _ _ hpk_le hRd hu' v
  have hnn' : ‖nn x'‖ ≤ ((2 * ρ + k + 1 : ℕ) : ℝ) * ((R / δ) * (((2 * ρ + k + 1 : ℕ) : ℝ) * (R / δ))) :=
    dot_bd _ _ hRd hnR hu' hcx'
  have ha' : ‖-(1 / 2 : ℂ) * nn x' + Complex.I * (dy x' : ℂ)‖ ≤ R / δ := by
    refine div_bd hδ ht ?_
    rw [mul_comm, ← hOL, ← eL]
    exact hQ _ _
  have hhalf : ∀ z : ℂ, ‖(1 / 2 : ℂ) * z‖ = ‖z‖ / 2 := by
    intro z
    rw [norm_mul]
    norm_num
    ring
  refine ⟨hcx, ?_, hcx', ?_, ?_⟩
  · calc |dy x| = ‖Complex.I * (dy x : ℂ)‖ := (norm_Id _).symm
      _ = ‖((1 / 2 : ℂ) * nn x + Complex.I * (dy x : ℂ)) - (1 / 2 : ℂ) * nn x‖ := by ring_nf
      _ ≤ ‖(1 / 2 : ℂ) * nn x + Complex.I * (dy x : ℂ)‖ + ‖(1 / 2 : ℂ) * nn x‖ := norm_sub_le _ _
      _ ≤ _ := by
        rw [hhalf]
        linarith
  · calc |dy x'| = ‖Complex.I * (dy x' : ℂ)‖ := (norm_Id _).symm
      _ = ‖(-(1 / 2 : ℂ) * nn x' + Complex.I * (dy x' : ℂ)) + (1 / 2 : ℂ) * nn x'‖ := by ring_nf
      _ ≤ ‖-(1 / 2 : ℂ) * nn x' + Complex.I * (dy x' : ℂ)‖ + ‖(1 / 2 : ℂ) * nn x'‖ := norm_add_le _ _
      _ ≤ _ := by
        rw [hhalf]
        linarith
  · intro i j
    have h := eV i (U.eB k 1 ρ (Sum.inl (Sum.inr j)))
    simp only [rn_VV, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true] at h
    rw [← h]
    calc _ ≤ ‖P (U.eB k 1 ρ (Sum.inl (Sum.inr i))) (U.eB k 1 ρ (Sum.inl (Sum.inr j)))‖ +
          ‖cy x i * P (U.eB k 1 ρ (Sum.inr 0)) (U.eB k 1 ρ (Sum.inl (Sum.inr j)))‖ := norm_add_le _ _
      _ ≤ R + R / δ * R := by
        rw [norm_mul]
        gcongr
        · exact hQ _ _
        · exact hcx i
        · exact hQ _ _

end Formalism.FourierDecayAlt.P.CutSH.SFG.RP

namespace Formalism.FourierDecayAlt.P.CutSH.SFG

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.PBH Formalism.FourierDecayAlt.P.CutSH.SFG.RP

theorem radial_proper : RadProper := by
  intro k ρ m e δ R hδ
  set R0 := max R 0 with hR0def
  have hR0 : 0 ≤ R0 := le_max_right _ _
  have hb : 0 ≤ R0 / δ := div_nonneg hR0 hδ.le
  have hn : (0 : ℝ) ≤ ((2 * ρ + k + 1 : ℕ) : ℝ) := Nat.cast_nonneg _
  have hnb : 0 ≤ ((2 * ρ + k + 1 : ℕ) : ℝ) * (R0 / δ) := mul_nonneg hn hb
  set Mx := R0 / δ + ((2 * ρ + k + 1 : ℕ) : ℝ) * ((((2 * ρ + k + 1 : ℕ) : ℝ) * (R0 / δ)) * (R0 / δ)) / 2
    with hMx
  set Mx' := ((2 * ρ + k + 1 : ℕ) : ℝ) * (R0 / δ) +
    (R0 / δ + ((2 * ρ + k + 1 : ℕ) : ℝ) * ((R0 / δ) * (((2 * ρ + k + 1 : ℕ) : ℝ) * (R0 / δ))) / 2) with hMx'
  have h1 : 0 ≤ ((2 * ρ + k + 1 : ℕ) : ℝ) * ((((2 * ρ + k + 1 : ℕ) : ℝ) * (R0 / δ)) * (R0 / δ)) / 2 :=
    div_nonneg (mul_nonneg hn (mul_nonneg hnb hb)) (by norm_num)
  have h2 : 0 ≤ R0 / δ + ((2 * ρ + k + 1 : ℕ) : ℝ) * ((R0 / δ) * (((2 * ρ + k + 1 : ℕ) : ℝ) * (R0 / δ))) / 2 :=
    add_nonneg hb (div_nonneg (mul_nonneg hn (mul_nonneg hb hnb)) (by norm_num))
  have hMx0 : 0 ≤ Mx := add_nonneg hb h1
  have hMx'0 : 0 ≤ Mx' := add_nonneg hnb h2
  refine ⟨Metric.closedBall (0 : U.RC k 1 ρ) Mx ×ˢ Metric.closedBall (0 : U.RC k 1 ρ) Mx',
    {γ | ∀ i j, ‖γ i j‖ ≤ R0 + R0 / δ * R0}, ?_, ?_, ?_⟩
  · exact (isCompact_closedBall _ _).prod (isCompact_closedBall _ _)
  · have hc := isCompact_univ_pi fun _ : Fin (2 * ρ + k + 1) =>
      isCompact_univ_pi fun _ : Fin (2 * ρ + k + 1) => isCompact_closedBall (0 : ℂ) (R0 + R0 / δ * R0)
    simp only [Set.pi, Set.mem_univ, forall_const, Metric.mem_closedBall, dist_zero_right] at hc
    exact hc
  · intro t γ xx ht hg
    have entry : ∀ p q : Fin (2 * (1 + ρ) + k + 1),
        ((U.Rn k 1 ρ xx.1)⁻¹ * U.mMap k 1 ρ (Matrix.of fun _ _ => t) γ * U.Rn k 1 ρ xx.2) p q =
          pt e t γ xx (finCongr (by omega) p) (finCongr (by omega) q) := by
      intro p q
      subst e
      simp [pt, rn1, mc, D.castM, Matrix.reindex_apply, Matrix.inv_submatrix_equiv,
        Matrix.submatrix_mul_equiv]
    have gbd : ∀ i j, ‖pt e t γ xx i j‖ ≤ B.gN (pt e t γ xx) := by
      intro i j
      rw [Complex.norm_def]
      unfold B.gN
      apply Real.sqrt_le_sqrt
      calc Complex.normSq (pt e t γ xx i j) ≤ ∑ j', Complex.normSq (pt e t γ xx i j') :=
            Finset.single_le_sum (f := fun j' => Complex.normSq (pt e t γ xx i j'))
              (fun _ _ => Complex.normSq_nonneg _) (Finset.mem_univ j)
        _ ≤ ∑ i', ∑ j', Complex.normSq (pt e t γ xx i' j') :=
            Finset.single_le_sum (f := fun i' => ∑ j', Complex.normSq (pt e t γ xx i' j'))
              (fun _ _ => Finset.sum_nonneg fun _ _ => Complex.normSq_nonneg _) (Finset.mem_univ i)
    have hQ : ∀ p q, ‖((U.Rn k 1 ρ xx.1)⁻¹ * U.mMap k 1 ρ (Matrix.of fun _ _ => t) γ * U.Rn k 1 ρ xx.2) p q‖ ≤ R0 := by
      intro p q
      rw [entry]
      exact (gbd _ _).trans (hg.trans (le_max_left _ _))
    obtain ⟨hc1, hd1, hc2, hd2, hγ⟩ := rad_main t γ xx.1 xx.2 hδ hR0 ht hQ
    refine ⟨Set.mem_prod.2 ⟨?_, ?_⟩, hγ⟩
    · rw [mem_closedBall_zero_iff]
      exact rc_bd _ hMx0 (fun v => (hc1 v).trans (le_add_of_nonneg_right h1)) hd1
    · rw [mem_closedBall_zero_iff]
      exact rc_bd _ hMx'0 (fun v => (hc2 v).trans (le_add_of_nonneg_right h2))
        (hd2.trans (le_add_of_nonneg_left hnb))

end Formalism.FourierDecayAlt.P.CutSH.SFG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGRadProper =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH_SFG_PtSmooth =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH_SFG_PtSmooth", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCoefficientHasCompactSupport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped ComplexConjugate ContDiff Matrix

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSH.SFG

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P.PBH Formalism.FourierDecayAlt.P.PBI Formalism.FourierDecayAlt.P.PBI.Sm

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem contDiff_castM_sfg {k a b : ℕ} (e : a = b) : ContDiff ℝ ∞ (fun g : B.Mat k a => D.castM e g) := by
  subst e
  have h1 : (fun g : B.Mat k a => D.castM rfl g) = fun g => g := by
    funext g
    simp [D.castM]
  rw [h1]
  exact contDiff_id

theorem castM_pt_sfg {k a b : ℕ} (h : a = b) (A M C : B.Mat k a) :
    (D.castM h A)⁻¹ * D.castM h M * D.castM h C = D.castM h (A⁻¹ * M * C) := by
  subst h
  simp [D.castM]

theorem contDiff_radial_embedding {k ρ m : ℕ} (e : ρ + 1 = m) : ContDiff ℝ ∞ (fun x : U.RC k 1 ρ => rn1 e x) := by
  refine contDiff_iff_contDiffAt.2 fun x₀ => ?_
  have hR : ContDiffAt ℝ ∞ (fun x : U.RC k 1 ρ => U.Rn k 1 ρ x) x₀ :=
    contDiffAt_pi.2 fun i => contDiffAt_pi.2 fun l => ms_rnC (f := fun y : U.RC k 1 ρ => y) contDiffAt_id i l
  unfold rn1
  exact ((contDiff_castM_sfg e).comp (contDiff_castM_sfg (Nat.add_comm 1 ρ))).contDiffAt.comp x₀ hR

theorem point_smooth : PtSmooth := by
  intro k ρ m e
  constructor
  · have hfun : (fun q : (ℂ × B.Mat k ρ) × (U.RC k 1 ρ × U.RC k 1 ρ) => pt e q.1.1 q.1.2 q.2) =
        fun q => D.castM e (D.castM (Nat.add_comm 1 ρ)
          ((U.Rn k 1 ρ q.2.1)⁻¹ * U.mMap k 1 ρ (Matrix.of fun _ _ => q.1.1) q.1.2 * U.Rn k 1 ρ q.2.2)) := by
      funext q
      unfold pt rn1 mc
      rw [castM_pt_sfg, castM_pt_sfg]
    rw [hfun]
    refine ((contDiff_castM_sfg e).comp (contDiff_castM_sfg (Nat.add_comm 1 ρ))).comp_contDiffOn ?_
    intro q₀ hq₀
    have ht : q₀.1.1 ≠ 0 := hq₀.1
    have hx : ContDiffAt ℝ ∞ (fun q : (ℂ × B.Mat k ρ) × (U.RC k 1 ρ × U.RC k 1 ρ) => q.2.1) q₀ :=
      contDiffAt_fst.comp q₀ contDiffAt_snd
    have hx' : ContDiffAt ℝ ∞ (fun q : (ℂ × B.Mat k ρ) × (U.RC k 1 ρ × U.RC k 1 ρ) => q.2.2) q₀ :=
      contDiffAt_snd.comp q₀ contDiffAt_snd
    have htc : ContDiffAt ℝ ∞ (fun q : (ℂ × B.Mat k ρ) × (U.RC k 1 ρ × U.RC k 1 ρ) => q.1.1) q₀ :=
      contDiffAt_fst.comp q₀ contDiffAt_fst
    have hZ : MS (fun q : (ℂ × B.Mat k ρ) × (U.RC k 1 ρ × U.RC k 1 ρ) =>
        Matrix.of fun (_ : Fin 1) (_ : Fin 1) => q.1.1) q₀ :=
      ms_ofC (f := fun q : (ℂ × B.Mat k ρ) × (U.RC k 1 ρ × U.RC k 1 ρ) => fun (_ : Fin 1) (_ : Fin 1) => q.1.1)
        (contDiffAt_pi.2 fun _ => contDiffAt_pi.2 fun _ => htc)
    have hγc : ContDiffAt ℝ ∞ (fun q : (ℂ × B.Mat k ρ) × (U.RC k 1 ρ × U.RC k 1 ρ) => q.1.2) q₀ :=
      contDiffAt_snd.comp q₀ contDiffAt_fst
    have hμ : MS (fun q : (ℂ × B.Mat k ρ) × (U.RC k 1 ρ × U.RC k 1 ρ) => q.1.2) q₀ := fun i l =>
      contDiffAt_pi.1 (contDiffAt_pi.1 hγc i) l
    have hdet : (Matrix.of fun (_ : Fin 1) (_ : Fin 1) => q₀.1.1).det ≠ 0 := by
      rw [Matrix.det_unique]; exact ht
    have hZi : MS (fun q : (ℂ × B.Mat k ρ) × (U.RC k 1 ρ × U.RC k 1 ρ) =>
        (Matrix.of fun (_ : Fin 1) (_ : Fin 1) => q.1.1)ᴴ⁻¹) q₀ :=
      ms_inv (ms_conjT hZ) (by rw [Matrix.det_conjTranspose]; exact star_ne_zero.mpr hdet)
    have hm : MS (fun q : (ℂ × B.Mat k ρ) × (U.RC k 1 ρ × U.RC k 1 ρ) =>
        U.mMap k 1 ρ (Matrix.of fun _ _ => q.1.1) q.1.2) q₀ := by
      unfold U.mMap
      exact measurable_block_three (ms_const _) (ms_const _) (ms_mul hZi (ms_const _)) (ms_const _) hμ (ms_const _)
        (ms_mul (ms_const _) hZ) (ms_const _) (ms_const _)
    have hall := ms_mul (ms_mul (ms_rnC_inv hx) hm) (ms_rnC hx')
    exact (contDiffAt_pi.2 fun i => contDiffAt_pi.2 fun l => hall i l).contDiffWithinAt
  · intro z
    have hg := contDiff_radial_embedding (k := k) e
    have hE : ∀ i l, ContDiff ℝ ∞ (fun x : U.RC k 1 ρ => rn1 e x i l) := fun i l =>
      contDiff_pi.1 (contDiff_pi.1 hg i) l
    have hell : ContDiff ℝ ∞ (fun x : U.RC k 1 ρ => ell k m z (rn1 e x)) := by
      unfold ell
      refine ContDiff.sum fun a _ => ?_
      by_cases h : a.val + 1 < m
      · simp only [dif_pos h]
        exact hE _ _
      · simp only [dif_neg h, Matrix.mulVec, dotProduct]
        exact ContDiff.sum fun b _ => (hE _ _).mul contDiff_const
    unfold psi
    have hre : ContDiff ℝ ∞ (fun x : U.RC k 1 ρ => (((cStd * ell k m z (rn1 e x)).re : ℝ) : ℂ)) :=
      Complex.ofRealCLM.contDiff.comp (Complex.reCLM.contDiff.comp (contDiff_const.mul hell))
    exact Complex.contDiff_exp.comp (contDiff_const.mul hre)

end Formalism.FourierDecayAlt.P.CutSH.SFG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH_SFG_PtSmooth =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamGood =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamGood", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGGfStep\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGParamSmooth\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSFGRadProper\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH_SFG_PtSmooth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem slice_family_good : CutSH.SliceFamGood :=
  CutSH.cutSH_sliceFamGood_of CutSH.SFG.gram_function_induction CutSH.SFG.radial_proper
    CutSH.SFG.parameter_smooth CutSH.SFG.point_smooth

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamGood =====

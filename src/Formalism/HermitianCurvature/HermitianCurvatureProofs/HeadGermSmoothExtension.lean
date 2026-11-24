module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PbWords
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHB2
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerMatrixBlockThreeMul
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBPts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.VLetZeroNear
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HasFDerivAtInt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenDomP
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelsOfBuiltSetting
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.UwClosedSubgroup
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ProperLeftVariablesDomain
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LettersPassPartialBessel
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PointLevelZeroEqEmbedding
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.Side0PosOf
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DetLowW
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ProperDomP
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothTruncationInduction
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocOfSmoothOnH
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PartialBesselSmoothCompactSupport
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothLevOfLoc
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActOneVariableSmul
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHLFinal
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadJacquetOfLetterAndHead
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear
import Formalism.HermitianCurvature.HermitianCurvatureProofs.UpperMinorOfLevelPoint
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellZetaMinors
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerBlockActionInvariant
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul
import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Polynomial.Basic
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHLNf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBSupp, Formalism.HermitianCurvature.HermitianCurvatureProofs.GoodCongr, Formalism.HermitianCurvature.HermitianCurvatureProofs.EntrywiseClassWordTransfer, Formalism.HermitianCurvature.HermitianCurvatureProofs.OneVariableLettersUnderIntegral, Formalism.HermitianCurvature.HermitianCurvatureProofs.RulesOnPbT, Formalism.HermitianCurvature.HermitianCurvatureProofs.RulesEq, Formalism.HermitianCurvature.HermitianCurvatureProofs.SideZeroOfLocalProperness, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBFinal, Formalism.HermitianCurvature.HermitianCurvatureProofs.Side1PosOf, Formalism.HermitianCurvature.HermitianCurvatureProofs.SideOnePositive, Formalism.HermitianCurvature.HermitianCurvatureProofs.WordSmoothPartialBesselInduction, Formalism.HermitianCurvature.HermitianCurvatureProofs.WordSmoothPartialBessel, Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadGermSmoothExtension

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBSupp =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBSupp", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PbWords\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHB2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerMatrixBlockThreeMul\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBPts\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.UpperMinorOfLevelPoint\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.VLetZeroNear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutHB

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.LevelPointCoordinates Formalism.FourierDecayAlt.P.PBQ

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

def ProperDomP : Prop :=
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq)
    (j : ℕ) (hj : j ≤ P.r) (Cs : Set (B.Mat P.k P.r)), IsCompact Cs →
    PartialBesselProperness.Proper (p.T.bs j) p.T.base (by omega : j + (P.r - j) = P.r) Cs (domP P.k P.r j p.T.base.z p.T.base.z')

theorem zxH_rfl (h : C.LPt) (v : XH h) : zxH h (D.ptSize h) rfl v = LeftFubiniLemmas.lhOf (D.ptPerm h) v *
    U.hMat (D.ptPerm h) (D.ptDiag h) := by
  first
  | rfl

theorem supp_of (hW : PartialBesselProperness.PbWords) (hP : ProperDomP) : Supp := by
  intro Wp Wq _ _ _ _ _ _ P p F j hj w h hh γ hF hw hγ hΩ K _ hK0
  obtain ⟨hh1, hh2⟩ := hh
  subst hh2
  have hhh : D.IsLocPt h (D.ptSize h) := ⟨hh1, rfl⟩
  obtain ⟨R, hR⟩ := hF.2.1
  set Cs : Set (B.Mat P.k P.r) := {g | B.gN g ≤ R} with hCs
  have hCc : IsCompact Cs := Formalism.FourierDecayAlt.P.PBE.isCompact_gN_le P.k P.r R
  have e : D.ptSize h + (P.r - D.ptSize h) = P.r := by omega
  have hd : ∀ i, D.ptDiag h i ≠ 0 := ptDiag_ne hhh

  have hR1 : ∀ ew : Wd.Ix (Fin w.length), ∃ R1 : ℝ, ∀ v : XH h, R1 < ‖v‖ → ∀ g ∈ B.GV P.k P.r,
      U.Zh P.k (D.ptSize h) (P.r - D.ptSize h) (D.castM e.symm g) =
        LeftFubiniLemmas.lhOf (D.ptPerm h) v * U.hMat (D.ptPerm h) (D.ptDiag h) →
      pbF (p.T.bs (D.ptSize h)) p.T.base e
        (D.uwG P.k P.r p.T.base.z p.T.base.z' F (D.ptSize h) (by omega) w ew) g = 0 := by
    intro ew
    refine pb_head_support (p.T.bs (D.ptSize h)) p.T.base e (D.ptPerm h) (D.ptDiag h) hd _ Cs hCc ?_
    intro g hg hgC
    by_contra hne
    exact hgC (Formalism.FourierDecayAlt.P.PBG.uwG_supp p.T.base.z p.T.base.z' F R hR (D.ptSize h) (by omega) w ew g hg hne)
  choose R1 hR1 using hR1
  refine ⟨⋃ ew, Metric.closedBall (0 : XH h) (R1 ew), isCompact_iUnion fun ew => isCompact_closedBall _ _,
    fun v hv τ hτK ew => ?_⟩
  have hτ : τ ≠ 0 := hK0 hτK
  have hvR : R1 ew < ‖v‖ := by
    by_contra hle
    have hle : ‖v‖ ≤ R1 ew := not_lt.mp hle
    exact hv (Set.mem_iUnion.2 ⟨ew, by rw [Metric.mem_closedBall, dist_zero_right]; exact hle⟩)
  have hpt := pts Wp Wq P p (D.ptSize h) hj h hhh γ hγ hΩ v
  have hyD := hpt.2 τ hτ
  have hyG := x0_GV hj hpt.1 hτ hγ
  have hz : p.T.base.z = D.castV e (liftVec P.k (D.ptSize h) (P.r - D.ptSize h) (p.T.bs (D.ptSize h)).z) :=
    (p.T.z_lev (D.ptSize h) (by omega)).symm
  have hPW := hW P.k (D.ptSize h) (P.r - D.ptSize h) P.r Wp Wq (p.T.bs (D.ptSize h)) p.T.base e hz (D.ptSize h)
    (by omega) F Cs (fun g hg _ => hF.1 g hg) hCc
    (fun g hg hgC => by
      by_contra hne
      exact hgC (hR g hg hne))
    (domP P.k P.r (D.ptSize h) p.T.base.z p.T.base.z') (isOpen_domP _ _ _ _ _)
    (fun g hg => hg.1 ⟨D.ptSize h, by omega⟩ (show D.ptSize h ≤ D.ptSize h from le_rfl) (show D.ptSize h ≤ P.r by omega))
    (hP Wp Wq P p (D.ptSize h) (by omega) Cs hCc) w ew _ hyD hyG
  unfold phf
  unfold pbT
  rw [hPW]
  refine hR1 ew v hvR _ hyG ?_
  rw [leading_block_of_base_point hj _ τ γ e.symm, zxH_rfl]

end Formalism.FourierDecayAlt.P.CutHB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBSupp =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GoodCongr =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.GoodCongr", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HasFDerivAtInt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped ContDiff ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.SliceIntegralLemmas

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.LevelPointCoordinates

section fam2

variable {X : Type} [NormedAddCommGroup X] [NormedSpace ℝ X] [FiniteDimensional ℝ X] [MeasurableSpace X]
  [BorelSpace X]
variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]

theorem good_congr {Φ Ψ : X → V1 E} (h : Good Φ) (hΨ : ∀ v τ, τ ≠ 0 → (Ψ v : ℂ → E) τ = (Φ v : ℂ → E) τ) :
    Good Ψ := by
  refine ⟨h.1.congr fun q hq => hΨ q.1 q.2 hq.2, fun K hK hK0 => ?_⟩
  obtain ⟨C, hC, hz⟩ := h.2 K hK hK0
  exact ⟨C, hC, fun v hv τ hτ => by rw [hΨ v τ (hK0 hτ), hz v hv τ hτ]⟩

theorem good_zero : Good (fun _ : X => (0 : V1 E)) :=
  ⟨contDiffOn_const.congr fun _ _ => rfl, fun _ _ _ => ⟨∅, isCompact_empty, fun _ _ _ _ => rfl⟩⟩

theorem good_add {Φ Ψ : X → V1 E} (h : Good Φ) (h' : Good Ψ) : Good (fun v => Φ v + Ψ v) := by
  refine ⟨(h.1.add h'.1).congr fun _ _ => rfl, fun K hK hK0 => ?_⟩
  obtain ⟨C, hC, hz⟩ := h.2 K hK hK0
  obtain ⟨C', hC', hz'⟩ := h'.2 K hK hK0
  refine ⟨C ∪ C', hC.union hC', fun v hv τ hτ => ?_⟩
  simp only [Set.mem_union, not_or] at hv
  show (Φ v : ℂ → E) τ + (Ψ v : ℂ → E) τ = 0
  rw [hz v hv.1 τ hτ, hz' v hv.2 τ hτ, add_zero]

theorem good_smul {Φ : X → V1 E} (h : Good Φ) (c : ℂ) : Good (fun v => c • Φ v) := by
  refine ⟨(h.1.const_smul c).congr fun _ _ => rfl, fun K hK hK0 => ?_⟩
  obtain ⟨C, hC, hz⟩ := h.2 K hK hK0
  refine ⟨C, hC, fun v hv τ hτ => ?_⟩
  show c • (Φ v : ℂ → E) τ = 0
  rw [hz v hv τ hτ, smul_zero]

theorem good_sum {ι : Type*} (s : Finset ι) (Φ : ι → X → V1 E) (h : ∀ i ∈ s, Good (Φ i)) :
    Good (fun v => ∑ i ∈ s, Φ i v) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using (good_zero : Good (fun _ : X => (0 : V1 E)))
  | insert a s ha ih =>
    simp only [Finset.sum_insert ha]
    exact good_add (h a (Finset.mem_insert_self a s)) (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

theorem good_opM {Φ : X → V1 E} (h : Good Φ) (m : ℂ → ℂ) (hm : ContDiffOn ℝ ∞ m {τ | τ ≠ 0}) :
    Good (fun v => opM m hm (Φ v)) := by
  have hm2 : ContDiffOn ℝ ∞ (fun q : X × ℂ => m q.2) (UX X) :=
    hm.comp contDiff_snd.contDiffOn fun q hq => hq.2
  refine ⟨(hm2.smul h.1).congr fun _ _ => rfl, fun K hK hK0 => ?_⟩
  obtain ⟨C, hC, hz⟩ := h.2 K hK hK0
  refine ⟨C, hC, fun v hv τ hτ => ?_⟩
  show m τ • (Φ v : ℂ → E) τ = 0
  rw [hz v hv τ hτ, smul_zero]

def dzF (Φ : X → V1 E) : X → V1 E := fun v => ⟨PBP.dz (Φ v : ℂ → E), contDiffOn_wirtinger_dz (Φ v).2⟩

def dzbF (Φ : X → V1 E) : X → V1 E := fun v => ⟨PBP.dzb (Φ v : ℂ → E), contDiffOn_wirtinger_dzbar (Φ v).2⟩

theorem good_dz {Φ : X → V1 E} (h : Good Φ) : Good (dzF Φ) := by
  have hc : ContDiffOn ℝ ∞ (fun q : X × ℂ => PBP.dz (Φ q.1 : ℂ → E) q.2) (UX X) := by
    unfold PBP.dz
    exact ((cd_partial h 1).sub ((cd_partial h Complex.I).const_smul Complex.I)).const_smul _
  refine ⟨hc.congr fun _ _ => rfl, fun K hK hK0 => ?_⟩
  obtain ⟨C, hC, hz⟩ := fderiv_zero_of h hK hK0
  refine ⟨C, hC, fun v hv τ hτ => ?_⟩
  show PBP.dz (Φ v : ℂ → E) τ = 0
  unfold PBP.dz
  rw [hz v hv τ hτ]
  simp

theorem good_dzb {Φ : X → V1 E} (h : Good Φ) : Good (dzbF Φ) := by
  have hc : ContDiffOn ℝ ∞ (fun q : X × ℂ => PBP.dzb (Φ q.1 : ℂ → E) q.2) (UX X) := by
    unfold PBP.dzb
    exact ((cd_partial h 1).add ((cd_partial h Complex.I).const_smul Complex.I)).const_smul _
  refine ⟨hc.congr fun _ _ => rfl, fun K hK hK0 => ?_⟩
  obtain ⟨C, hC, hz⟩ := fderiv_zero_of h hK hK0
  refine ⟨C, hC, fun v hv τ hτ => ?_⟩
  show PBP.dzb (Φ v : ℂ → E) τ = 0
  unfold PBP.dzb
  rw [hz v hv τ hτ]
  simp

theorem opP_apply (κ : ℂ) (f : V1 E) {τ : ℂ} (hτ : τ ≠ 0) :
    ((opP κ f : V1 E) : ℂ → E) τ = τ • PBP.dz (f : ℂ → E) τ + κ • (f : ℂ → E) τ := by
  show off0 (fun τ => τ • PBP.dz (f : ℂ → E) τ + κ • (f : ℂ → E) τ) τ = _
  rw [off0, if_neg hτ]

theorem opPb_apply (κ : ℂ) (f : V1 E) {τ : ℂ} (hτ : τ ≠ 0) :
    ((opPb κ f : V1 E) : ℂ → E) τ = conj τ • PBP.dzb (f : ℂ → E) τ + κ • (f : ℂ → E) τ := by
  show off0 (fun τ => conj τ • PBP.dzb (f : ℂ → E) τ + κ • (f : ℂ → E) τ) τ = _
  rw [off0, if_neg hτ]

section ok

variable (μ : Measure X) [IsFiniteMeasureOnCompacts μ] (ℓ : X → E →L[ℂ] E)

def OK (T : Module.End ℂ (V1 E)) : Prop :=
  ∀ (Φ : X → V1 E) (f : V1 E), Good Φ → IsInt μ ℓ Φ f →
    Good (fun v => T (Φ v)) ∧ IsInt μ ℓ (fun v => T (Φ v)) (T f)

variable {μ ℓ}

theorem int_add {Φ Ψ : X → V1 E} {f g : V1 E} (hℓ : Continuous ℓ) (h : Good Φ) (h' : Good Ψ)
    (hf : IsInt μ ℓ Φ f) (hg : IsInt μ ℓ Ψ g) : IsInt μ ℓ (fun v => Φ v + Ψ v) (f + g) := by
  intro τ hτ
  show (f : ℂ → E) τ + (g : ℂ → E) τ = ∫ v, ℓ v ((Φ v : ℂ → E) τ + (Ψ v : ℂ → E) τ) ∂μ
  rw [hf τ hτ, hg τ hτ, ← integral_add (good_int μ ℓ h hℓ hτ) (good_int μ ℓ h' hℓ hτ)]
  congr 1
  funext v
  rw [map_add (f := _)]

theorem int_smul {Φ : X → V1 E} {f : V1 E} (hf : IsInt μ ℓ Φ f) (c : ℂ) :
    IsInt μ ℓ (fun v => c • Φ v) (c • f) := by
  intro τ hτ
  show c • (f : ℂ → E) τ = ∫ v, ℓ v (c • (Φ v : ℂ → E) τ) ∂μ
  rw [hf τ hτ, ← integral_smul]
  congr 1
  funext v
  rw [map_smul]

theorem int_zero : IsInt μ ℓ (fun _ : X => (0 : V1 E)) 0 := by
  intro τ _
  show (0 : E) = ∫ v, ℓ v (0 : E) ∂μ
  simp

theorem int_sum {ι : Type*} (hℓ : Continuous ℓ) (s : Finset ι) (Φ : ι → X → V1 E) (f : ι → V1 E)
    (h : ∀ i ∈ s, Good (Φ i)) (hf : ∀ i ∈ s, IsInt μ ℓ (Φ i) (f i)) :
    IsInt μ ℓ (fun v => ∑ i ∈ s, Φ i v) (∑ i ∈ s, f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using (int_zero : IsInt μ ℓ (fun _ : X => (0 : V1 E)) 0)
  | insert a s ha ih =>
    simp only [Finset.sum_insert ha]
    exact int_add hℓ (h a (Finset.mem_insert_self a s))
      (good_sum s Φ fun i hi => h i (Finset.mem_insert_of_mem hi)) (hf a (Finset.mem_insert_self a s))
      (ih (fun i hi => h i (Finset.mem_insert_of_mem hi)) fun i hi => hf i (Finset.mem_insert_of_mem hi))

theorem ok_zero : OK μ ℓ (0 : Module.End ℂ (V1 E)) := fun _ _ _ _ => ⟨good_zero, int_zero⟩

theorem ok_one : OK μ ℓ (1 : Module.End ℂ (V1 E)) := fun _ _ h hf => ⟨h, hf⟩

theorem ok_add (hℓ : Continuous ℓ) {T T' : Module.End ℂ (V1 E)} (h : OK μ ℓ T) (h' : OK μ ℓ T') :
    OK μ ℓ (T + T') := fun Φ f hΦ hf =>
  ⟨good_add (h Φ f hΦ hf).1 (h' Φ f hΦ hf).1, int_add hℓ (h Φ f hΦ hf).1 (h' Φ f hΦ hf).1 (h Φ f hΦ hf).2
    (h' Φ f hΦ hf).2⟩

theorem ok_mul {T T' : Module.End ℂ (V1 E)} (h : OK μ ℓ T) (h' : OK μ ℓ T') : OK μ ℓ (T * T') :=
  fun Φ f hΦ hf => h _ _ (h' Φ f hΦ hf).1 (h' Φ f hΦ hf).2

theorem ok_smul {T : Module.End ℂ (V1 E)} (h : OK μ ℓ T) (c : ℂ) : OK μ ℓ (c • T) := fun Φ f hΦ hf =>
  ⟨good_smul (h Φ f hΦ hf).1 c, int_smul (h Φ f hΦ hf).2 c⟩

theorem ok_neg {T : Module.End ℂ (V1 E)} (h : OK μ ℓ T) : OK μ ℓ (-T) := by
  rw [← neg_one_smul ℂ T]
  exact ok_smul h (-1)

theorem ok_alg (c : ℂ) : OK μ ℓ (algebraMap ℂ (Module.End ℂ (V1 E)) c) := by
  rw [Algebra.algebraMap_eq_smul_one]
  exact ok_smul ok_one c

theorem ok_opM (m : ℂ → ℂ) (hm : ContDiffOn ℝ ∞ m {τ | τ ≠ 0}) : OK μ ℓ (opM (E := E) m hm) := by
  intro Φ f hΦ hf
  refine ⟨good_opM hΦ m hm, fun τ hτ => ?_⟩
  show m τ • (f : ℂ → E) τ = ∫ v, ℓ v (m τ • (Φ v : ℂ → E) τ) ∂μ
  rw [hf τ hτ, ← integral_smul]
  congr 1
  funext v
  rw [map_smul]

theorem ok_opP (hℓ : Continuous ℓ) (κ : ℂ) : OK μ ℓ (opP (E := E) κ) := by
  intro Φ f hΦ hf
  have hg : Good (fun v => opM (fun τ => τ) cd_id (dzF Φ v) + κ • Φ v) :=
    good_add (good_opM (good_dz hΦ) _ _) (good_smul hΦ κ)
  refine ⟨good_congr hg fun v τ hτ => by rw [opP_apply κ _ hτ]; rfl, fun τ hτ => ?_⟩
  have i1 : Integrable (fun v => τ • ℓ v (PBP.dz (Φ v : ℂ → E) τ)) μ := (good_int μ ℓ (good_dz hΦ) hℓ hτ).smul τ
  have i2 : Integrable (fun v => κ • ℓ v ((Φ v : ℂ → E) τ)) μ := (good_int μ ℓ hΦ hℓ hτ).smul κ
  rw [opP_apply κ f hτ, dz_int μ ℓ hΦ hℓ hf hτ, hf τ hτ, ← integral_smul, ← integral_smul, ← integral_add i1 i2]
  congr 1
  funext v
  rw [opP_apply κ _ hτ, map_add (f := _), map_smul, map_smul]

theorem ok_opPb (hℓ : Continuous ℓ) (κ : ℂ) : OK μ ℓ (opPb (E := E) κ) := by
  intro Φ f hΦ hf
  have hg : Good (fun v => opM (fun τ => conj τ) cd_conj (dzbF Φ v) + κ • Φ v) :=
    good_add (good_opM (good_dzb hΦ) _ _) (good_smul hΦ κ)
  refine ⟨good_congr hg fun v τ hτ => by rw [opPb_apply κ _ hτ]; rfl, fun τ hτ => ?_⟩
  have i1 : Integrable (fun v => conj τ • ℓ v (PBP.dzb (Φ v : ℂ → E) τ)) μ :=
    (good_int μ ℓ (good_dzb hΦ) hℓ hτ).smul (conj τ)
  have i2 : Integrable (fun v => κ • ℓ v ((Φ v : ℂ → E) τ)) μ := (good_int μ ℓ hΦ hℓ hτ).smul κ
  rw [opPb_apply κ f hτ, dzb_int μ ℓ hΦ hℓ hf hτ, hf τ hτ, ← integral_smul, ← integral_smul, ← integral_add i1 i2]
  congr 1
  funext v
  rw [opPb_apply κ _ hτ, map_add (f := _), map_smul, map_smul]

end ok

end fam2

end Formalism.FourierDecayAlt.P.SliceIntegralLemmas
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GoodCongr =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.EntrywiseClassWordTransfer =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.EntrywiseClassWordTransfer", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GoodCongr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped ContDiff ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.SliceIntegralLemmas

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.LevelPointCoordinates

section pr

variable {X : Type} [NormedAddCommGroup X] [NormedSpace ℝ X] [FiniteDimensional ℝ X] [MeasurableSpace X]
  [BorelSpace X]
variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]
variable (μ : Measure X) [IsFiniteMeasureOnCompacts μ] (ℓ : X → E →L[ℂ] E)

def PG (x : Q.Pr (V1 E)) : Prop := OK μ ℓ x.1 ∧ OK μ ℓ x.2.unop

variable {μ ℓ}

theorem pg_zero : PG μ ℓ (0 : Q.Pr (V1 E)) := ⟨ok_zero, ok_zero⟩

theorem pg_one : PG μ ℓ (1 : Q.Pr (V1 E)) := ⟨ok_one, ok_one⟩

theorem pg_add (hℓ : Continuous ℓ) {x y : Q.Pr (V1 E)} (hx : PG μ ℓ x) (hy : PG μ ℓ y) : PG μ ℓ (x + y) :=
  ⟨ok_add hℓ hx.1 hy.1, ok_add hℓ hx.2 hy.2⟩

theorem pg_mul {x y : Q.Pr (V1 E)} (hx : PG μ ℓ x) (hy : PG μ ℓ y) : PG μ ℓ (x * y) :=
  ⟨ok_mul hx.1 hy.1, ok_mul hy.2 hx.2⟩

theorem pg_neg {x : Q.Pr (V1 E)} (hx : PG μ ℓ x) : PG μ ℓ (-x) := ⟨ok_neg hx.1, ok_neg hx.2⟩

theorem pg_star {x : Q.Pr (V1 E)} (hx : PG μ ℓ x) : PG μ ℓ (star x) := ⟨hx.2, hx.1⟩

theorem pg_alg (c : ℂ) : PG μ ℓ (algebraMap ℂ (Q.Pr (V1 E)) c) := ⟨ok_alg c, ok_alg (conj c)⟩

theorem pg_sum (hℓ : Continuous ℓ) {ι : Type*} (s : Finset ι) (f : ι → Q.Pr (V1 E)) (h : ∀ i ∈ s, PG μ ℓ (f i)) :
    PG μ ℓ (∑ i ∈ s, f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using (pg_zero : PG μ ℓ (0 : Q.Pr (V1 E)))
  | insert a s ha ih =>
    rw [Finset.sum_insert ha]
    exact pg_add hℓ (h a (Finset.mem_insert_self a s)) (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

variable {S : Type} [Fintype S] [DecidableEq S]


variable (μ ℓ) in
def EntrywiseClass (M : Wd.SlopeTestRemainingChoices S (Q.Pr (V1 E))) : Prop := ∀ a b, PG μ ℓ (M a b)

theorem entrywise_class_mul (hℓ : Continuous ℓ) {M N : Wd.SlopeTestRemainingChoices S (Q.Pr (V1 E))} (hM : EntrywiseClass μ ℓ M) (hN : EntrywiseClass μ ℓ N) :
    EntrywiseClass μ ℓ (M * N) := fun a b => by
  rw [Matrix.mul_apply]
  exact pg_sum hℓ _ _ fun c _ => pg_mul (hM a c) (hN c b)

theorem entrywise_class_sum (hℓ : Continuous ℓ) {ι : Type*} (s : Finset ι) (M : ι → Wd.SlopeTestRemainingChoices S (Q.Pr (V1 E)))
    (h : ∀ i ∈ s, EntrywiseClass μ ℓ (M i)) : EntrywiseClass μ ℓ (∑ i ∈ s, M i) := fun a b => by
  rw [Matrix.sum_apply]
  exact pg_sum hℓ _ _ fun i hi => h i hi a b

theorem entrywise_class_one : EntrywiseClass μ ℓ (1 : Wd.SlopeTestRemainingChoices S (Q.Pr (V1 E))) := fun a b => by
  rw [Matrix.one_apply]
  split_ifs
  · exact pg_one
  · exact pg_zero

theorem entrywise_class_unit_matrix (a : S) (i j : Fin 2) : EntrywiseClass μ ℓ (Wd.eU a i j : Wd.SlopeTestRemainingChoices S (Q.Pr (V1 E))) := fun x y => by
  unfold Wd.eU
  rw [Matrix.of_apply]
  split_ifs
  · exact pg_one
  · exact pg_zero

theorem entrywise_class_scalar {x : Q.Pr (V1 E)} (hx : PG μ ℓ x) : EntrywiseClass μ ℓ (Wd.io x : Wd.SlopeTestRemainingChoices S (Q.Pr (V1 E))) := fun a b => by
  unfold Wd.io
  rw [Matrix.scalar_apply, Matrix.diagonal_apply]
  split_ifs
  · exact hx
  · exact pg_zero

theorem entrywise_class_insert (hℓ : Continuous ℓ) (a : S) {M : Wd.M2 (Wd.SlopeTestRemainingChoices S (Q.Pr (V1 E)))} (hM : ∀ i j, EntrywiseClass μ ℓ (M i j)) :
    EntrywiseClass μ ℓ (Wd.ins a M) := by
  unfold Wd.ins
  exact entrywise_class_sum hℓ _ _ fun i _ => entrywise_class_sum hℓ _ _ fun j _ => entrywise_class_mul hℓ (entrywise_class_unit_matrix a i j) (hM i j)

theorem pg_Ts (hℓ : Continuous ℓ) (σ : Wd.Site (Q.Pr (V1 E))) (hp : PG μ ℓ σ.p) (hc : PG μ ℓ σ.c)
    (hci : PG μ ℓ σ.ci) (Y : ℂ) : ∀ i j, PG μ ℓ (Wd.Ts σ Y i j) := by
  intro i j
  fin_cases i <;> fin_cases j
  · exact pg_add hℓ (pg_alg Y) hp
  · exact pg_neg hc
  · exact hci
  · exact pg_zero

theorem entrywise_class_letter (hℓ : Continuous ℓ) (σ : Wd.Site (Q.Pr (V1 E))) (hp : PG μ ℓ σ.p) (hc : PG μ ℓ σ.c)
    (hci : PG μ ℓ σ.ci) (l : Wd.Letter ℂ S) : EntrywiseClass μ ℓ (Wd.vlet σ l) := by
  unfold Wd.vlet
  refine entrywise_class_insert hℓ _ fun i j => ?_
  unfold Wd.lift0
  rw [Matrix.map_apply]
  refine entrywise_class_scalar ?_
  split_ifs
  · exact pg_Ts hℓ σ hp hc hci _ i j
  · rw [Matrix.map_apply]
    exact pg_star (pg_Ts hℓ σ hp hc hci _ i j)

theorem entrywise_class_word_transfer (hℓ : Continuous ℓ) (σ : Wd.Site (Q.Pr (V1 E))) (hp : PG μ ℓ σ.p) (hc : PG μ ℓ σ.c)
    (hci : PG μ ℓ σ.ci) : ∀ w : List (Wd.Letter ℂ S), EntrywiseClass μ ℓ (Wd.bT σ w)
  | [] => by rw [Wd.bT]; exact entrywise_class_one
  | l :: w => by
      rw [Wd.bT]
      exact entrywise_class_mul hℓ (entrywise_class_letter hℓ σ hp hc hci l) (entrywise_class_word_transfer hℓ σ hp hc hci w)

theorem entrywise_class_site_one (hℓ : Continuous ℓ) (κ : ℂ) (w : List (Wd.Letter ℂ S)) :
    EntrywiseClass μ ℓ (Wd.bT (site1 (E := E) κ) w) :=
  entrywise_class_word_transfer hℓ _ ⟨ok_opP hℓ κ, ok_neg (ok_opPb hℓ κ)⟩ ⟨ok_opM _ cd_id, ok_opM _ cd_conj⟩
    ⟨ok_opM _ cd_inv, ok_opM _ cd_conjinv⟩ w

theorem oneBT_int (hℓ : Continuous ℓ) (κ : ℂ) (w : List (Wd.Letter ℂ S)) (Φ : X → Wd.Ix S → V1 E)
    (x : Wd.Ix S → V1 E) (hG : ∀ b, Good (fun v => Φ v b)) (hI : ∀ b, IsInt μ ℓ (fun v => Φ v b) (x b))
    (a : Wd.Ix S) :
    Good (fun v => oneBT κ w (Φ v) a) ∧ IsInt μ ℓ (fun v => oneBT κ w (Φ v) a) (oneBT κ w x a) := by
  have hB := entrywise_class_site_one (μ := μ) (ℓ := ℓ) hℓ κ w
  unfold oneBT act1
  exact ⟨good_sum _ _ fun b _ => ((hB a b).1 _ _ (hG b) (hI b)).1,
    int_sum hℓ _ _ _ (fun b _ => ((hB a b).1 _ _ (hG b) (hI b)).1) fun b _ => ((hB a b).1 _ _ (hG b) (hI b)).2⟩

end pr

end Formalism.FourierDecayAlt.P.SliceIntegralLemmas
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.EntrywiseClassWordTransfer =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.OneVariableLettersUnderIntegral =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.OneVariableLettersUnderIntegral", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHB2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HasFDerivAtInt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.EntrywiseClassWordTransfer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory

noncomputable section

namespace Formalism.FourierDecayAlt.P.SliceIntegralLemmas

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.LevelPointCoordinates

theorem good_of_goodFam {E X S : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] [NormedAddCommGroup X]
    [NormedSpace ℝ X] {Φ : X → S → V1 E} (h : CutHB.GoodFam Φ) (e : S) : Good (fun v => Φ v e) := by
  refine ⟨h.1 e, fun K hK hK0 => ?_⟩
  obtain ⟨C, hC, hz⟩ := h.2 K hK hK0
  exact ⟨C, hC, fun v hv τ hτ => hz v hv τ hτ e⟩

end Formalism.FourierDecayAlt.P.SliceIntegralLemmas

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.LevelPointCoordinates Formalism.FourierDecayAlt.P.SliceIntegralLemmas

theorem one_variable_letters_under_integral : CutHB.OneBTInt := by
  intro E _ _ _ X _ _ _ _ _ μ _ ℓ hℓ S _ _ κ w Φ hΦ f hf t ht e
  exact (oneBT_int (μ := μ) hℓ κ w Φ f (good_of_goodFam hΦ) (fun b τ hτ => hf b τ hτ) e).2 t ht

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.OneVariableLettersUnderIntegral =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RulesOnPbT =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RulesOnPbT", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenDomP\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellZetaMinors\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerBlockActionInvariant\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelsOfBuiltSetting\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.UwClosedSubgroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBQ

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants

section nl

variable {k : ℕ}

def cL {j ρ : ℕ} (a : Fin j → ℂ) : Fin (2 * ρ + k + 1) → Fin j → ℂ :=
  fun v α => if v.val = 2 * ρ + k then a (Fin.rev α) else 0

theorem nL_apply {j ρ : ℕ} (hρ : 1 ≤ ρ) (a : Fin j → ℂ) (p q : Fin (2 * (j + ρ) + k + 1)) :
    LevelPointCoordinates.nL k (j + ρ) j (by omega) a p q =
      (if p = q then 1 else 0) +
        (if h : p.val = j + 2 * ρ + k ∧ j + 2 * ρ + k + 1 ≤ q.val then a ⟨2 * (j + ρ) + k - q.val, by omega⟩ else 0) -
        (if h : p.val < j ∧ q.val = j then conj (a ⟨p.val, h.1⟩) else 0) := by
  have hS1 : (∑ c : Fin j, if esI k (j + ρ) ⟨j, by omega⟩ = p ∧ esI k (j + ρ) ⟨c.val, by omega⟩ = q then a c else 0) =
      (if h : p.val = j + 2 * ρ + k ∧ j + 2 * ρ + k + 1 ≤ q.val then a ⟨2 * (j + ρ) + k - q.val, by omega⟩ else 0) := by
    split_ifs with h
    · rw [Finset.sum_eq_single ⟨2 * (j + ρ) + k - q.val, by omega⟩]
      · rw [if_pos]
        constructor <;> apply Fin.ext <;> simp [esI] <;> omega
      · intro b _ hb
        rw [if_neg]
        rintro ⟨_, h2⟩
        apply hb
        apply Fin.ext
        have := congrArg Fin.val h2
        simp [esI] at this
        simp
        omega
      · simp
    · refine Finset.sum_eq_zero fun b _ => ?_
      rw [if_neg]
      rintro ⟨h1, h2⟩
      apply h
      have e1 := congrArg Fin.val h1
      have e2 := congrArg Fin.val h2
      simp [esI] at e1 e2
      have := b.isLt
      omega
  have hS2 : (∑ c : Fin j, if eI k (j + ρ) ⟨c.val, by omega⟩ = p ∧ eI k (j + ρ) ⟨j, by omega⟩ = q then
      conj (a c) else 0) = (if h : p.val < j ∧ q.val = j then conj (a ⟨p.val, h.1⟩) else 0) := by
    split_ifs with h
    · rw [Finset.sum_eq_single ⟨p.val, h.1⟩]
      · rw [if_pos]
        constructor <;> apply Fin.ext <;> simp [eI] <;> omega
      · intro b _ hb
        rw [if_neg]
        rintro ⟨h1, _⟩
        apply hb
        apply Fin.ext
        have := congrArg Fin.val h1
        simp [eI] at this
        simp
        omega
      · simp
    · refine Finset.sum_eq_zero fun b _ => ?_
      rw [if_neg]
      rintro ⟨h1, h2⟩
      apply h
      have e1 := congrArg Fin.val h1
      have e2 := congrArg Fin.val h2
      simp [eI] at e1 e2
      have := b.isLt
      omega
  unfold LevelPointCoordinates.nL
  simp only [Matrix.add_apply, Matrix.one_apply, Matrix.sum_apply, Matrix.sub_apply, Matrix.smul_apply,
    Matrix.single_apply, smul_eq_mul, mul_ite, mul_one, mul_zero, Finset.sum_sub_distrib]
  rw [hS1, hS2]
  ring

theorem skewOf_zero {j : ℕ} : U.skewOf (0 : (G.UT j → ℂ) × (Fin j → ℝ)) = 0 := by
  ext a b
  simp [U.skewOf, G.strictUpper]

theorem hpk_last {ρ : ℕ} (hρ : 1 ≤ ρ) (v : Fin (2 * ρ + k + 1)) :
    Hpk k ρ ⟨2 * ρ + k, by omega⟩ v = if v.val = 0 then 1 else 0 := by
  unfold Hpk
  have hv := v.isLt
  simp only [Fin.ext_iff]
  split_ifs <;> first | rfl | (exfalso; omega)

theorem cL_last {j ρ : ℕ} (a : Fin j → ℂ) (v : Fin (2 * ρ + k + 1)) (α : Fin j) :
    (cL (k := k) (ρ := ρ) a) v α = if v.val = 2 * ρ + k then a (Fin.rev α) else 0 := rfl

theorem cHc_zero {j ρ : ℕ} (hρ : 1 ≤ ρ) (a : Fin j → ℂ) :
    (Matrix.of (cL (k := k) (ρ := ρ) a))ᴴ * Hpk k ρ * Matrix.of (cL (k := k) (ρ := ρ) a) = 0 := by
  ext β γ
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.of_apply, cL_last, Matrix.zero_apply]
  refine Finset.sum_eq_zero fun v _ => ?_
  by_cases hv : v.val = 2 * ρ + k
  · rw [if_pos hv, Finset.sum_eq_single v]
    · have h := hpk_last (k := k) hρ v
      rw [show (⟨2 * ρ + k, by omega⟩ : Fin (2 * ρ + k + 1)) = v from Fin.ext hv.symm] at h
      rw [h, if_neg (show ¬ (v.val = 0) by omega)]
      simp
    · intro u _ hu
      by_cases hu' : u.val = 2 * ρ + k
      · exact absurd (Fin.ext (hu'.trans hv.symm)) hu
      · simp [hu']
    · simp
  · simp [hv]

theorem wcH_apply {j ρ : ℕ} (hρ : 1 ≤ ρ) (a : Fin j → ℂ) (α : Fin j) (v : Fin (2 * ρ + k + 1)) :
    (G.wMat j * (Matrix.of (cL (k := k) (ρ := ρ) a))ᴴ * Hpk k ρ) α v = if v.val = 0 then conj (a α) else 0 := by
  rw [Matrix.mul_assoc, Matrix.mul_apply, Finset.sum_eq_single α.rev]
  · rw [show G.wMat j α α.rev = 1 by simp [G.wMat], one_mul, Matrix.mul_apply,
      Finset.sum_eq_single ⟨2 * ρ + k, by omega⟩]
    · rw [hpk_last hρ, Matrix.conjTranspose_apply, Matrix.of_apply, cL_last, if_pos rfl, Fin.rev_rev]
      split_ifs <;> simp
    · intro u _ hu
      rw [Matrix.conjTranspose_apply, Matrix.of_apply, cL_last, if_neg (fun h => hu (Fin.ext h))]
      simp
    · simp
  · intro β _ hβ
    rw [show G.wMat j α β = 0 by simp [G.wMat]; exact fun h => hβ h, zero_mul]
  · simp

theorem nL_eq {j ρ : ℕ} (hρ : 1 ≤ ρ) (a : Fin j → ℂ) :
    LevelPointCoordinates.nL k (j + ρ) j (by omega) a = U.Rn k j ρ (cL a, 0) := by
  ext p q
  obtain ⟨x, rfl⟩ := (U.eB k j ρ).surjective p
  obtain ⟨y, rfl⟩ := (U.eB k j ρ).surjective q
  rw [nL_apply hρ, Ux3.rn_eq, _root_.Formalism.FourierDecayAlt.P.Ux4.block3_apply]
  simp only [cHc_zero hρ, skewOf_zero, smul_zero, add_zero, Matrix.mul_zero]
  have v1 := @_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_first_val_eq k j ρ
  have v2 := @Ux3.block_index_middle_val k j ρ
  have v3 := @_root_.Formalism.FourierDecayAlt.P.Ux4.block_index_last_val_eq k j ρ
  rcases x with ((α | u) | α) <;> rcases y with ((β | v) | β) <;>
    simp only [Matrix.fromBlocks_apply₁₁, Matrix.fromBlocks_apply₁₂, Matrix.fromBlocks_apply₂₁,
      Matrix.fromBlocks_apply₂₂, Matrix.fromRows_apply_inl, Matrix.fromRows_apply_inr, Matrix.fromCols_apply_inl,
      Matrix.fromCols_apply_inr, Matrix.zero_apply, Matrix.one_apply, Matrix.neg_apply, Matrix.of_apply,
      EmbeddingLike.apply_eq_iff_eq, Sum.inl.injEq, Sum.inr.injEq, reduceCtorEq, if_false, v1, v2, v3]
  · have := α.isLt; have := β.isLt
    rw [dite_eq_right (by omega), dite_eq_right (by omega)]; ring
  · have := α.isLt; have := v.isLt
    rw [wcH_apply hρ, dite_eq_right (by omega)]
    by_cases hv : v.val = 0
    · rw [dite_eq_left ⟨α.isLt, by omega⟩, if_pos hv]; simp
    · rw [dite_eq_right (by omega), if_neg hv]; simp
  · have := α.isLt; have := β.isLt
    rw [dite_eq_right (by omega), dite_eq_right (by omega)]; ring
  · have := u.isLt; have := β.isLt
    rw [dite_eq_right (by omega), dite_eq_right (by omega)]; ring
  · have := u.isLt; have := v.isLt
    rw [dite_eq_right (by omega), dite_eq_right (by omega)]; ring
  · have := u.isLt; have := β.isLt
    rw [cL_last, dite_eq_right (show ¬(j + u.val < j ∧ j + (2 * ρ + k + 1) + β.val = j) by omega)]
    by_cases hu : u.val = 2 * ρ + k
    · rw [dite_eq_left (show j + u.val = j + 2 * ρ + k ∧ j + 2 * ρ + k + 1 ≤ j + (2 * ρ + k + 1) + β.val by omega),
        if_pos hu]
      have e : (⟨2 * (j + ρ) + k - (j + (2 * ρ + k + 1) + β.val), by omega⟩ : Fin j) = β.rev :=
        Fin.ext (by simp [Fin.rev]; omega)
      rw [e]; ring
    · rw [dite_eq_right (show ¬(j + u.val = j + 2 * ρ + k ∧ j + 2 * ρ + k + 1 ≤ j + (2 * ρ + k + 1) + β.val) by omega),
        if_neg hu]; ring
  · have := α.isLt; have := β.isLt
    rw [dite_eq_right (by omega), dite_eq_right (by omega)]; ring
  · have := α.isLt; have := v.isLt
    rw [dite_eq_right (by omega), dite_eq_right (by omega)]; ring
  · have := α.isLt; have := β.isLt
    rw [dite_eq_right (by omega), dite_eq_right (by omega)]; ring

end nl

section tower

variable {k : ℕ}

theorem nL_castM {r j : ℕ} (hj : j + 1 ≤ r) (a : Fin j → ℂ) :
    LevelPointCoordinates.nL k r j hj a = D.castM (by omega : j + (r - j) = r) (U.Rn k j (r - j) (cL a, 0)) := by
  have key : ∀ (ρ r' : ℕ) (e : j + ρ = r') (hj' : j + 1 ≤ r'),
      LevelPointCoordinates.nL k r' j hj' a = D.castM e (U.Rn k j ρ (cL a, 0)) := by
    intro ρ r' e hj'
    subst e
    rw [Formalism.FourierDecayAlt.P.Dx2.MN.castM_rfl]
    exact nL_eq (by omega) a
  exact key (r - j) r (by omega) hj

theorem nL_mem {r j : ℕ} (hj : j + 1 ≤ r) (a : Fin j → ℂ) : LevelPointCoordinates.nL k r j hj a ∈ Nset k r := by
  rw [nL_castM hj a]
  exact PBH.castM_N _ (_root_.Formalism.FourierDecayAlt.P.Ux3.rn_nset _)

theorem psi_castM {j ρ r : ℕ} (e : j + ρ = r) (zj : Fin (2 * ρ + k + 1) → ℂ) (z : Fin (2 * r + k + 1) → ℂ)
    (hz : D.castV e (liftVec k j ρ zj) = z) (c : ℂ) (M : B.Mat k (j + ρ)) :
    psi k r z c (D.castM e M) = psi k (j + ρ) (liftVec k j ρ zj) c M := by
  subst e
  rw [Formalism.FourierDecayAlt.P.JCTx5.castV_rfl] at hz
  subst hz
  rw [Formalism.FourierDecayAlt.P.Dx2.MN.castM_rfl]

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem domP_sgs {r : ℕ} (Bs : B.RealPlaceData k r Wp Wq) (j : ℕ) {pp : B.SS k r} (hp : Bs.inSS pp) {g : Q.Mx k r}
    (hg : g ∈ domP k r j Bs.z Bs.z') : B.sgs pp g ∈ domP k r j Bs.z Bs.z' :=
  ⟨fun l h1 h2 => by rw [Formalism.FourierDecayAlt.P.BigCellZetaMinors.dmin_sgs Bs hp]; exact hg.1 l h1 h2,
    by unfold Gf; rw [Formalism.FourierDecayAlt.P.BigCellZetaMinors.dmin_sgs Bs hp, Formalism.FourierDecayAlt.P.BigCellZetaMinors.dmin_sgs Bs hp]; exact hg.2⟩

theorem minorDomain_mul_unipotent {r : ℕ} (Bs : B.RealPlaceData k r Wp Wq) (j : ℕ) {g : Q.Mx k r}
    (hg : g ∈ domP k r j Bs.z Bs.z') {m : Q.Mx k r} (hm : m ∈ Nset k r) : g * m ∈ domP k r j Bs.z Bs.z' := by
  have hp : Bs.inSS ((Matrix.of.symm 1, Matrix.of.symm 1), (Matrix.of.symm 1, Matrix.of.symm m)) :=
    ⟨Formalism.FourierDecayAlt.P.BigCellZetaMinors.one_uw _, Formalism.QuantumDeterminants.WeylGroupFacts.mem_n_one, Formalism.FourierDecayAlt.P.BigCellZetaMinors.one_uw _, hm⟩
  have hs : B.sgs ((Matrix.of.symm 1, Matrix.of.symm 1), (Matrix.of.symm 1, Matrix.of.symm m)) g = g * m := by
    simp only [B.sgs, Equiv.apply_symm_apply, inv_one, one_mul, mul_one]
  rw [← hs]
  exact domP_sgs Bs j hp hg

theorem domP_N_mul {r : ℕ} (Bs : B.RealPlaceData k r Wp Wq) (j : ℕ) {g : Q.Mx k r}
    (hg : g ∈ domP k r j Bs.z Bs.z') {m : Q.Mx k r} (hm : m ∈ Nset k r) : m * g ∈ domP k r j Bs.z Bs.z' := by
  have hmi : m⁻¹ ∈ Nset k r := Formalism.QuantumDeterminants.WeylGroupFacts.mem_n_inv hm
  have hp : Bs.inSS ((Matrix.of.symm 1, Matrix.of.symm m⁻¹), (Matrix.of.symm 1, Matrix.of.symm 1)) :=
    ⟨Formalism.FourierDecayAlt.P.BigCellZetaMinors.one_uw _, hmi, Formalism.FourierDecayAlt.P.BigCellZetaMinors.one_uw _, Formalism.QuantumDeterminants.WeylGroupFacts.mem_n_one⟩
  have hu : IsUnit m.det := Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh hm.1
  have hs : B.sgs ((Matrix.of.symm 1, Matrix.of.symm m⁻¹), (Matrix.of.symm 1, Matrix.of.symm 1)) g = m * g := by
    simp only [B.sgs, Equiv.apply_symm_apply, inv_one, one_mul, mul_one,
      Matrix.nonsing_inv_nonsing_inv _ hu]
  rw [← hs]
  exact domP_sgs Bs j hp hg

variable [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

end tower

end Formalism.FourierDecayAlt.P.PBQ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RulesOnPbT =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RulesEq =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RulesEq", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHB2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RulesOnPbT\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory

noncomputable section

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.PBQ

theorem rules_eq : CutHB.RulesEq := by
  intro Wp Wq _ _ _ _ _ _ P p F j hj _hF
  refine ⟨fun g hg m hm => ⟨minorDomain_mul_unipotent p.T.base j hg.2 hm, ?_⟩,
    fun g hg a => ⟨domP_N_mul p.T.base j hg.2 (nL_mem hj a), ?_⟩⟩
  · exact pbF_right _ _ _ F g m hm
  · show pbF (p.T.bs j) p.T.base _ F (LevelPointCoordinates.nL P.k P.r j hj a * g) =
      psi P.k P.r p.T.base.z cStd (LevelPointCoordinates.nL P.k P.r j hj a) • pbF (p.T.bs j) p.T.base _ F g
    rw [nL_castM hj a, pbF_left_rn p.T.base _ (p.T.bs j).z_mem F (cL a, 0) g,
      psi_castM _ (p.T.bs j).z p.T.base.z (p.T.z_lev j (by omega))]

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RulesEq =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SideZeroOfLocalProperness =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SideZeroOfLocalProperness", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHB2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ProperLeftVariablesDomain\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBPts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LettersPassPartialBessel\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PointLevelZeroEqEmbedding\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.Side0PosOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.SliceIntegralLemmas

open Formalism.FourierDecayAlt

theorem side_zero_of_local_properness (hPr : ProperLeftVariablesDomain) : CutHB.Side0 :=
  CutHB.side_zero_of_positive_and_zero (side0Pos_of'' hPr) (side0Zero_of Formalism.FourierDecayAlt.P.letters_pass_partial_bessel hPr CutHB.pts)

end Formalism.FourierDecayAlt.P.SliceIntegralLemmas

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SideZeroOfLocalProperness =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBFinal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBFinal", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBSupp\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBPts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LettersPassPartialBessel\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OneVariableLettersUnderIntegral\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RulesEq\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SideZeroOfLocalProperness\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutHB

theorem headBridge_of_rest (hPr : ProperDomP) (hW : WordSmooth) (h1 : Side1) : LevelPointCoordinates.HeadBridge :=
  headBridge_of Formalism.FourierDecayAlt.P.rules_eq hW pts curveSmooth (supp_of Formalism.FourierDecayAlt.P.letters_pass_partial_bessel hPr)
    (Formalism.FourierDecayAlt.P.SliceIntegralLemmas.side_zero_of_local_properness hPr) h1 Formalism.FourierDecayAlt.P.one_variable_letters_under_integral

end Formalism.FourierDecayAlt.P.CutHB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBFinal =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.Side1PosOf =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.Side1PosOf", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DetLowW\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ProperDomP\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHB2\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBPts\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHLNf\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.UpperMinorOfLevelPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory

noncomputable section

namespace Formalism.FourierDecayAlt.P.LevelPointCoordinates

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.PBQ

theorem side1Pos_of (hC : CutOffStep) (hE : CutOffExists) (h0 : CutHB.Side0Pos) (hW : PartialBesselProperness.PbWords)
    (hPr : PBQ.ProperDomP) : CutHB.Side1Pos := by
  intro Wp Wq _ _ _ _ _ _ P p F j hj w h hh γ hj1 hF hw hγ hΩ t ht e
  have ht0 : t ≠ 0 := (ht.1 (1, t) (List.mem_append_right _ (List.mem_singleton_self _))).2
  obtain ⟨Fc, hFc, hag⟩ := hE Wp Wq P p F j hj w h hh hF hw t ht e
  rw [hC Wp Wq P p F j hj w h hh γ hF hw hγ hΩ t ht e Fc hFc hag]
  rw [h0 Wp Wq P p Fc j hj [] h hh γ hj1 hFc ⟨fun a => a.elim0, fun a => a.elim0⟩ hγ hΩ (fun a => a.elim0) t ht0]
  refine integral_congr_ae (Filter.Eventually.of_forall fun v => ?_)
  show ellH h v (CutHB.phf p Fc j hj [] h hh.2 γ v (fun a => a.elim0) t) = ellH h v _
  congr 1
  have hpt := CutHB.pts Wp Wq P p j hj h hh γ hγ hΩ v
  have hyD := hpt.2 t ht0
  have hyG := x0_GV hj hpt.1 ht0 hγ

  obtain ⟨R, hR⟩ := hF.2.1
  set Cs : Set (B.Mat P.k P.r) := {g | B.gN g ≤ R} with hCs
  have hCc : IsCompact Cs := Formalism.FourierDecayAlt.P.PBE.isCompact_gN_le P.k P.r R
  have e' : j + (P.r - j) = P.r := by omega
  have hz : p.T.base.z = D.castV e' (liftVec P.k j (P.r - j) (p.T.bs j).z) := (p.T.z_lev j (by omega)).symm
  have hPW := hW P.k j (P.r - j) P.r Wp Wq (p.T.bs j) p.T.base e' hz (j + 1) hj F Cs (fun g hg _ => hF.1 g hg) hCc
    (fun g hg hgC => by
      by_contra hne
      exact hgC (hR g hg hne))
    (domP P.k P.r j p.T.base.z p.T.base.z') (isOpen_domP _ _ _ _ _)
    (fun g hg => hg.1 ⟨j + 1, by omega⟩ (show j ≤ j + 1 by omega) (show j + 1 ≤ P.r by omega))
    (hPr Wp Wq P p j (by omega) Cs hCc) w e _ hyD hyG
  show pbT p j (by omega) Fc (x0 P.k P.r j hj (zxH h j hh.2 v) t γ) =
    D.uwG P.k P.r p.T.base.z p.T.base.z' (pbT p j (by omega) F) (j + 1) hj w e (x0 P.k P.r j hj (zxH h j hh.2 v) t γ)
  unfold pbT
  rw [hPW]
  have hDv : Dmin P.k P.r p.T.base.z p.T.base.z' (x0 P.k P.r j hj (zxH h j hh.2 v) t γ) ⟨j + 1, by omega⟩ = aVal h t := by
    rw [(CutHL.leading_minors_at_base_point P.k P.r j hj p.T.base.z p.T.base.z' (zxH h j hh.2 v) t γ hpt.1 ht0 hγ).2, zxH_det h j hh v]
    rfl
  exact pbT_agree P p j hj (aVal h t) Fc _ (fun g _ hg => hag g hg) _ hyG hDv

end Formalism.FourierDecayAlt.P.LevelPointCoordinates
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.Side1PosOf =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SideOnePositive =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SideOnePositive", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHB2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LettersPassPartialBessel\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.Side0PosOf\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.Side1PosOf\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothTruncationInduction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ProperDomP\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.FourierDecayAlt.P

theorem side_one_positive : CutHB.Side1Pos :=
  LevelPointCoordinates.side1Pos_of smooth_truncation_induction smooth_truncation_exists (SliceIntegralLemmas.side0Pos_of'' proper_left_variables_domain)
    letters_pass_partial_bessel proper_left_variables_domain

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SideOnePositive =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WordSmoothPartialBesselInduction =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.WordSmoothPartialBesselInduction", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHB2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PbWords\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocOfSmoothOnH\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PartialBesselSmoothCompactSupport\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothLevOfLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

noncomputable section

namespace Formalism.FourierDecayAlt.P.PartialBesselWordSmoothness

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.P.PBQ

def ProperDomPH : Prop :=
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par) (p : KB.Pl P Wp Wq)
    (j : ℕ) (hj : j ≤ P.r) (Cs : Set (B.Mat P.k P.r)), IsCompact Cs →
    PartialBesselProperness.Proper (p.T.bs j) p.T.base (by omega : j + (P.r - j) = P.r) Cs (domP P.k P.r j p.T.base.z p.T.base.z')

section

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem smooth_pbT (hP : ProperDomPH) (P : M.Par) (p : KB.Pl P Wp Wq) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp))
    (j : ℕ) (hj : j ≤ P.r) (hF : KB.CptCoef p.T.base F) :
    Q.SmoothLev P.k P.r 0 (domP P.k P.r j p.T.base.z p.T.base.z') (pbT p j hj F) := by
  obtain ⟨hck, ⟨R, hR⟩, -⟩ := hF
  have hCs : IsCompact {g : B.Mat P.k P.r | B.gN g ≤ R} := Formalism.FourierDecayAlt.P.PBE.isCompact_gN_le P.k P.r R
  have hz : ∀ g ∈ B.GV P.k P.r, g ∉ {g : B.Mat P.k P.r | B.gN g ≤ R} → F g = 0 := fun g hg hgC => by
    by_contra h; exact hgC (hR g hg h)
  have hzl : p.T.base.z = D.castV (by omega : j + (P.r - j) = P.r) (liftVec P.k j (P.r - j) (p.T.bs j).z) :=
    (p.T.z_lev j hj).symm
  refine Formalism.FourierDecayAlt.P.PBG.smoothLev_of_loc fun x hx => ?_
  exact Formalism.FourierDecayAlt.P.partial_bessel_smooth_compact_support P.k j (P.r - j) P.r Wp Wq (p.T.bs j) p.T.base (by omega) hzl F _ hck hCs hz
    _ (isOpen_domP P.k P.r j p.T.base.z p.T.base.z') (hP Wp Wq P p j hj _ hCs) x hx.2 hx.1.1

theorem word_smooth_partial_bessel_induction (hP : ProperDomPH) (P : M.Par) (p : KB.Pl P Wp Wq) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp))
    (j : ℕ) (hj : j + 1 ≤ P.r) (hF : KB.CptCoef p.T.base F) :
    ∀ (w : List C.Letter) (e : Wd.Ix (Fin w.length)),
      Q.SmoothLev P.k P.r 0 (domP P.k P.r j p.T.base.z p.T.base.z')
        (D.uwG P.k P.r p.T.base.z p.T.base.z' (pbT p j (by omega) F) j (by omega) w e)
  | [], _ => smooth_pbT hP P p F j (by omega) hF
  | l :: w, e => by
    show Q.SmoothLev P.k P.r 0 _ (D.vLet P.k P.r p.T.base.z p.T.base.z' j (by omega) l (e 0)
      (D.uwG P.k P.r p.T.base.z p.T.base.z' (pbT p j (by omega) F) j (by omega) w fun a => e a.succ))
    exact Formalism.FourierDecayAlt.P.SingleEntryHermitianProducts.smooth_vLet _ _ j (by omega) l (e 0) (isOpen_domP P.k P.r j p.T.base.z p.T.base.z')
      (word_smooth_partial_bessel_induction hP P p F j hj hF w _) (fun g hg => hg.1 ⟨j, by omega⟩ (show j ≤ j from le_rfl) (show j ≤ P.r by omega))

end

theorem wordSmooth_of (hP : ProperDomPH) : CutHB.WordSmooth := by
  intro Wp Wq _ _ _ _ _ _ P p F j hj w hF _ e
  exact word_smooth_partial_bessel_induction hP P p F j hj hF w e

end Formalism.FourierDecayAlt.P.PartialBesselWordSmoothness
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WordSmoothPartialBesselInduction =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WordSmoothPartialBessel =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.WordSmoothPartialBessel", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHB2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ProperDomP\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WordSmoothPartialBesselInduction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem word_smooth_partial_bessel : CutHB.WordSmooth := PartialBesselWordSmoothness.wordSmooth_of proper_left_variables_domain

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.WordSmoothPartialBessel =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadGermSmoothExtension =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadGermSmoothExtension", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHB2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DetLowW\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ProperDomP\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActOneVariableSmul\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBFinal\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHBPts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHLFinal\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutHLNf\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadJacquetOfLetterAndHead\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LettersPassPartialBessel\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PointLevelZeroEqEmbedding\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SideOnePositive\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothTruncationInduction\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.UpperMinorOfLevelPoint\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WordSmoothPartialBessel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory

noncomputable section

namespace Formalism.FourierDecayAlt.P.LevelPointCoordinates

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.PBQ

theorem side1Zero_of (hC : CutOffStep) (hE : CutOffExists) (h0 : CutHB.Side0Zero) (hW : PartialBesselProperness.PbWords)
    (hPr : PBQ.ProperDomP) : CutHB.Side1Zero := by
  intro Wp Wq _ _ _ _ _ _ P p F j hj w h hh γ hj1 hF hw hγ hΩ t ht e
  have ht0 : t ≠ 0 := (ht.1 (1, t) (List.mem_append_right _ (List.mem_singleton_self _))).2
  obtain ⟨Fc, hFc, hag⟩ := hE Wp Wq P p F j hj w h hh hF hw t ht e
  rw [hC Wp Wq P p F j hj w h hh γ hF hw hγ hΩ t ht e Fc hFc hag]
  rw [h0 Wp Wq P p Fc j hj [] h hh γ hj1 hFc ⟨fun a => a.elim0, fun a => a.elim0⟩ hγ hΩ (fun a => a.elim0) t ht0]
  refine integral_congr_ae (Filter.Eventually.of_forall fun v => ?_)
  show ellH h v (CutHB.phf p Fc j hj [] h hh.2 γ v (fun a => a.elim0) t) = ellH h v _
  congr 1
  have hpt := CutHB.pts Wp Wq P p j hj h hh γ hγ hΩ v
  have hyD := hpt.2 t ht0
  have hyG := x0_GV hj hpt.1 ht0 hγ

  obtain ⟨R, hR⟩ := hF.2.1
  set Cs : Set (B.Mat P.k P.r) := {g | B.gN g ≤ R} with hCs
  have hCc : IsCompact Cs := Formalism.FourierDecayAlt.P.PBE.isCompact_gN_le P.k P.r R
  have e' : j + (P.r - j) = P.r := by omega
  have hz : p.T.base.z = D.castV e' (liftVec P.k j (P.r - j) (p.T.bs j).z) := (p.T.z_lev j (by omega)).symm
  have hPW := hW P.k j (P.r - j) P.r Wp Wq (p.T.bs j) p.T.base e' hz (j + 1) hj F Cs (fun g hg _ => hF.1 g hg) hCc
    (fun g hg hgC => by
      by_contra hne
      exact hgC (hR g hg hne))
    (domP P.k P.r j p.T.base.z p.T.base.z') (isOpen_domP _ _ _ _ _)
    (fun g hg => hg.1 ⟨j + 1, by omega⟩ (show j ≤ j + 1 by omega) (show j + 1 ≤ P.r by omega))
    (hPr Wp Wq P p j (by omega) Cs hCc) w e _ hyD hyG
  show pbT p j (by omega) Fc (x0 P.k P.r j hj (zxH h j hh.2 v) t γ) =
    D.uwG P.k P.r p.T.base.z p.T.base.z' (pbT p j (by omega) F) (j + 1) hj w e (x0 P.k P.r j hj (zxH h j hh.2 v) t γ)
  unfold pbT
  rw [hPW]
  have hDv : Dmin P.k P.r p.T.base.z p.T.base.z' (x0 P.k P.r j hj (zxH h j hh.2 v) t γ) ⟨j + 1, by omega⟩ = aVal h t := by
    rw [(CutHL.leading_minors_at_base_point P.k P.r j hj p.T.base.z p.T.base.z' (zxH h j hh.2 v) t γ hpt.1 ht0 hγ).2, zxH_det h j hh v]
    rfl
  exact pbT_agree P p j hj (aVal h t) Fc _ (fun g _ hg => hag g hg) _ hyG hDv

end Formalism.FourierDecayAlt.P.LevelPointCoordinates

namespace Formalism.FourierDecayAlt.P

theorem side_one_zero : CutHB.Side1Zero :=
  LevelPointCoordinates.side1Zero_of smooth_truncation_induction smooth_truncation_exists
    (SliceIntegralLemmas.side0Zero_of letters_pass_partial_bessel proper_left_variables_domain CutHB.pts) letters_pass_partial_bessel proper_left_variables_domain

theorem head_germ_smooth_extension : LevelPointCoordinates.HeadBridge :=
  CutHB.headBridge_of_rest proper_left_variables_domain word_smooth_partial_bessel
    (CutHB.side_one_of_positive_and_zero side_one_positive side_one_zero)

theorem head_jacquet : LevelPointCoordinates.HeadJ := head_jacquet_of_letter_and_head head_letter_identity head_germ_smooth_extension

theorem head_picture : PBP.HeadPic := PBP.headPic_of head_jacquet

theorem radial_head : KB.RadHead := radial_head_of_letter_and_head head_letter_identity head_germ_smooth_extension

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HeadGermSmoothExtension =====

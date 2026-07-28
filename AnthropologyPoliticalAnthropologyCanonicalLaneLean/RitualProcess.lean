import HautevilleHouse.AnthropologyPoliticalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure RitualProcessPackage where
  separationPhase : Prop
  liminalPhase : Prop
  incorporationPhase : Prop
  socialFunction : Prop

structure RitualProcessEvidence (R : RitualProcessPackage) where
  separationPhaseClosed : R.separationPhase
  liminalPhaseClosed : R.liminalPhase
  incorporationPhaseClosed : R.incorporationPhase
  socialFunctionClosed : R.socialFunction

def RitualProcessClosed (R : RitualProcessPackage) : Prop :=
  R.separationPhase ∧ R.liminalPhase ∧ R.incorporationPhase ∧ R.socialFunction

theorem ritual_process_closed_from_evidence (R : RitualProcessPackage) (E : RitualProcessEvidence R) :
    RitualProcessClosed R := by
  exact And.intro E.separationPhaseClosed
    (And.intro E.liminalPhaseClosed
      (And.intro E.incorporationPhaseClosed E.socialFunctionClosed))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.AnthropologyPoliticalAnthropologyCanonicalLaneLean.Legitimacy

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure SovereigntyPackage {S : SocialStructurePackage} {L : LegitimacyPackage S} where
  boundedTerritory : Prop
  monopolyOfForce : Prop
  recognitionByOthers : Prop
  internalHierarchy : Prop
  juridicalAutonomy : Prop

structure SovereigntyEvidence {S : SocialStructurePackage} {L : LegitimacyPackage S} (R : SovereigntyPackage S L) where
  boundedTerritoryClosed : R.boundedTerritory
  monopolyOfForceClosed : R.monopolyOfForce
  recognitionByOthersClosed : R.recognitionByOthers
  internalHierarchyClosed : R.internalHierarchy
  juridicalAutonomyClosed : R.juridicalAutonomy

def SovereigntyClosed {S : SocialStructurePackage} {L : LegitimacyPackage S} (R : SovereigntyPackage S L) : Prop :=
  R.boundedTerritory ∧ R.monopolyOfForce ∧ R.recognitionByOthers ∧ R.internalHierarchy ∧ R.juridicalAutonomy

theorem sovereignty_closed_from_evidence
    {S : SocialStructurePackage} {L : LegitimacyPackage S}
    (R : SovereigntyPackage S L) (E : SovereigntyEvidence R) :
    SovereigntyClosed R := by
  exact And.intro E.boundedTerritoryClosed
    (And.intro E.monopolyOfForceClosed
      (And.intro E.recognitionByOthersClosed
        (And.intro E.internalHierarchyClosed E.juridicalAutonomyClosed)))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
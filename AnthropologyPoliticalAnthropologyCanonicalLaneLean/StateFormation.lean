import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure StateFormationPackage where
  centralizedAuthority : Prop
  territorialBoundary : Prop
  monopolyOfForce : Prop
  bureaucraticApparatus : Prop
  legitimationNarrative : Prop
  extractionSurplus : Prop

structure StateFormationEvidence (S : StateFormationPackage) where
  centralizedAuthorityClosed : S.centralizedAuthority
  territorialBoundaryClosed : S.territorialBoundary
  monopolyOfForceClosed : S.monopolyOfForce
  bureaucraticApparatusClosed : S.bureaucraticApparatus
  legitimationNarrativeClosed : S.legitimationNarrative
  extractionSurplusClosed : S.extractionSurplus

def StateFormationClosed (S : StateFormationPackage) : Prop :=
  S.centralizedAuthority ∧ S.territorialBoundary ∧
  S.monopolyOfForce ∧ S.bureaucraticApparatus ∧
  S.legitimationNarrative ∧ S.extractionSurplus

theorem state_formation_closed_from_evidence (S : StateFormationPackage)
    (E : StateFormationEvidence S) : StateFormationClosed S := by
  exact And.intro E.centralizedAuthorityClosed
    (And.intro E.territorialBoundaryClosed
      (And.intro E.monopolyOfForceClosed
        (And.intro E.bureaucraticApparatusClosed
          (And.intro E.legitimationNarrativeClosed
            E.extractionSurplusClosed))))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse

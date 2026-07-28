import HautevilleHouse.AnthropologyPoliticalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure PoliticalSystemPackage where
  politicalOrganization : Prop
  powerDistribution : Prop
  decisionMakingProcess : Prop
  conflictResolution : Prop

structure PoliticalSystemEvidence (P : PoliticalSystemPackage) where
  politicalOrganizationClosed : P.politicalOrganization
  powerDistributionClosed : P.powerDistribution
  decisionMakingProcessClosed : P.decisionMakingProcess
  conflictResolutionClosed : P.conflictResolution

def PoliticalSystemClosed (P : PoliticalSystemPackage) : Prop :=
  P.politicalOrganization ∧ P.powerDistribution ∧ P.decisionMakingProcess ∧ P.conflictResolution

theorem political_system_closed_from_evidence (P : PoliticalSystemPackage) (E : PoliticalSystemEvidence P) :
    PoliticalSystemClosed P := by
  exact And.intro E.politicalOrganizationClosed
    (And.intro E.powerDistributionClosed
      (And.intro E.decisionMakingProcessClosed E.conflictResolutionClosed))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
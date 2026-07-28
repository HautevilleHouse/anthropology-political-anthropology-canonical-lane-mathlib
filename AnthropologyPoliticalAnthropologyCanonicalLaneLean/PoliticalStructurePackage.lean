import AnthropologyPoliticalAnthropologyCanonicalLaneLean.PoliticalAnthropologyObjects

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure PoliticalStructurePackage where
  hierarchicalOrganization : Prop
  decisionMakingProcess : Prop
  powerDistribution : Prop
  institutionalStructure : Prop

structure PoliticalStructureEvidence (P : PoliticalStructurePackage) where
  hierarchicalOrganizationClosed : P.hierarchicalOrganization
  decisionMakingProcessClosed : P.decisionMakingProcess
  powerDistributionClosed : P.powerDistribution
  institutionalStructureClosed : P.institutionalStructure

def PoliticalStructureClosed (P : PoliticalStructurePackage) : Prop :=
  P.hierarchicalOrganization ∧ P.decisionMakingProcess ∧ P.powerDistribution ∧ P.institutionalStructure

theorem political_structure_closed_from_evidence (P : PoliticalStructurePackage) (E : PoliticalStructureEvidence P) :
    PoliticalStructureClosed P := by
  exact And.intro E.hierarchicalOrganizationClosed
    (And.intro E.decisionMakingProcessClosed
      (And.intro E.powerDistributionClosed E.institutionalStructureClosed))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
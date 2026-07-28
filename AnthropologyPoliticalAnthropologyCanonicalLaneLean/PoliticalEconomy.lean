import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure PoliticalEconomyPackage where
  modeOfProduction : Prop
  surplusExtraction : Prop
  distributionMechanisms : Prop
  propertyRelations : Prop
  laborOrganization : Prop
  marketExchange : Prop

structure PoliticalEconomyEvidence (P : PoliticalEconomyPackage) where
  modeOfProductionClosed : P.modeOfProduction
  surplusExtractionClosed : P.surplusExtraction
  distributionMechanismsClosed : P.distributionMechanisms
  propertyRelationsClosed : P.propertyRelations
  laborOrganizationClosed : P.laborOrganization
  marketExchangeClosed : P.marketExchange

def PoliticalEconomyClosed (P : PoliticalEconomyPackage) : Prop :=
  P.modeOfProduction ∧ P.surplusExtraction ∧
  P.distributionMechanisms ∧ P.propertyRelations ∧
  P.laborOrganization ∧ P.marketExchange

theorem political_economy_closed_from_evidence (P : PoliticalEconomyPackage)
    (E : PoliticalEconomyEvidence P) : PoliticalEconomyClosed P := by
  exact And.intro E.modeOfProductionClosed
    (And.intro E.surplusExtractionClosed
      (And.intro E.distributionMechanismsClosed
        (And.intro E.propertyRelationsClosed
          (And.intro E.laborOrganizationClosed
            E.marketExchangeClosed))))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse

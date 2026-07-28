import AnthropologyPoliticalAnthropologyCanonicalLaneLean.PoliticalAnthropologyObjects

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure AuthorityLegitimacyPackage where
  sourceOfAuthority : Prop
  legitimacyBasis : Prop
  consentMechanism : Prop
  compliancePattern : Prop

structure AuthorityLegitimacyEvidence (A : AuthorityLegitimacyPackage) where
  sourceOfAuthorityClosed : A.sourceOfAuthority
  legitimacyBasisClosed : A.legitimacyBasis
  consentMechanismClosed : A.consentMechanism
  compliancePatternClosed : A.compliancePattern

def AuthorityLegitimacyClosed (A : AuthorityLegitimacyPackage) : Prop :=
  A.sourceOfAuthority ∧ A.legitimacyBasis ∧ A.consentMechanism ∧ A.compliancePattern

theorem authority_legitimacy_closed_from_evidence (A : AuthorityLegitimacyPackage) (E : AuthorityLegitimacyEvidence A) :
    AuthorityLegitimacyClosed A := by
  exact And.intro E.sourceOfAuthorityClosed
    (And.intro E.legitimacyBasisClosed
      (And.intro E.consentMechanismClosed E.compliancePatternClosed))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
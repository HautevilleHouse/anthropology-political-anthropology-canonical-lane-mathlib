import HautevilleHouse.AnthropologyPoliticalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure AuthorityTypesPackage where
  traditionalAuthority : Prop
  charismaticAuthority : Prop
  legalRationalAuthority : Prop
  legitimacyClaims : Prop

structure AuthorityTypesEvidence (A : AuthorityTypesPackage) where
  traditionalAuthorityClosed : A.traditionalAuthority
  charismaticAuthorityClosed : A.charismaticAuthority
  legalRationalAuthorityClosed : A.legalRationalAuthority
  legitimacyClaimsClosed : A.legitimacyClaims

def AuthorityTypesClosed (A : AuthorityTypesPackage) : Prop :=
  A.traditionalAuthority ∧ A.charismaticAuthority ∧ A.legalRationalAuthority ∧ A.legitimacyClaims

theorem authority_types_closed_from_evidence (A : AuthorityTypesPackage) (E : AuthorityTypesEvidence A) :
    AuthorityTypesClosed A := by
  exact And.intro E.traditionalAuthorityClosed
    (And.intro E.charismaticAuthorityClosed
      (And.intro E.legalRationalAuthorityClosed E.legitimacyClaimsClosed))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
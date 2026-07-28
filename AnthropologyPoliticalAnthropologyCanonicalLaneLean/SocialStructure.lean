import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure SocialStructurePackage where
  societyType : Type u
  kinshipSystem : Prop
  politicalOrganization : Prop
  economicSystem : Prop
  ideologicalStructure : Prop
  socialStratification : Prop

structure SocialStructureEvidence (S : SocialStructurePackage) where
  kinshipSystemClosed : S.kinshipSystem
  politicalOrganizationClosed : S.politicalOrganization
  economicSystemClosed : S.economicSystem
  ideologicalStructureClosed : S.ideologicalStructure
  socialStratificationClosed : S.socialStratification

def SocialStructureClosed (S : SocialStructurePackage) : Prop :=
  S.kinshipSystem ∧ S.politicalOrganization ∧ S.economicSystem ∧ S.ideologicalStructure ∧ S.socialStratification

theorem social_structure_closed_from_evidence
    (S : SocialStructurePackage) (E : SocialStructureEvidence S) :
    SocialStructureClosed S := by
  exact And.intro E.kinshipSystemClosed
    (And.intro E.politicalOrganizationClosed
      (And.intro E.economicSystemClosed
        (And.intro E.ideologicalStructureClosed E.socialStratificationClosed)))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
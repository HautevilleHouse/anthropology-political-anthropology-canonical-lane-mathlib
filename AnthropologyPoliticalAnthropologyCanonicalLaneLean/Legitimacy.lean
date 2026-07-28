import HautevilleHouse.AnthropologyPoliticalAnthropologyCanonicalLaneLean.SocialStructure

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure LegitimacyPackage {S : SocialStructurePackage} where
  authoritySource : Prop
  consentGoverned : Prop
  legitimacyCrisis : Prop
  historicalProvenance : Prop
  normativeFoundation : Prop

structure LegitimacyEvidence {S : SocialStructurePackage} (L : LegitimacyPackage S) where
  authoritySourceClosed : L.authoritySource
  consentGovernedClosed : L.consentGoverned
  legitimacyCrisisClosed : L.legitimacyCrisis
  historicalProvenanceClosed : L.historicalProvenance
  normativeFoundationClosed : L.normativeFoundation

def LegitimacyClosed {S : SocialStructurePackage} (L : LegitimacyPackage S) : Prop :=
  L.authoritySource ∧ L.consentGoverned ∧ L.legitimacyCrisis ∧ L.historicalProvenance ∧ L.normativeFoundation

theorem legitimacy_closed_from_evidence
    {S : SocialStructurePackage} (L : LegitimacyPackage S) (E : LegitimacyEvidence L) :
    LegitimacyClosed L := by
  exact And.intro E.authoritySourceClosed
    (And.intro E.consentGovernedClosed
      (And.intro E.legitimacyCrisisClosed
        (And.intro E.historicalProvenanceClosed E.normativeFoundationClosed)))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
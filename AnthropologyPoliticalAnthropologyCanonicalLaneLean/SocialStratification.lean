import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure SocialStratificationPackage where
  hierarchyDimensions : Prop
  mobilityChannels : Prop
  classConsciousness : Prop
  statusSymbols : Prop
  institutionalizedInequality : Prop
  legitimationIdeology : Prop

structure SocialStratificationEvidence (S : SocialStratificationPackage) where
  hierarchyDimensionsClosed : S.hierarchyDimensions
  mobilityChannelsClosed : S.mobilityChannels
  classConsciousnessClosed : S.classConsciousness
  statusSymbolsClosed : S.statusSymbols
  institutionalizedInequalityClosed : S.institutionalizedInequality
  legitimationIdeologyClosed : S.legitimationIdeology

def SocialStratificationClosed (S : SocialStratificationPackage) : Prop :=
  S.hierarchyDimensions ∧ S.mobilityChannels ∧
  S.classConsciousness ∧ S.statusSymbols ∧
  S.institutionalizedInequality ∧ S.legitimationIdeology

theorem social_stratification_closed_from_evidence
    (S : SocialStratificationPackage)
    (E : SocialStratificationEvidence S) : SocialStratificationClosed S := by
  exact And.intro E.hierarchyDimensionsClosed
    (And.intro E.mobilityChannelsClosed
      (And.intro E.classConsciousnessClosed
        (And.intro E.statusSymbolsClosed
          (And.intro E.institutionalizedInequalityClosed
            E.legitimationIdeologyClosed))))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse

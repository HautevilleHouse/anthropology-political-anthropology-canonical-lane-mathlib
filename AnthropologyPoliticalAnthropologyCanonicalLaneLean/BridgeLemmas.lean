import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  -- The bridge closure requires that the classical remainder is carried
  A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.remainderRecorded

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure AdmissibleClass where
  object : AnthropologyPoliticalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AnthropologyPoliticalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
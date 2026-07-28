import HautevilleHouse.AnthropologyPoliticalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

-- bridge and gate definitions (assuming existence from other modules)
def bridgeClosed (A : AdmissibleClass) : Prop := AnthropologyPoliticalWitnessClosed A.object

def gateClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedAnthropologyPoliticalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_anthropology_political_endgame (A : AdmissibleClass) :
    ConstrainedAnthropologyPoliticalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
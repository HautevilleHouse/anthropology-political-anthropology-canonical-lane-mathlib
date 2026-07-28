import HautevilleHouse.AnthropologyPoliticalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure SymbolicClassificationPackage where
  binaryOppositions : Prop
  totemicClassification : Prop
  sacredProfane : Prop
  symbolicBoundaries : Prop

structure SymbolicClassificationEvidence (S : SymbolicClassificationPackage) where
  binaryOppositionsClosed : S.binaryOppositions
  totemicClassificationClosed : S.totemicClassification
  sacredProfaneClosed : S.sacredProfane
  symbolicBoundariesClosed : S.symbolicBoundaries

def SymbolicClassificationClosed (S : SymbolicClassificationPackage) : Prop :=
  S.binaryOppositions ∧ S.totemicClassification ∧ S.sacredProfane ∧ S.symbolicBoundaries

theorem symbolic_classification_closed_from_evidence (S : SymbolicClassificationPackage) (E : SymbolicClassificationEvidence S) :
    SymbolicClassificationClosed S := by
  exact And.intro E.binaryOppositionsClosed
    (And.intro E.totemicClassificationClosed
      (And.intro E.sacredProfaneClosed E.symbolicBoundariesClosed))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
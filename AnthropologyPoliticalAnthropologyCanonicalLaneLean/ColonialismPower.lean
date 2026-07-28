import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure ColonialismPowerPackage where
  colonialEncounter : Prop
  laborExtraction : Prop
  culturalHegemony : Prop
  administrativeControl : Prop
  resistanceMovements : Prop
  postcolonialLegacy : Prop

structure ColonialismPowerEvidence (C : ColonialismPowerPackage) where
  colonialEncounterClosed : C.colonialEncounter
  laborExtractionClosed : C.laborExtraction
  culturalHegemonyClosed : C.culturalHegemony
  administrativeControlClosed : C.administrativeControl
  resistanceMovementsClosed : C.resistanceMovements
  postcolonialLegacyClosed : C.postcolonialLegacy

def ColonialismPowerClosed (C : ColonialismPowerPackage) : Prop :=
  C.colonialEncounter ∧ C.laborExtraction ∧
  C.culturalHegemony ∧ C.administrativeControl ∧
  C.resistanceMovements ∧ C.postcolonialLegacy

theorem colonialism_power_closed_from_evidence (C : ColonialismPowerPackage)
    (E : ColonialismPowerEvidence C) : ColonialismPowerClosed C := by
  exact And.intro E.colonialEncounterClosed
    (And.intro E.laborExtractionClosed
      (And.intro E.culturalHegemonyClosed
        (And.intro E.administrativeControlClosed
          (And.intro E.resistanceMovementsClosed
            E.postcolonialLegacyClosed))))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse

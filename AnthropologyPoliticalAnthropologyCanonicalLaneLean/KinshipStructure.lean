import HautevilleHouse.AnthropologyPoliticalAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure KinshipStructurePackage where
  descentSystem : Prop
  allianceStructure : Prop
  kinshipTerminology : Prop
  residencePattern : Prop

structure KinshipStructureEvidence (K : KinshipStructurePackage) where
  descentSystemClosed : K.descentSystem
  allianceStructureClosed : K.allianceStructure
  kinshipTerminologyClosed : K.kinshipTerminology
  residencePatternClosed : K.residencePattern

def KinshipStructureClosed (K : KinshipStructurePackage) : Prop :=
  K.descentSystem ∧ K.allianceStructure ∧ K.kinshipTerminology ∧ K.residencePattern

theorem kinship_structure_closed_from_evidence (K : KinshipStructurePackage) (E : KinshipStructureEvidence K) :
    KinshipStructureClosed K := by
  exact And.intro E.descentSystemClosed
    (And.intro E.allianceStructureClosed
      (And.intro E.kinshipTerminologyClosed E.residencePatternClosed))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
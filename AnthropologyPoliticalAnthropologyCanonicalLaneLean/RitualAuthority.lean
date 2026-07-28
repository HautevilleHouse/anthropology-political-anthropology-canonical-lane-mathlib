import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure RitualAuthorityPackage where
  ritualSpecialists : Prop
  cosmologicalNarrative : Prop
  sacredSymbols : Prop
  collectiveRituals : Prop
  legitimacyTransfer : Prop
  ritualEconomy : Prop

structure RitualAuthorityEvidence (R : RitualAuthorityPackage) where
  ritualSpecialistsClosed : R.ritualSpecialists
  cosmologicalNarrativeClosed : R.cosmologicalNarrative
  sacredSymbolsClosed : R.sacredSymbols
  collectiveRitualsClosed : R.collectiveRituals
  legitimacyTransferClosed : R.legitimacyTransfer
  ritualEconomyClosed : R.ritualEconomy

def RitualAuthorityClosed (R : RitualAuthorityPackage) : Prop :=
  R.ritualSpecialists ∧ R.cosmologicalNarrative ∧
  R.sacredSymbols ∧ R.collectiveRituals ∧
  R.legitimacyTransfer ∧ R.ritualEconomy

theorem ritual_authority_closed_from_evidence (R : RitualAuthorityPackage)
    (E : RitualAuthorityEvidence R) : RitualAuthorityClosed R := by
  exact And.intro E.ritualSpecialistsClosed
    (And.intro E.cosmologicalNarrativeClosed
      (And.intro E.sacredSymbolsClosed
        (And.intro E.collectiveRitualsClosed
          (And.intro E.legitimacyTransferClosed
            E.ritualEconomyClosed))))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse

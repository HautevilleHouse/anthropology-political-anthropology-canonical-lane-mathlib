import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

structure SymbolicCapitalPackage where
  prestigiousObjects : Prop
  honorCodes : Prop
  knowledgeMonopoly : Prop
  aestheticDistinction : Prop
  ritualInvestiture : Prop
  conversionMechanisms : Prop

structure SymbolicCapitalEvidence (S : SymbolicCapitalPackage) where
  prestigiousObjectsClosed : S.prestigiousObjects
  honorCodesClosed : S.honorCodes
  knowledgeMonopolyClosed : S.knowledgeMonopoly
  aestheticDistinctionClosed : S.aestheticDistinction
  ritualInvestitureClosed : S.ritualInvestiture
  conversionMechanismsClosed : S.conversionMechanisms

def SymbolicCapitalClosed (S : SymbolicCapitalPackage) : Prop :=
  S.prestigiousObjects ∧ S.honorCodes ∧
  S.knowledgeMonopoly ∧ S.aestheticDistinction ∧
  S.ritualInvestiture ∧ S.conversionMechanisms

theorem symbolic_capital_closed_from_evidence (S : SymbolicCapitalPackage)
    (E : SymbolicCapitalEvidence S) : SymbolicCapitalClosed S := by
  exact And.intro E.prestigiousObjectsClosed
    (And.intro E.honorCodesClosed
      (And.intro E.knowledgeMonopolyClosed
        (And.intro E.aestheticDistinctionClosed
          (And.intro E.ritualInvestitureClosed
            E.conversionMechanismsClosed))))

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse

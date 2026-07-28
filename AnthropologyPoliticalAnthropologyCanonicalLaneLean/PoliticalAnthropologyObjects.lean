import AnthropologyPoliticalAnthropologyCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AnthropologyPoliticalAnthropologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PoliticalAnthropologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PoliticalAnthropologyAdmittedObject where
  space : PoliticalAnthropologySpace
  societyDefined : Prop
  politicalSystemIdentified : Prop
  legitimacyClaimed : Prop
  conclusion : societyDefined ∧ politicalSystemIdentified ∧ legitimacyClaimed

structure PoliticalAnthropologyEndgameState where
  object : PoliticalAnthropologyAdmittedObject

def PoliticalAnthropologyWitnessClosed (O : PoliticalAnthropologyAdmittedObject) : Prop :=
  O.societyDefined ∧ O.politicalSystemIdentified ∧ O.legitimacyClaimed

end AnthropologyPoliticalAnthropologyCanonicalLaneLean
end HautevilleHouse
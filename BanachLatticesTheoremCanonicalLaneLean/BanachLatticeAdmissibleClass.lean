import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesTheorem

structure BanachLatticeObject where
  carrier : Type
  norm : carrier → ℝ
  latticeOps : carrier → carrier → carrier
  complete : Prop
  banachSpace : Prop
  conclusion : banachSpace ∧ complete

structure AdmissibleClass where
  object : BanachLatticeObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachLatticeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachLatticesTheorem
end HautevilleHouse
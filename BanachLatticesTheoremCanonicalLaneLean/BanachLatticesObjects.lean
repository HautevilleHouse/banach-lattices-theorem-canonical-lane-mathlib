import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure BanachLatticeSpace where
  carrier : Type u
  norm : carrier → ℝ
  order : carrier → carrier → Prop
  isBanachSpace : Prop
  isLattice : Prop
  positiveConeClosed : Prop
  orderContinuousNorm : Prop
  conclusion : orderContinuousNorm

structure BanachLatticeAdmittedObject where
  space : BanachLatticeSpace
  propertySatisfied : Prop
  propertyWitness : propertySatisfied

def BanachLatticeWitnessClosed (O : BanachLatticeAdmittedObject) : Prop :=
  O.propertySatisfied

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
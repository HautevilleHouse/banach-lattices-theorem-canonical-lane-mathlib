import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure BanachLatticeSpace where
  carrier : Type
  norm : carrier → ℝ
  additiveGroup : AddCommGroup carrier
  lattice : Lattice carrier
  normedLattice : Prop
  banach : Prop

structure BanachLatticeAdmittedObject where
  space : BanachLatticeSpace
  orderContinuousNorm : Prop
  conclusion : orderContinuousNorm

structure BanachLatticeEndgameState where
  object : BanachLatticeAdmittedObject

def BanachLatticeWitnessClosed (O : BanachLatticeAdmittedObject) : Prop :=
  O.orderContinuousNorm

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
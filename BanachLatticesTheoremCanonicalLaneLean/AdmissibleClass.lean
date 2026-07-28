import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure BanachLatticeObject where
  carrier : Type u
  norm : carrier → ℝ
  lattice : Lattice carrier
  vectorSpace : Module ℝ carrier
  normedLattice : NormedLattice carrier norm lattice vectorSpace
  banach : MetricSpace carrier := by infer_instance

structure BanachLatticeAdmittedObject where
  object : BanachLatticeObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : BanachLatticeAdmittedObject) : Prop :=
  BanachLatticeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
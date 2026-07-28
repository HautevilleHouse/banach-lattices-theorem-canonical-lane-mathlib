import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachLatticesTheoremCanonicalLaneLean.BanachLatticeStructure

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure AMSpaceWithOrderUnit (B : BanachLattice) where
  orderUnit : B.carrier
  orderUnitPos : B.partialOrder (0 : B.carrier) orderUnit
  normEquivalence : Prop
  representationMap : Type u
  isContinuousFunctions : Type u
  representationIsIsometric : Prop
  representationPreservesLattice : Prop

def AMSpaceOrderUnitClosed (B : BanachLattice) (A : AMSpaceWithOrderUnit B) : Prop :=
  A.representationIsIsometric ∧ A.representationPreservesLattice

structure AMSpaceOrderUnitEvidence (B : BanachLattice) (A : AMSpaceWithOrderUnit B) where
  representationIsIsometricClosed : A.representationIsIsometric
  representationPreservesLatticeClosed : A.representationPreservesLattice

theorem am_space_order_unit_closed_from_evidence (B : BanachLattice) (A : AMSpaceWithOrderUnit B) (E : AMSpaceOrderUnitEvidence B A) :
  AMSpaceOrderUnitClosed B A := by
  exact And.intro E.representationIsIsometricClosed E.representationPreservesLatticeClosed

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
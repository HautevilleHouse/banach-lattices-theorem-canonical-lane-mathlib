import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesTheoremCanonicalLaneLean.BanachLatticeObjects

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure BanachLatticeStructurePackage where
  positiveConeExists : Prop
  latticeOperationsContinuous : Prop
  orderBoundedSets : Prop
  fatouProperty : Prop

structure BanachLatticeStructureEvidence (P : BanachLatticeStructurePackage) where
  positiveConeExistsClosed : P.positiveConeExists
  latticeOperationsContinuousClosed : P.latticeOperationsContinuous
  orderBoundedSetsClosed : P.orderBoundedSets
  fatouPropertyClosed : P.fatouProperty

def BanachLatticeStructureClosed (P : BanachLatticeStructurePackage) : Prop :=
  P.positiveConeExists ∧ P.latticeOperationsContinuous ∧
  P.orderBoundedSets ∧ P.fatouProperty

theorem banach_lattice_structure_closed_from_evidence
    (P : BanachLatticeStructurePackage) (E : BanachLatticeStructureEvidence P) :
    BanachLatticeStructureClosed P := by
  exact And.intro E.positiveConeExistsClosed
    (And.intro E.latticeOperationsContinuousClosed
      (And.intro E.orderBoundedSetsClosed E.fatouPropertyClosed))

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
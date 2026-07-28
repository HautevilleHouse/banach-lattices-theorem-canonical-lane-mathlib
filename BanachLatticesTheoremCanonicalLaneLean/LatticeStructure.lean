import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure BanachLatticePackage where
  space : BanachLatticeSpace
  normComplete : Prop
  latticeOrder : Prop
  normCompatible : Prop
  orderClosed : Prop

structure BanachLatticeEvidence (P : BanachLatticePackage) where
  normCompleteClosed : P.normComplete
  latticeOrderClosed : P.latticeOrder
  normCompatibleClosed : P.normCompatible
  orderClosedClosed : P.orderClosed

def BanachLatticeClosed (P : BanachLatticePackage) : Prop :=
  P.normComplete ∧ P.latticeOrder ∧ P.normCompatible ∧ P.orderClosed

theorem banach_lattice_closed_from_evidence (P : BanachLatticePackage)
    (E : BanachLatticeEvidence P) : BanachLatticeClosed P := by
  exact And.intro E.normCompleteClosed
    (And.intro E.latticeOrderClosed
      (And.intro E.normCompatibleClosed E.orderClosedClosed))

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
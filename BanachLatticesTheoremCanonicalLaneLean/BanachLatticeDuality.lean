import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesTheoremCanonicalLaneLean.BanachLatticeObjects

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure BanachLatticeDualityPackage where
  dualBanachLattice : Prop
  orderContinuousDual : Prop
  predualCondition : Prop
  reflexivityCondition : Prop

structure BanachLatticeDualityEvidence (P : BanachLatticeDualityPackage) where
  dualBanachLatticeClosed : P.dualBanachLattice
  orderContinuousDualClosed : P.orderContinuousDual
  predualConditionClosed : P.predualCondition
  reflexivityConditionClosed : P.reflexivityCondition

def BanachLatticeDualityClosed (P : BanachLatticeDualityPackage) : Prop :=
  P.dualBanachLattice ∧ P.orderContinuousDual ∧
  P.predualCondition ∧ P.reflexivityCondition

theorem banach_lattice_duality_closed_from_evidence
    (P : BanachLatticeDualityPackage) (E : BanachLatticeDualityEvidence P) :
    BanachLatticeDualityClosed P := by
  exact And.intro E.dualBanachLatticeClosed
    (And.intro E.orderContinuousDualClosed
      (And.intro E.predualConditionClosed E.reflexivityConditionClosed))

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
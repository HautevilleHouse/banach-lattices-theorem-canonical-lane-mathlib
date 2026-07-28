import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesTheoremCanonicalLaneLean.BanachLatticeObjects

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure OrderContinuousNormPackage where
  orderContinuity : Prop
  normOrderContinuity : Prop
  dualCharacterization : Prop
  predualExists : Prop

structure OrderContinuousNormEvidence (P : OrderContinuousNormPackage) where
  orderContinuityClosed : P.orderContinuity
  normOrderContinuityClosed : P.normOrderContinuity
  dualCharacterizationClosed : P.dualCharacterization
  predualExistsClosed : P.predualExists

def OrderContinuousNormClosed (P : OrderContinuousNormPackage) : Prop :=
  P.orderContinuity ∧ P.normOrderContinuity ∧
  P.dualCharacterization ∧ P.predualExists

theorem order_continuous_norm_closed_from_evidence
    (P : OrderContinuousNormPackage) (E : OrderContinuousNormEvidence P) :
    OrderContinuousNormClosed P := by
  exact And.intro E.orderContinuityClosed
    (And.intro E.normOrderContinuityClosed
      (And.intro E.dualCharacterizationClosed E.predualExistsClosed))

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
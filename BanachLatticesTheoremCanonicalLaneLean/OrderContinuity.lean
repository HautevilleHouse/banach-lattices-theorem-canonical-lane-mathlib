import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesTheoremCanonicalLaneLean.LatticeStructure

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure OrderContinuityPackage (P : BanachLatticePackage) where
  sigmaOrderContinuous : Prop
  orderContinuousNorm : Prop
  dualSpaceOrderContinuous : Prop

structure OrderContinuityEvidence {P : BanachLatticePackage}
    (O : OrderContinuityPackage P) where
  sigmaOrderContinuousClosed : O.sigmaOrderContinuous
  orderContinuousNormClosed : O.orderContinuousNorm
  dualSpaceOrderContinuousClosed : O.dualSpaceOrderContinuous

def OrderContinuityClosed {P : BanachLatticePackage}
    (O : OrderContinuityPackage P) : Prop :=
  O.sigmaOrderContinuous ∧ O.orderContinuousNorm ∧ O.dualSpaceOrderContinuous

theorem order_continuity_closed_from_evidence
    {P : BanachLatticePackage} (O : OrderContinuityPackage P)
    (E : OrderContinuityEvidence O) : OrderContinuityClosed O := by
  exact And.intro E.sigmaOrderContinuousClosed
    (And.intro E.orderContinuousNormClosed E.dualSpaceOrderContinuousClosed)

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
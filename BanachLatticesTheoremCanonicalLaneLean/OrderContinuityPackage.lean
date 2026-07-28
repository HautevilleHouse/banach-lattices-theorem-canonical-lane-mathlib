import BanachLatticesObjects

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure OrderContinuityPackage where
  orderContinuousNorm : Prop
  positiveConeClosed : Prop
  monotoneConvergenceProperty : Prop
  orderBoundedSetsRelativelyCompact : Prop

structure OrderContinuityEvidence (P : OrderContinuityPackage) where
  orderContinuousNormClosed : P.orderContinuousNorm
  positiveConeClosedClosed : P.positiveConeClosed
  monotoneConvergencePropertyClosed : P.monotoneConvergenceProperty
  orderBoundedSetsRelativelyCompactClosed : P.orderBoundedSetsRelativelyCompact

def OrderContinuityClosed (P : OrderContinuityPackage) : Prop :=
  P.orderContinuousNorm ∧ P.positiveConeClosed ∧
  P.monotoneConvergenceProperty ∧ P.orderBoundedSetsRelativelyCompact

theorem order_continuity_closed_from_evidence
    (P : OrderContinuityPackage) (E : OrderContinuityEvidence P) :
    OrderContinuityClosed P := by
  exact And.intro E.orderContinuousNormClosed
    (And.intro E.positiveConeClosedClosed
      (And.intro E.monotoneConvergencePropertyClosed
        E.orderBoundedSetsRelativelyCompactClosed))

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
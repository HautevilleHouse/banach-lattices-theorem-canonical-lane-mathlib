import OrderContinuityPackage
import BanachLatticesObjects

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure BanachLatticeAnalyticEvidenceTerms (P : OrderContinuityPackage) where
  orderContinuousNorm : P.orderContinuousNorm
  positiveConeClosed : P.positiveConeClosed
  monotoneConvergenceProperty : P.monotoneConvergenceProperty
  orderBoundedSetsRelativelyCompact : P.orderBoundedSetsRelativelyCompact
  orderContinuityClosed : OrderContinuityClosed P

def OrderContinuityEvidence.toEvidenceTerms
    (P : OrderContinuityPackage) (E : OrderContinuityEvidence P) :
    BanachLatticeAnalyticEvidenceTerms P := {
  orderContinuousNorm := E.orderContinuousNormClosed,
  positiveConeClosed := E.positiveConeClosedClosed,
  monotoneConvergenceProperty := E.monotoneConvergencePropertyClosed,
  orderBoundedSetsRelativelyCompact := E.orderBoundedSetsRelativelyCompactClosed,
  orderContinuityClosed := order_continuity_closed_from_evidence P E
}

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
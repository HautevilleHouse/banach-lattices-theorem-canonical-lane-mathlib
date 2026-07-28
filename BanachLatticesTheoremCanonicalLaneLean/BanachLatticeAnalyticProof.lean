import BanachLatticeEvidenceTerms

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure BanachLatticeAnalyticCertificate (P : OrderContinuityPackage) where
  orderContinuousNorm : Prop
  positiveConeClosed : Prop
  monotoneConvergenceProperty : Prop
  orderBoundedSetsRelativelyCompact : Prop
  orderContinuousNormClosed : orderContinuousNorm
  positiveConeClosedClosed : positiveConeClosed
  monotoneConvergencePropertyClosed : monotoneConvergenceProperty
  orderBoundedSetsRelativelyCompactClosed : orderBoundedSetsRelativelyCompact
  orderContinuityEvidence : OrderContinuityEvidence P

def BanachLatticeAnalyticCertificateClosed
    {P : OrderContinuityPackage} (C : BanachLatticeAnalyticCertificate P) : Prop :=
  C.orderContinuousNorm ∧ C.positiveConeClosed ∧
  C.monotoneConvergenceProperty ∧ C.orderBoundedSetsRelativelyCompact ∧
  OrderContinuityClosed P

theorem banach_lattice_analytic_certificate_closed
    {P : OrderContinuityPackage} (C : BanachLatticeAnalyticCertificate P) :
    BanachLatticeAnalyticCertificateClosed C := by
  exact And.intro C.orderContinuousNormClosed
    (And.intro C.positiveConeClosedClosed
      (And.intro C.monotoneConvergencePropertyClosed
        (And.intro C.orderBoundedSetsRelativelyCompactClosed
          (order_continuity_closed_from_evidence P C.orderContinuityEvidence))))

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
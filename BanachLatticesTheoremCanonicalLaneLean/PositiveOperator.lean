import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesTheoremCanonicalLaneLean.BanachLatticeStructure

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure PositiveOperatorPackage where
  positiveOperatorDefined : Prop
  operatorNormOrderBound : Prop
  regularOperator : Prop
  latticeHomomorphism : Prop

structure PositiveOperatorEvidence (P : PositiveOperatorPackage) where
  positiveOperatorDefinedClosed : P.positiveOperatorDefined
  operatorNormOrderBoundClosed : P.operatorNormOrderBound
  regularOperatorClosed : P.regularOperator
  latticeHomomorphismClosed : P.latticeHomomorphism

def PositiveOperatorClosed (P : PositiveOperatorPackage) : Prop :=
  P.positiveOperatorDefined ∧ P.operatorNormOrderBound ∧
  P.regularOperator ∧ P.latticeHomomorphism

theorem positive_operator_closed_from_evidence
    (P : PositiveOperatorPackage) (E : PositiveOperatorEvidence P) :
    PositiveOperatorClosed P := by
  exact And.intro E.positiveOperatorDefinedClosed
    (And.intro E.operatorNormOrderBoundClosed
      (And.intro E.regularOperatorClosed E.latticeHomomorphismClosed))

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
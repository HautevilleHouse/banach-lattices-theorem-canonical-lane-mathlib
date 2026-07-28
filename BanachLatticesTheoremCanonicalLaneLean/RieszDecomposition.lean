import canonicalLaneMathlib.AdmissibleClass
import BanachLatticesTheoremCanonicalLaneLean.LatticeStructure

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure RieszDecompositionPackage (P : BanachLatticePackage) where
  decompositionProperty : Prop
  positivityConserved : Prop
  uniqueness : Prop

structure RieszDecompositionEvidence {P : BanachLatticePackage}
    (R : RieszDecompositionPackage P) where
  decompositionPropertyClosed : R.decompositionProperty
  positivityConservedClosed : R.positivityConserved
  uniquenessClosed : R.uniqueness

def RieszDecompositionClosed {P : BanachLatticePackage}
    (R : RieszDecompositionPackage P) : Prop :=
  R.decompositionProperty ∧ R.positivityConserved ∧ R.uniqueness

theorem riesz_decomposition_closed_from_evidence
    {P : BanachLatticePackage} (R : RieszDecompositionPackage P)
    (E : RieszDecompositionEvidence R) : RieszDecompositionClosed R := by
  exact And.intro E.decompositionPropertyClosed
    (And.intro E.positivityConservedClosed E.uniquenessClosed)

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
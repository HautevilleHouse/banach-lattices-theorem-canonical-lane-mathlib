import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachLatticesTheoremCanonicalLaneLean.BanachLatticeStructure

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure BandDecomposition (B : BanachLattice) where
  band : Set (B.carrier)
  bandProjection : B.carrier → B.carrier
  disjointDecomposition : Prop
  projectionIdempotent : Prop
  projectionPositive : Prop

def BandDecompositionClosed (B : BanachLattice) (D : BandDecomposition B) : Prop :=
  D.disjointDecomposition ∧ D.projectionIdempotent ∧ D.projectionPositive

structure BandDecompositionEvidence (B : BanachLattice) (D : BandDecomposition B) where
  disjointDecompositionClosed : D.disjointDecomposition
  projectionIdempotentClosed : D.projectionIdempotent
  projectionPositiveClosed : D.projectionPositive

theorem band_decomposition_closed_from_evidence (B : BanachLattice) (D : BandDecomposition B) (E : BandDecompositionEvidence B D) :
  BandDecompositionClosed B D := by
  exact And.intro E.disjointDecompositionClosed (And.intro E.projectionIdempotentClosed E.projectionPositiveClosed)

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
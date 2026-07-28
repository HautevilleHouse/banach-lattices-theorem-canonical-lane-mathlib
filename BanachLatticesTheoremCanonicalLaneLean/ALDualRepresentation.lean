import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachLatticesTheoremCanonicalLaneLean.BanachLatticeStructure

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure ALSpace (B : BanachLattice) where
  normAdditive : Prop
  dualIsometric : Type u
  dualIsometricLattice : Type u
  dualIsIdentification : Prop

def ALSpaceClosed (B : BanachLattice) (A : ALSpace B) : Prop :=
  A.dualIsIdentification

structure ALSpaceEvidence (B : BanachLattice) (A : ALSpace B) where
  dualIsIdentificationClosed : A.dualIsIdentification

theorem al_space_closed_from_evidence (B : BanachLattice) (A : ALSpace B) (E : ALSpaceEvidence B A) : ALSpaceClosed B A := by
  exact E.dualIsIdentificationClosed

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesTheorem

structure RepresentationTheoremPackage where
  carrier : Type
  norm : carrier → ℝ
  latticeOps : carrier → carrier → carrier
  compactHausdorffSpace : Type
  spaceOfContinuousFunctions : Type
  isometricLatticeIsomorphism : carrier → spaceOfContinuousFunctions
  surjectivity : Prop
  isometry : Prop

structure RepresentationEvidence (R : RepresentationTheoremPackage) where
  surjectivityClosed : R.surjectivity
  isometryClosed : R.isometry

def RepresentationClosed (R : RepresentationTheoremPackage) : Prop :=
  R.surjectivity ∧ R.isometry

theorem representation_closed_from_evidence (R : RepresentationTheoremPackage)
    (E : RepresentationEvidence R) : RepresentationClosed R := by
  exact And.intro E.surjectivityClosed E.isometryClosed

end BanachLatticesTheorem
end HautevilleHouse
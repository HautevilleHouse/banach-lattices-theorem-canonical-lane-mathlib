import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachLatticesTheoremCanonicalLaneLean.BanachLatticeStructure

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

structure FreudenthalSpectralTheorem (B : BanachLattice) where
  spectralResolution : ℝ → B.carrier
  spectralProperties : Prop
  representationFormula : (B.carrier) → (ℝ → ℝ) → Prop
  spectralDecomposition : Prop

def FreudenthalSpectralClosed (B : BanachLattice) (F : FreudenthalSpectralTheorem B) : Prop :=
  F.spectralDecomposition

structure FreudenthalSpectralEvidence (B : BanachLattice) (F : FreudenthalSpectralTheorem B) where
  spectralDecompositionClosed : F.spectralDecomposition

theorem freudenthal_spectral_closed_from_evidence (B : BanachLattice) (F : FreudenthalSpectralTheorem B) (E : FreudenthalSpectralEvidence B F) :
  FreudenthalSpectralClosed B F := by
  exact E.spectralDecompositionClosed

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
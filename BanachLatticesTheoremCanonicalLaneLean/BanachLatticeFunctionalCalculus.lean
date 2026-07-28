import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesTheorem

structure FunctionalCalculusPackage where
  carrier : Type
  norm : carrier → ℝ
  latticeOps : carrier → carrier → carrier
  continuousFunctions : Type
  representation : continuousFunctions → (carrier → carrier)
  positivityPreserving : Prop
  spectralProperties : Prop

structure FunctionalCalculusEvidence (F : FunctionalCalculusPackage) where
  positivityPreservingClosed : F.positivityPreserving
  spectralPropertiesClosed : F.spectralProperties

def FunctionalCalculusClosed (F : FunctionalCalculusPackage) : Prop :=
  F.positivityPreserving ∧ F.spectralProperties

theorem functional_calculus_closed_from_evidence (F : FunctionalCalculusPackage)
    (E : FunctionalCalculusEvidence F) : FunctionalCalculusClosed F := by
  exact And.intro E.positivityPreservingClosed E.spectralPropertiesClosed

end BanachLatticesTheorem
end HautevilleHouse
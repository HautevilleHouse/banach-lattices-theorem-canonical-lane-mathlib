import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesTheorem

structure LatticeOrderedBanachSpace where
  carrier : Type
  norm : carrier → ℝ
  add : carrier → carrier → carrier
  mul : ℝ → carrier → carrier
  sup : carrier → carrier → carrier
  inf : carrier → carrier → carrier
  banachSpace : Prop
  latticeOrder : Prop
  compatibility : Prop

structure OrderStructureEvidence (L : LatticeOrderedBanachSpace) where
  banachSpaceClosed : L.banachSpace
  latticeOrderClosed : L.latticeOrder
  compatibilityClosed : L.compatibility

def OrderStructureClosed (L : LatticeOrderedBanachSpace) : Prop :=
  L.banachSpace ∧ L.latticeOrder ∧ L.compatibility

theorem order_structure_closed_from_evidence (L : LatticeOrderedBanachSpace)
    (E : OrderStructureEvidence L) : OrderStructureClosed L := by
  exact And.intro E.banachSpaceClosed (And.intro E.latticeOrderClosed E.compatibilityClosed)

end BanachLatticesTheorem
end HautevilleHouse
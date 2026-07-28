import HautevilleHouse.BanachLatticesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

def BanachLatticeBridgeClosed (O : BanachLatticeObject) : Prop :=
  O.object.property ∧ O.object.banach

theorem bridge_from_admissible_class (A : BanachLatticeAdmittedObject) :
    BanachLatticeBridgeClosed A.object := by
  exact A.object.bridgeWitness

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.BanachLatticesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BanachLatticesTheoremCanonicalLaneLean

def ConstrainedBanachLatticeClosure (A : BanachLatticeAdmittedObject) : Prop :=
  BanachLatticeBridgeClosed A.object ∧ gateClosed A

theorem constrained_banach_lattice_endgame (A : BanachLatticeAdmittedObject) :
    ConstrainedBanachLatticeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachLatticesTheoremCanonicalLaneLean
end HautevilleHouse
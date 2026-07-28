import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachLatticesTheorem

def ConstrainedBanachLatticeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_banach_lattice_endgame (A : AdmissibleClass) :
    ConstrainedBanachLatticeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachLatticesTheorem
end HautevilleHouse
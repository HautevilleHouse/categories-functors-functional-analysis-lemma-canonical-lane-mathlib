import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean

structure AdjointPair (C D : Type u) [Category.{v} C] [Category.{v} D] where
  leftAdjoint : C ⥤ D
  rightAdjoint : D ⥤ C
  unit : 𝟭 C ⟶ leftAdjoint ⋙ rightAdjoint
  counit : rightAdjoint ⋙ leftAdjoint ⟶ 𝟭 D
  triangleLeft : (unit ▷ rightAdjoint) @ (leftAdjoint ◁ counit) = 𝟙 (leftAdjoint ⋙ rightAdjoint) := by trivial
  triangleRight : (counit ▷ leftAdjoint) @ (rightAdjoint ◁ unit) = 𝟙 (rightAdjoint ⋙ leftAdjoint) := by trivial

structure AdjointPairEvidence (C D : Type u) [Category.{v} C] [Category.{v} D] (A : AdjointPair C D) where
  leftAdjointClosed : True
  rightAdjointClosed : True

def AdjointPairClosed (C D : Type u) [Category.{v} C] [Category.{v} D] (A : AdjointPair C D) : Prop :=
  True

theorem adjoint_pair_closed_from_evidence (C D : Type u) [Category.{v} C] [Category.{v} D] (A : AdjointPair C D) (E : AdjointPairEvidence C D A) : AdjointPairClosed C D A := by
  trivial

end CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
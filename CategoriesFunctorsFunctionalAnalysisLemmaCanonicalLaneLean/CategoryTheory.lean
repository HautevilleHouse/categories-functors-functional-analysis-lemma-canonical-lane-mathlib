import Mathlib.CategoryTheory.Basic

/-!
# Category Theory Package
-/

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean

structure CategoryPackage where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : ∀ X : objects, morphisms X X
  composition : ∀ {X Y Z : objects}, morphisms X Y → morphisms Y Z → morphisms X Z
  associativity : Prop
  identityLaw : Prop

structure CategoryEvidence (C : CategoryPackage) where
  associativityClosed : C.associativity
  identityLawClosed : C.identityLaw

def CategoryClosed (C : CategoryPackage) : Prop :=
  C.associativity ∧ C.identityLaw

theorem category_closed_from_evidence (C : CategoryPackage) (E : CategoryEvidence C) :
    CategoryClosed C := by
  exact And.intro E.associativityClosed E.identityLawClosed

end CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
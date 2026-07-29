import HautevilleHouse.CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean.CategoryTheory

/-!
# Functoriality Package
-/

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean

structure FunctorPackage (C D : CategoryPackage) where
  objectMap : C.objects → D.objects
  morphismMap : ∀ {X Y : C.objects}, C.morphisms X Y → D.morphisms (objectMap X) (objectMap Y)
  preservesIdentity : Prop
  preservesComposition : Prop

structure FunctorEvidence {C D : CategoryPackage} (F : FunctorPackage C D) where
  preservesIdentityClosed : F.preservesIdentity
  preservesCompositionClosed : F.preservesComposition

def FunctorClosed {C D : CategoryPackage} (F : FunctorPackage C D) : Prop :=
  F.preservesIdentity ∧ F.preservesComposition

theorem functor_closed_from_evidence {C D : CategoryPackage} (F : FunctorPackage C D)
    (E : FunctorEvidence F) : FunctorClosed F := by
  exact And.intro E.preservesIdentityClosed E.preservesCompositionClosed

end CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
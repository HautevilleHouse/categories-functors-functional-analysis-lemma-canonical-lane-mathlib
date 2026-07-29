import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean

structure PresheafCategory (C : Type u) [Category.{v} C] where
  indexingCategory : Type w
  [indCatSmall : SmallCategory indexingCategory]
  diagram : indexingCategory ⥤ C
  limitExists : Prop
  limitPreserving : Prop

structure PresheafCategoryEvidence (C : Type u) [Category.{v} C] (P : PresheafCategory C) where
  limitExistsClosed : P.limitExists
  limitPreservingClosed : P.limitPreserving

def PresheafCategoryClosed (C : Type u) [Category.{v} C] (P : PresheafCategory C) : Prop :=
  P.limitExists ∧ P.limitPreserving

theorem presheaf_category_closed_from_evidence (C : Type u) [Category.{v} C] (P : PresheafCategory C) (E : PresheafCategoryEvidence C P) : PresheafCategoryClosed C P := by
  exact And.intro E.limitExistsClosed E.limitPreservingClosed

end CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
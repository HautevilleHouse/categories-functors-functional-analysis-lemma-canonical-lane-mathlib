import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisLemma

structure FunctorCategoryBridge where
  sourceCategory : Type u
  targetCategory : Type v
  functor : sourceCategory → targetCategory
  faithful : Prop
  full : Prop
  fullyFaithful : faithful ∧ full

def FunctorCategoryClosure (F : FunctorCategoryBridge) : Prop :=
  F.fullyFaithful.1 ∧ F.fullyFaithful.2

theorem functor_category_bridge_closed (F : FunctorCategoryBridge) :
    FunctorCategoryClosure F := by
  exact F.fullyFaithful

end CategoriesFunctorsFunctionalAnalysisLemma
end HautevilleHouse
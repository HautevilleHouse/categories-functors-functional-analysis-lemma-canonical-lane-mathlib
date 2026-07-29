import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean

structure FunctionalAnalysisFunctor (X : Type u) (Y : Type v) where
  obj : X → Y
  map : ∀ (f : X → X), Y → Y
  functoriality : ∀ (f g : X → X), map (g ∘ f) = map g ∘ map f

structure FunctionalAnalysisLemma (F : FunctionalAnalysisFunctor Type Type) where
  boundedness : Prop
  continuity : Prop
  closedGraph : Prop
  equivalence : boundedness ∧ continuity ∧ closedGraph

end CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
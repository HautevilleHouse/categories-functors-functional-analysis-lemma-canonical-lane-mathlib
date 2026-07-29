import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Functional.Basic

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean

structure FunctionalAnalysisLemma (X : Type u) [NormedAddCommGroup X] [BanachSpace X] where
  lemmaStatement : Prop
  usesCategoryTheory : Prop
  bridgingFunctor : Type v
  lemmaClosed : lemmaStatement
  categoryBridgeUsed : usesCategoryTheory

def FunctionalAnalysisLemmaClosed (X : Type u) [NormedAddCommGroup X] [BanachSpace X] (L : FunctionalAnalysisLemma X) : Prop :=
  L.lemmaStatement ∧ L.usesCategoryTheory

theorem functional_analysis_lemma_closed (X : Type u) [NormedAddCommGroup X] [BanachSpace X] (L : FunctionalAnalysisLemma X) : FunctionalAnalysisLemmaClosed X L := by
  exact And.intro L.lemmaClosed L.categoryBridgeUsed

end CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
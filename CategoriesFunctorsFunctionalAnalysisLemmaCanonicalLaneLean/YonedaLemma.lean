import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean

structure YonedaLemmaPackage where
  category : Type u
  homFunctor : Type v → Type w
  yonedaEmbedding : Prop
  naturalIsomorphism : Prop
  fullyFaithful : Prop
  lemmaProved : Prop

structure YonedaLemmaEvidence (P : YonedaLemmaPackage) where
  yonedaEmbeddingClosed : P.yonedaEmbedding
  naturalIsomorphismClosed : P.naturalIsomorphism
  fullyFaithfulClosed : P.fullyFaithful
  lemmaProvedClosed : P.lemmaProved

def YonedaLemmaClosed (P : YonedaLemmaPackage) : Prop :=
  P.yonedaEmbedding ∧ P.naturalIsomorphism ∧ P.fullyFaithful ∧ P.lemmaProved

theorem yoneda_lemma_closed_from_evidence (P : YonedaLemmaPackage)
    (E : YonedaLemmaEvidence P) : YonedaLemmaClosed P := by
  exact And.intro E.yonedaEmbeddingClosed
    (And.intro E.naturalIsomorphismClosed
      (And.intro E.fullyFaithfulClosed E.lemmaProvedClosed))

end CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
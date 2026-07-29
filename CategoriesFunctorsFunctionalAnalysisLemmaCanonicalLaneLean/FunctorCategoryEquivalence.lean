import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean

structure FunctorCategoryEquivalencePackage where
  sourceCategory : Type u
  targetCategory : Type v
  functorForward : sourceCategory → targetCategory
  functorBackward : targetCategory → sourceCategory
  naturalIsomorphismForwardBackward : Prop
  naturalIsomorphismBackwardForward : Prop
  equivalenceEstablished : Prop

structure FunctorCategoryEquivalenceEvidence (P : FunctorCategoryEquivalencePackage) where
  naturalIsomorphismForwardBackwardClosed : P.naturalIsomorphismForwardBackward
  naturalIsomorphismBackwardForwardClosed : P.naturalIsomorphismBackwardForward
  equivalenceEstablishedClosed : P.equivalenceEstablished

def FunctorCategoryEquivalenceClosed (P : FunctorCategoryEquivalencePackage) : Prop :=
  P.naturalIsomorphismForwardBackward ∧ P.naturalIsomorphismBackwardForward ∧ P.equivalenceEstablished

theorem functor_category_equivalence_closed_from_evidence (P : FunctorCategoryEquivalencePackage)
    (E : FunctorCategoryEquivalenceEvidence P) : FunctorCategoryEquivalenceClosed P := by
  exact And.intro E.naturalIsomorphismForwardBackwardClosed
    (And.intro E.naturalIsomorphismBackwardForwardClosed E.equivalenceEstablishedClosed)

end CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
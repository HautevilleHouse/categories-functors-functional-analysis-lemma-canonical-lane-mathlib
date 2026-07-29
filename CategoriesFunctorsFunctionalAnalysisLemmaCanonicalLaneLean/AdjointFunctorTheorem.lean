import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean

structure AdjointFunctorTheoremPackage where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitNaturalTransformation : Prop
  counitNaturalTransformation : Prop
  triangleIdentitiesHold : Prop
  adjunctionEstablished : Prop

structure AdjointFunctorTheoremEvidence (P : AdjointFunctorTheoremPackage) where
  leftAdjointExistsClosed : P.leftAdjointExists
  rightAdjointExistsClosed : P.rightAdjointExists
  unitNaturalTransformationClosed : P.unitNaturalTransformation
  counitNaturalTransformationClosed : P.counitNaturalTransformation
  triangleIdentitiesHoldClosed : P.triangleIdentitiesHold
  adjunctionEstablishedClosed : P.adjunctionEstablished

def AdjointFunctorTheoremClosed (P : AdjointFunctorTheoremPackage) : Prop :=
  P.leftAdjointExists ∧ P.rightAdjointExists ∧ P.unitNaturalTransformation ∧
  P.counitNaturalTransformation ∧ P.triangleIdentitiesHold ∧ P.adjunctionEstablished

theorem adjoint_functor_theorem_closed_from_evidence (P : AdjointFunctorTheoremPackage)
    (E : AdjointFunctorTheoremEvidence P) : AdjointFunctorTheoremClosed P := by
  exact And.intro E.leftAdjointExistsClosed
    (And.intro E.rightAdjointExistsClosed
      (And.intro E.unitNaturalTransformationClosed
        (And.intro E.counitNaturalTransformationClosed
          (And.intro E.triangleIdentitiesHoldClosed E.adjunctionEstablishedClosed))))

end CategoriesFunctorsFunctionalAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
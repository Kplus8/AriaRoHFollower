Scriptname K8RH_ZTunic_Q extends ReferenceAlias  

Quest Property K8RHAriaStarter  Auto  

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if (newContainer == Game.GetPlayer())
			K8RHAriaStarter.SetObjectiveDisplayed(20)
			K8RHAriaStarter.SetObjectiveCompleted(10)
		K8RHAriaStarter.SetStage(20)
	endif
EndEvent

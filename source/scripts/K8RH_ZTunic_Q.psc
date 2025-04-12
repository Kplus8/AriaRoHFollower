Scriptname K8RH_ZTunic_Q extends ReferenceAlias  

Quest Property K8RHAriaStarter  Auto  

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if (newContainer == Game.GetPlayer())
			
		if K8RHAriaStarter.IsStageDone(1);Has started escort yet
			K8RHAriaStarter.SetObjectiveDisplayed(20)
			K8RHAriaStarter.SetObjectiveCompleted(10)
			K8RHAriaStarter.SetStage(20)
		else
			K8RHAriaStarter.SetStage(5)
		endif	
	endif
EndEvent

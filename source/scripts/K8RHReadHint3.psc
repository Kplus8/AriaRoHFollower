Scriptname K8RHReadHint3 extends ReferenceAlias

auto State waiting

	Event OnRead()
		If GetOwningQuest().GetStageDone(0) == 1
			GetOwningQuest().SetStage(10)
			GoToState("allDone")
		Endif
	EndEvent
EndState

State allDone
	;do nothing
endState
Scriptname K8RHReactNoteRead extends ReferenceAlias  

Scene Property ReadScene  Auto  

auto State waiting

	Event OnRead()
		ReadScene.Start()
	EndEvent
EndState

State allDone
	;do nothing
endState



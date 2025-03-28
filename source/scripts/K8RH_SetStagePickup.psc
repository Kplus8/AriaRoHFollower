Scriptname K8RH_SetStagePickup  extends ReferenceAlias

quest property myQST auto
{quest to set stage upon}
int property preReqStage = -1 auto
{(Optional)Stage that must be set for this script to run. Default: NONE}
int property StageToSet auto
{Set this stage when the actor dies}

auto STATE waiting
	EVENT OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
		if preReqStage == -1 || myQST.getStageDone(preReqStage) == TRUE
			if (newContainer == Game.GetPlayer())
				myQST.setStage(stageToSet)
				gotoState("inactive")
			endif
		elseif preReqStage != -1 && myQST.getStageDone(preReqStage) == FALSE
; 			debug.trace(self + " activated before stage " + preReqStage + " of " + myQST + " was set")
		else
; 			debug.trace(self + " got defaultSetSTageonDeath script into a bad state!")
		endif
	endEVENT
endSTATE

STATE inactive
endSTATE

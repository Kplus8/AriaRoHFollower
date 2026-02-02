;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname K8RH_TIF__060334E5 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if GetOwningQuest().IsStageDone(8)
     K8RHAriaStarterJustThanks.Start()
else
    GetOwningQuest().SetObjectiveDisplayed(10)
    GetOwningQuest().SetStage(10)
endif
(K8RHAriaFollower as K8RHAriaController).SetFollower(akSpeaker)
(K8RHAriaFollower as K8RHAriaController).Setup()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property K8RHAriaStarterJustThanks  Auto  

Quest Property K8RHAriaFollower  Auto  

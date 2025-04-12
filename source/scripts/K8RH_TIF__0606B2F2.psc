;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname K8RH_TIF__0606B2F2 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as K8RHAriaController).SetFollower(akSpeaker)
if K8RHAriaStarter.IsStageDone(8)
     K8RHAriaStarter.SetObjectiveCompleted(30)
endif
K8RHAriaStarter.SetStage(40)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property K8RHAriaStarter  Auto  

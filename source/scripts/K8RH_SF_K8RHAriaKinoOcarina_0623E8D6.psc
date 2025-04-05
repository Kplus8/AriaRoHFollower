;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname K8RH_SF_K8RHAriaKinoOcarina_0623E8D6 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
K8RHAriaDoingScene.Value = 0
self.GetOwningQuest().UpdateCurrentInstanceGlobal(K8RHAriaDoingScene)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
K8RHAriaDoingScene.Value = 1
self.GetOwningQuest().UpdateCurrentInstanceGlobal(K8RHAriaDoingScene)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property K8RHAriaDoingScene  Auto  

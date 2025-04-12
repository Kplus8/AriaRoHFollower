;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 8
Scriptname K8RH_QF_K8RHAriaStarter_06019E72 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Aria
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Aria Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BlockOfTime
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BlockOfTime Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ZoraTunic
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ZoraTunic Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ZoraTunicChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ZoraTunicChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
if K8RHAriaStarter.IsStageDone(5)
     K8RHAriaStarterJustBlock.Start()
else
    K8RHAriaStarterBlockOfTime.Start()
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Grabbed Tunic w/o Aria
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Asked to escort
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;Grabbed Ether Medal w/o Aria
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property K8RHAriaStarterBlockOfTime  Auto  

GlobalVariable Property EtherCount  Auto  

Quest Property K8RHAriaStarter  Auto  

Scene Property K8RHAriaStarterJustBlock  Auto  

Scene Property K8RHAriaStarterJustThanks  Auto  

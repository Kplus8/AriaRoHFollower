;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname K8RH_QF_K8RHAriaStarter_06019E72 Extends Quest Hidden

;BEGIN ALIAS PROPERTY ZoraTunicChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ZoraTunicChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BlockOfTime
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BlockOfTime Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ZoraTunic
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ZoraTunic Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Aria
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Aria Auto
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
K8RHAriaStarterBlockOfTime.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property K8RHAriaStarterBlockOfTime  Auto  

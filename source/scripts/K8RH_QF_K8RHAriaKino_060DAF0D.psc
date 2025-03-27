;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 7
Scriptname K8RH_QF_K8RHAriaKino_060DAF0D Extends Quest Hidden

;BEGIN ALIAS PROPERTY Note3SolstChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note3SolstChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note3RefSolst
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note3RefSolst Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note3MiddenChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note3MiddenChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ThalmorCorpse
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThalmorCorpse Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note3Ref
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note3Ref Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Aria
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Aria Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
K8RHAriaKinoWetScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
K8RHAriaKinoSkulltulaIndy.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
K8RHAriaKinoBoatTalk.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
K8RHAriaKinoNote3Scene.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property K8RHAriaKinoNote3Scene  Auto  

Scene Property K8RHAriaKinoWetScene  Auto  

Scene Property K8RHAriaKinoBoatTalk  Auto  

Scene Property K8RHAriaKinoSkulltulaIndy  Auto  

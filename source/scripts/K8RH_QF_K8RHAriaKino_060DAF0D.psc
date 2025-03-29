;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 29
Scriptname K8RH_QF_K8RHAriaKino_060DAF0D Extends Quest Hidden

;BEGIN ALIAS PROPERTY ThalmorCorpse
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThalmorCorpse Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KinoThalNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KinoThalNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SkullHammerKino
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SkullHammerKino Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KinoSmallKey5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KinoSmallKey5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Aria
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Aria Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note3Ref
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note3Ref Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note3MiddenChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note3MiddenChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KinoDarknut1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KinoDarknut1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KinoSilverCent
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KinoSilverCent Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note3SolstChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note3SolstChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY OoT
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_OoT Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KinoFinalChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KinoFinalChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KinoStalKnight
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KinoStalKnight Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note3RefSolst
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note3RefSolst Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
K8RHAriaKinoNote3Scene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
K8RHAriaKinoThalNoteReact.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;Note 4 no SoT
K8RHAriaKinoNote4NSoT.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
K8RHAriaKinoCentAfter.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
K8RHAriaKinoCentSee.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN CODE
;Gate Comment if returning with SoT
K8RHAriaKinoReturn.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
;Comment on Gate
K8RHAriaKinoNoticeGate.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
;Note 4 SoT
K8RHAriaKinoNote4YSoT.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
K8RHAriaKinoWetScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
K8RHAriaKinoHalfway.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
;Comment on OoT
K8RHAriaKinoOcarina.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
K8RHAriaKinoAfterGauntlet.Start()
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

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
K8RHAriaKinoSkullHammerPickup.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
K8RHAriaKinoGohmaReact.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
;return tracker to make sure 95 happens only if return trip needed
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

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property K8RHAriaKinoNote3Scene  Auto  

Scene Property K8RHAriaKinoWetScene  Auto  

Scene Property K8RHAriaKinoBoatTalk  Auto  

Scene Property K8RHAriaKinoSkulltulaIndy  Auto  

Quest Property K8RHTeleport  Auto  

Scene Property K8RHAriaKinoThalNoteReact  Auto  

Scene Property K8RHAriaKinoHalfway  Auto  

Scene Property K8RHAriaKinoGohmaReact  Auto  

Scene Property K8RHAriaKinoSkullHammerPickup  Auto

Scene Property K8RHAriaKinoAfterGauntlet  Auto  

Scene Property K8RHAriaKinoCentSee  Auto  

Scene Property K8RHAriaKinoCentAfter  Auto  

Scene Property K8RHAriaKinoNoticeGate  Auto  

Scene Property K8RHAriaKinoNote4YSoT  Auto  

Scene Property K8RHAriaKinoNote4NSoT  Auto  

Scene Property K8RHAriaKinoOcarina  Auto  

Scene Property K8RHAriaKinoReturn  Auto  

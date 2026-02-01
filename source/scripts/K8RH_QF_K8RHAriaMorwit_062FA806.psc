;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 31
Scriptname K8RH_QF_K8RHAriaMorwit_062FA806 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Aria
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Aria Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY HeroCrossbow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_HeroCrossbow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BossChain
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BossChain Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Madman
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Madman Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;Entry
K8RHAriaMorwitEnterScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;reenable at boss arena
objectreference arPortal = none
Alias_Aria.TryToEnable()
(K8RHAriaTeleport as K8RH_AriaTPScript).K8RH_AriaSilentTeleport()
arPortal = Alias_Aria.GetRef().PlaceAtMe(game.GetFormFromFile(511317, "Skyrim.ESM"), 1, false, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN CODE
;Pickup Mask
K8RHAriaMorwitPickupMask.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Bridge
K8RHAriaMorwitBridgeScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Journal 5
Ignacia5.Value = 1
UpdateCurrentInstanceGlobal(Ignacia5)
K8RHAriaMorwitIgnacia5.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
;Valley Notes
K8RHAriaMorwitMaskMania.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
;Ocean Note
K8RHAriaMorwitOceanReact.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;Forest Temple BoT
K8RHAriaMorwitForestTemple.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
;Valley Note 1
if (K8RHAriaMorwit.IsStageDone(59))
    K8RHAriaMorwit.SetStage(60)
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;Hero's Crossbow
K8RHAriaMorwitCrossbowComment.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
;See FDS
K8RHAriaMorwitSeeFDS.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
;Asked about Mask Mania
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Journal 1
Ignacia1.Value = 1
UpdateCurrentInstanceGlobal(Ignacia1)
K8RHAriaMorwitIgnacia1.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;React to Journal 4's Mask Mania
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;Approach
K8RHAriaMorwitApproachScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;Last Bird Switch
K8RHAriaMorwitLastSwitch.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_30
Function Fragment_30()
;BEGIN CODE
;see mask jumpscare
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
;Valley Note 2
if (K8RHAriaMorwit.IsStageDone(58))
    K8RHAriaMorwit.SetStage(60)
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;Madman
K8RHAriaMorwitMadman.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;Journal 3
Ignacia3.Value = 1
UpdateCurrentInstanceGlobal(Ignacia3)
K8RHAriaMorwitIgnacia3.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
;Twinmold React
K8RHAriaMorwitTwinmoldReact.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
;Mountain Note
K8RHAriaMorwitMountainReact.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Mad God Door
K8RHAriaMorwitMadDoorScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;Swamp Note
K8RHAriaMorwitSwampReact.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;Journal 2
Ignacia2.Value = 1
UpdateCurrentInstanceGlobal(Ignacia2)
K8RHAriaMorwitIgnacia2.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;Journal 4
Ignacia4.Value = 1
UpdateCurrentInstanceGlobal(Ignacia4)
K8RHAriaMorwitIgnacia4.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Pull Chain Dead End
K8RHAriaMorwitDragurLeverScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;Hero's Enhanced Crossbow
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_29
Function Fragment_29()
;BEGIN CODE
;Return from jumpscare
K8RHAriaMorwitReturnJumpscare.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;Swamp Door
K8RHAriaMorwitUghMore.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property K8RHAriaMorwitApproachScene  Auto  

Scene Property K8RHAriaMorwitEnterScene  Auto  

Scene Property K8RHAriaMorwitBridgeScene  Auto  

Scene Property K8RHAriaMorwitDragurLeverScene  Auto  

Scene Property K8RHAriaMorwitMadDoorScene  Auto  

Scene Property K8RHAriaMorwitIgnacia1  Auto  

Scene Property K8RHAriaMorwitIgnacia2  Auto  

Scene Property K8RHAriaMorwitIgnacia3  Auto  

Scene Property K8RHAriaMorwitIgnacia4  Auto

Scene Property K8RHAriaMorwitIgnacia5  Auto  

GlobalVariable Property Ignacia1  Auto  

GlobalVariable Property Ignacia2  Auto  

GlobalVariable Property Ignacia3  Auto  

GlobalVariable Property Ignacia4  Auto  

GlobalVariable Property Ignacia5  Auto  

Scene Property K8RHAriaMorwitCrossbowComment  Auto  

Scene Property K8RHAriaMorwitMadman  Auto  

Scene Property K8RHAriaMorwitLastSwitch  Auto  

Scene Property K8RHAriaMorwitForestTemple  Auto  

Scene Property K8RHAriaMorwitSwampReact  Auto  

Scene Property K8RHAriaMorwitUghMore  Auto  

Scene Property K8RHAriaMorwitMountainReact  Auto  

Scene Property K8RHAriaMorwitOceanReact  Auto  

Scene Property K8RHAriaMorwitMaskMania  Auto

Scene Property K8RHAriaMorwitTwinmoldReact  Auto  

Quest Property K8RHAriaMorwit  Auto  

Quest Property K8RHAriaTeleport  Auto  

Scene Property K8RHAriaMorwitPickupMask  Auto  

Scene Property K8RHAriaMorwitSeeFDS  Auto  

Scene Property K8RHAriaMorwitReturnJumpscare  Auto  

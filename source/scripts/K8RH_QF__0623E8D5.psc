;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 49
Scriptname K8RH_QF__0623E8D5 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Aria
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Aria Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GoldGauntRef
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GoldGauntRef Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_46
Function Fragment_46()
;BEGIN CODE
;Pickup GG
;51 for has SG
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_42
Function Fragment_42()
;BEGIN AUTOCAST TYPE K8RHAriaSceneChecker
Quest __temp = self as Quest
K8RHAriaSceneChecker kmyQuest = __temp as K8RHAriaSceneChecker
;END AUTOCAST
;BEGIN CODE
;Read Note 5
kmyQuest.SetScene(K8RHAriaForelhostNote5React)
kmyQuest.StartCheck()
;41 for note4
;42 for no note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_31
Function Fragment_31()
;BEGIN CODE
;Approach no note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_38
Function Fragment_38()
;BEGIN CODE
;Discover Thalmor before, killed him
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_40
Function Fragment_40()
;BEGIN CODE
;Approach SoT box for note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_34
Function Fragment_34()
;BEGIN CODE
;Listen to Thalmor no note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
;Approach
K8RHAriaForelhostApproachScene.Start()
If Note4Read.Value == 1
    K8RHAriaForelhost.SetStage(11)
else
    K8RHAriaForelhost.SetStage(12)
endIf
;11 If note4
;12 if no note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_44
Function Fragment_44()
;BEGIN CODE
;Read Note 5 no note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_30
Function Fragment_30()
;BEGIN CODE
;Approach note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_36
Function Fragment_36()
;BEGIN CODE
;Discover Thalmor before, has note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_45
Function Fragment_45()
;BEGIN AUTOCAST TYPE K8RHAriaSceneChecker
Quest __temp = self as Quest
K8RHAriaSceneChecker kmyQuest = __temp as K8RHAriaSceneChecker
;END AUTOCAST
;BEGIN CODE
;Pickup GG
kmyQuest.SetScene(K8RHAriaForelhostGoldGauntPickup)
kmyQuest.StartCheck()
;51 for has SG
;52 for no SG
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_32
Function Fragment_32()
;BEGIN CODE
;Listen to Thalmor
;21 for note4
;22 for no note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_39
Function Fragment_39()
;BEGIN AUTOCAST TYPE K8RHAriaSceneChecker
Quest __temp = self as Quest
K8RHAriaSceneChecker kmyQuest = __temp as K8RHAriaSceneChecker
;END AUTOCAST
;BEGIN CODE
;Approach SoT box
kmyQuest.SetScene(K8RHAriaForelhostSoTApproach)
kmyQuest.StartCheck()
;31 for note4
;32 for no note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_35
Function Fragment_35()
;BEGIN CODE
;Discover Thalmor before

K8RHAriaForelhostThalmorReact.Start()
;26 for note4
;27 for no note4
;28 for kill him
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_33
Function Fragment_33()
;BEGIN CODE
;Listen to Thalmor note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_37
Function Fragment_37()
;BEGIN CODE
;Discover Thalmor before, has no note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_48
Function Fragment_48()
;BEGIN AUTOCAST TYPE K8RHAriaSceneChecker
Quest __temp = self as Quest
K8RHAriaSceneChecker kmyQuest = __temp as K8RHAriaSceneChecker
;END AUTOCAST
;BEGIN CODE
;Learn SoT
kmyQuest.SetScene(K8RHAriaForelhostLearnSoT)
kmyQuest.StartCheck()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_41
Function Fragment_41()
;BEGIN CODE
;Approach SoT box no note4
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_47
Function Fragment_47()
;BEGIN CODE
;Pickup GG
;52 for no SG
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_43
Function Fragment_43()
;BEGIN CODE
;Read Note 5 for note4
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property K8RHTeleport  Auto  

GlobalVariable Property Note4Read  Auto  

Quest Property K8RHAriaForelhost  Auto  

Scene Property K8RHAriaForelhostApproachScene  Auto  
Quest Property ForelMain  Auto  

Scene Property K8RHAriaForelhostThalmorReact  Auto  

Scene Property K8RHAriaForelhostSoTApproach  Auto  

Scene Property K8RHAriaForelhostNote5React  Auto  

Scene Property K8RHAriaForelhostLearnSoT  Auto  

Scene Property K8RHAriaForelhostGoldGauntPickup  Auto  

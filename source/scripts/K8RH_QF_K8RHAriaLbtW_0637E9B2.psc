;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 23
Scriptname K8RH_QF_K8RHAriaLbtW_0637E9B2 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ZeldaBow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ZeldaBow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ChildJournal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ChildJournal Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PrayerBook
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PrayerBook Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SoldierJournal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SoldierJournal Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TheyHaveCome
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TheyHaveCome Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY TornNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_TornNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SmithNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SmithNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MaskofTruth
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MaskofTruth Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Aria
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Aria Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GreatFairyPlea
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GreatFairyPlea Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;Great Fairy's Plea
K8RHAriaLbtWGreatFairyPlea.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;Soldier's Journal
K8RHAriaLbtWSoldierJournal.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Child Journal
K8RHAriaLbtWChildJournal.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
;Encounter They
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;Fairy Fountain
K8RHAriaLbtWSeeGreatFairy.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Winning Ticket
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
;Captain's Hat
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;Torn Note
K8RHAriaLbtWTornNote.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;Enter LbtW
K8RHAriaLbtWEnter.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;Zelda Bow Pickup
K8RHAriaLbtWZeldaBow.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
;Remembering Hyrule Outside
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;Mayor House See Bed
K8RHAriaLbtWSeeMayorRoom.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;First time picking up a wallet
K8RHAriaLbtWRupee.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Smith Journal
K8RHAriaLbtWSmithJournal.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
;Royal Broadsword
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;Chapel Prayer Book
K8RHAriaLbtWChapelPrayer.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Enter Cave
K8RHAriaLbtWEnterFznCave.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;Remembering Hyrule Reaction
(K8RHAriaTeleport as K8RH_AriaTPScript).K8RH_AriaSilentTeleport()
utility.Wait(0.200000)
K8RHAriaLbtWRememberHyruleScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
;Shadow Temple Enter
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;Sheikiah Armor

;if nothing

;if mask of truth (20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;Remembering Hyrule End Discussion
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Mask of Truth
K8RHAriaLbtWMaskofTruthScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;They Have Come book
K8RHAriaLbtWTheyHaveCome.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property K8RHAriaLbtWEnter  Auto  

Scene Property K8RHAriaLbtWZeldaBow  Auto  

Scene Property K8RHAriaLbtWEnterFznCave  Auto  

Scene Property K8RHAriaLbtWSmithJournal  Auto  

Scene Property K8RHAriaLbtWMaskofTruthScene  Auto  

Scene Property K8RHAriaLbtWTheyHaveCome  Auto  

Scene Property K8RHAriaLbtWRupee  Auto  

Scene Property K8RHAriaLbtWChildJournal  Auto  

Scene Property K8RHAriaLbtWSoldierJournal  Auto  

Scene Property K8RHAriaLbtWSeeMayorRoom  Auto  

Scene Property K8RHAriaLbtWTornNote  Auto  

Scene Property K8RHAriaLbtWChapelPrayer  Auto  

Scene Property K8RHAriaLbtWSeeGreatFairy  Auto  

Scene Property K8RHAriaLbtWGreatFairyPlea  Auto  

Scene Property K8RHAriaLbtWRememberHyruleScene  Auto  

Quest Property K8RHAriaTeleport  Auto  

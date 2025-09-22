Scriptname K8RHAriaItemTrackerPlayerWatcher extends ReferenceAlias

K8RH_AriaItemTracker Property CountScript  Auto

Armor Property ArmorTheGoldenGauntletsLightRoH  Auto  

Armor Property ArmorTheGoldenGauntletsLightSlowRoH  Auto  

Armor Property ArmorTheGoldenGauntletsRoH  Auto  

Armor Property ArmorTheGoldenGauntletsSlowRoH  Auto

MiscObject Property MAGOOTOcarinaOfTimeRoH  Auto  

Book Property FairyLetter  Auto  

MiscObject Property MagicMedallionEther  Auto  

WEAPON Property ZeldaBowRoH  Auto

Armor Property MajorasMaskTrueRoH  Auto  

WEAPON Property FierceDeitySwordLesserRoH  Auto  

GlobalVariable Property GoldGauntCount  Auto
  
GlobalVariable Property OoTCount  Auto  

GlobalVariable Property FairyLetterCount  Auto  

GlobalVariable Property EtherCount Auto  

GlobalVariable Property ZeldaBowCount  Auto  

GlobalVariable Property MajoraCount  Auto  

GlobalVariable Property FDSCount  Auto

Event OnInit()
	;Golden Gauntlets
	AddInventoryEventFilter(ArmorTheGoldenGauntletsLightRoH)
	AddInventoryEventFilter(ArmorTheGoldenGauntletsLightSlowRoH)
	AddInventoryEventFilter(ArmorTheGoldenGauntletsRoH)
	AddInventoryEventFilter(ArmorTheGoldenGauntletsSlowRoH)
	;OoT
	AddInventoryEventFilter(MAGOOTOcarinaOfTimeRoH)
	;Fairy Letter
	AddInventoryEventFilter(FairyLetter)
	;Ether
	AddInventoryEventFilter(MagicMedallionEther)
	;Bow of Light
	AddInventoryEventFilter(ZeldaBowRoH)
	;Majora's Mask
	AddInventoryEventFilter(MajorasMaskTrueRoH)
	;Initial FDS
	AddInventoryEventFilter(FierceDeitySwordLesserRoH)
endEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	;Golden Gauntlets
	if GoldGauntCount.Value < 1
		CountScript.GoldGauntCheck()
		RemoveInventoryEventFilter(ArmorTheGoldenGauntletsLightRoH)
		RemoveInventoryEventFilter(ArmorTheGoldenGauntletsLightSlowRoH)
		RemoveInventoryEventFilter(ArmorTheGoldenGauntletsRoH)
		RemoveInventoryEventFilter(ArmorTheGoldenGauntletsSlowRoH)
	endIf
	;OoT
	if OoTCount.Value < 1
		CountScript.OoTCheck()
		RemoveInventoryEventFilter(MAGOOTOcarinaOfTimeRoH)
	endIf
	;Fairy Letter
	if FairyLetterCount.Value < 1
		CountScript.FairyLetterCheck()
		RemoveInventoryEventFilter(FairyLetter)
	endIf
	;Ether
	if EtherCount.Value < 1
		CountScript.EtherCheck()
		RemoveInventoryEventFilter(MagicMedallionEther)
	endIf
	;Bow of Light
	if ZeldaBowCount.Value < 1
		CountScript.ZeldaBowCheck()
		RemoveInventoryEventFilter(ZeldaBowRoH)
	endIf
	;Majora's Mask
	if MajoraCount.Value < 1
		CountScript.MajoraCheck()
		RemoveInventoryEventFilter(MajorasMaskTrueRoH)
	endIf
	;FDS
	if FDSCount.Value < 1
		CountScript.FDSCheck()
		RemoveInventoryEventFilter(FierceDeitySwordLesserRoH)
	endIf
endEvent  

Scriptname K8RHAriaItemTrackerPlayerWatcher extends ReferenceAlias

K8RH_AriaItemTracker Property CountScript  Auto

Armor Property ArmorTheGoldenGauntletsLightRoH  Auto  

Armor Property ArmorTheGoldenGauntletsLightSlowRoH  Auto  

Armor Property ArmorTheGoldenGauntletsRoH  Auto  

Armor Property ArmorTheGoldenGauntletsSlowRoH  Auto

MiscObject Property MAGOOTOcarinaOfTimeRoH  Auto  

GlobalVariable Property GoldGauntCount  Auto
  
GlobalVariable Property OoTCount  Auto  

Event OnInit()
	;Golden Gauntlets
	AddInventoryEventFilter(ArmorTheGoldenGauntletsLightRoH)
	AddInventoryEventFilter(ArmorTheGoldenGauntletsLightSlowRoH)
	AddInventoryEventFilter(ArmorTheGoldenGauntletsRoH)
	AddInventoryEventFilter(ArmorTheGoldenGauntletsSlowRoH)
	;OoT
	AddInventoryEventFilter(MAGOOTOcarinaOfTimeRoH)
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
endEvent
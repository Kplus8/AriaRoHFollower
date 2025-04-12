Scriptname K8RH_AriaItemTracker extends Quest  

Armor Property ArmorTheGoldenGauntletsLightRoH  Auto  

Armor Property ArmorTheGoldenGauntletsLightSlowRoH  Auto  

Armor Property ArmorTheGoldenGauntletsRoH  Auto  

Armor Property ArmorTheGoldenGauntletsSlowRoH  Auto

MiscObject Property MAGOOTOcarinaOfTimeRoH  Auto  

Book Property FairyLetter  Auto  

MiscObject Property MagicMedallionEther  Auto  

GlobalVariable Property GoldGauntCount  Auto
  
GlobalVariable Property OoTCount  Auto  

GlobalVariable Property FairyLetterCount  Auto  

GlobalVariable Property EtherCount Auto


Function GoldGauntCheck()
	if GoldGauntCount.Value < 1
		;debug.Notification("Debug: GG being checked")
		float CurrentCount = Game.GetPlayer().GetItemCount(ArmorTheGoldenGauntletsLightRoH)
		CurrentCount += Game.GetPlayer().GetItemCount(ArmorTheGoldenGauntletsLightSlowRoH)
		CurrentCount += Game.GetPlayer().GetItemCount(ArmorTheGoldenGauntletsRoH)
		CurrentCount += Game.GetPlayer().GetItemCount(ArmorTheGoldenGauntletsSlowRoH)
		if CurrentCount > 0
			GoldGauntCount.Value = 1
			UpdateCurrentInstanceGlobal(GoldGauntCount)
			;debug.Notification("Debug: GG registered")
		endif
	endif
endFunction

Function OoTCheck()
	if OoTCount.Value < 1
		;debug.Notification("Debug: GG being checked")
		float CurrentCount = Game.GetPlayer().GetItemCount(MAGOOTOcarinaOfTimeRoH)
		if CurrentCount > 0
			OoTCount.Value = 1
			UpdateCurrentInstanceGlobal(OoTCount)
			;debug.Notification("Debug: GG registered")
		endif
	endif
endFunction

Function FairyLetterCheck()
	if FairyLetterCount.Value < 1
		;debug.Notification("Debug: GG being checked")
		float CurrentCount = Game.GetPlayer().GetItemCount(MAGOOTOcarinaOfTimeRoH)
		if CurrentCount > 0
			FairyLetterCount.Value = 1
			UpdateCurrentInstanceGlobal(FairyLetterCount)
			;debug.Notification("Debug: GG registered")
		endif
	endif
endFunction

Function EtherCheck()
	if EtherCount.Value < 1
		;debug.Notification("Debug: GG being checked")
		float CurrentCount = Game.GetPlayer().GetItemCount(MagicMedallionEther)
		if CurrentCount > 0
			EtherCount.Value = 1
			UpdateCurrentInstanceGlobal(EtherCount)
			;debug.Notification("Debug: GG registered")
		endif
	endif
endFunction

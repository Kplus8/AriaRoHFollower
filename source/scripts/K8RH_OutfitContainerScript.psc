Scriptname K8RH_OutfitContainerScript extends ObjectReference  

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
		If (akBaseItem as Armor != None) ; This is a legal piece of clothing, armor, or jewelry
			K8RH_OutfitFormlistAdventure.AddForm(akBaseItem)
		Else
			RemoveItem(akBaseItem, aiItemCount, True, akSourceContainer)
			debug.notification("You can't use that in an outfit.")
		Endif
EndEvent
	
Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
		if (self.GetItemCount(akBaseItem) == 0)
			K8RH_OutfitFormlistAdventure.RemoveAddedForm(akBaseItem)
		endif
EndEvent
	
FormList Property K8RH_OutfitFormlistAdventure Auto
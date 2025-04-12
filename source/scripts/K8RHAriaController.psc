Scriptname K8RHAriaController extends Quest

 
Actor Property Aria Auto

Actor Property PlayerREF Auto

ReferenceAlias Property FollowerAlias Auto

Faction Property DismissedFollowerFaction Auto

Faction Property CurrentHireling Auto

Message Property  FollowerDismissMessage Auto

Message Property  FollowerDismissMessageWedding Auto

Message Property  FollowerDismissMessageCompanions Auto

Message Property  FollowerDismissMessageCompanionsMale Auto

Message Property  FollowerDismissMessageCompanionsFemale Auto

Message Property  FollowerDismissMessageWait Auto

SetHirelingRehire Property HirelingRehireScript Auto

GlobalVariable Property FollowerRecruited Auto

Int Property iFollowerDismiss Auto Conditional


bool __isSetup = false
Function Setup(int forceNPC=0)
	; make sure this only gets called once
	if (__isSetup)
		return
	endif
	__isSetup = true

	;Debug.Trace("AriaNPC: Initiating NPC mental model.")


	RegisterForSingleUpdate(SecondsBetweenPeriodicUpdates)
EndFunction


Function SetFollower(ObjectReference FollowerRef)

     actor FollowerActor = FollowerRef as Actor

     FollowerActor.RemoveFromFaction(DismissedFollowerFaction)

     If FollowerActor.GetRelationshipRank(PlayerREF) <3 && FollowerActor.GetRelationshipRank(PlayerREF) >= 0

          FollowerActor.SetRelationshipRank(PlayerREF, 3)

     EndIf

     FollowerActor.SetPlayerTeammate()

     FollowerAlias.ForceRefTo(FollowerActor)

     FollowerActor.EvaluatePackage()

     FollowerRecruited.SetValue(1)

EndFunction

 

Function FollowerWait()

     actor FollowerActor = FollowerAlias.GetActorRef() as Actor

     FollowerActor.SetActorValue("WaitingForPlayer", 1)

     SetObjectiveDisplayed(10, abforce = true)

EndFunction

 

Function FollowerFollow()

     actor FollowerActor = FollowerAlias.GetActorRef() as Actor

     FollowerActor.SetActorValue("WaitingForPlayer", 0)

     SetObjectiveDisplayed(10, abdisplayed = false)

     FollowerActor.EvaluatePackage()

EndFunction

 

Function DismissFollower(Int iMessage = 0, Int iSayLine = 1)

     If FollowerAlias && FollowerAlias.GetActorReference().IsDead() == False

          If iMessage == 0

               FollowerDismissMessage.Show()

          ElseIf iMessage == 1

               FollowerDismissMessageWedding.Show()

          ElseIf iMessage == 2

               FollowerDismissMessageCompanions.Show()

          ElseIf iMessage == 3

               FollowerDismissMessageCompanionsMale.Show()

          ElseIf iMessage == 4

               FollowerDismissMessageCompanionsFemale.Show()

          ElseIf iMessage == 5

               FollowerDismissMessageWait.Show()

          Else

              FollowerDismissMessage.Show()

          EndIf

          actor DismissedFollowerActor = FollowerAlias.GetActorRef() as Actor

          DismissedFollowerActor.StopCombatAlarm()

          DismissedFollowerActor.AddToFaction(DismissedFollowerFaction)

          DismissedFollowerActor.SetPlayerTeammate(false)

          DismissedFollowerActor.RemoveFromFaction(CurrentHireling)

          DismissedFollowerActor.SetActorValue("WaitingForPlayer", 0)

          FollowerRecruited.SetValue(0)

          HirelingRehireScript.DismissHireling(DismissedFollowerActor.GetActorBase())

          If iSayLine == 1

               iFollowerDismiss = 1

              DismissedFollowerActor.EvaluatePackage()

             Utility.Wait(2)

          EndIf

             FollowerAlias.Clear()

             iFollowerDismiss = 0

     EndIf

EndFunction


int Property SecondsBetweenPeriodicUpdates auto

Event OnUpdate()
	Debug.Trace("AriaNPC: Periodic update check.")

	CheckOutfit()

	RegisterForSingleUpdate(SecondsBetweenPeriodicUpdates)
EndEvent



; Outfit Script Properties
Outfit Property K8RH_OutfitTemp Auto  
Outfit Property K8RH_OutfitAdventure Auto  
Outfit Property K8RH_OutfitCity Auto  
Outfit Property K8RH_OutfitHome Auto  
Outfit Property K8RH_OutfitDefault Auto 
Outfit Property K8RH_OutfitDefaultHome Auto 
Outfit Property K8RH_OutfitDefaultCity Auto 
FormList Property K8RH_OutfitFormListAdventure Auto  
FormList Property K8RH_OutfitFormListCity Auto  
FormList Property K8RH_OutfitFormListHome Auto  
LeveledItem Property K8RH_OutfitLeveledListAdventure Auto  
LeveledItem Property K8RH_OutfitLeveledListCity Auto  
LeveledItem Property K8RH_OutfitLeveledListHome Auto  
ObjectReference Property K8RH_OutfitContainerAdventure Auto  
ObjectReference Property K8RH_OutfitContainerCity Auto  
ObjectReference Property K8RH_OutfitContainerHome Auto  
Outfit Property K8RH_AriaStarterOutfit Auto
MiscObject Property Gold001 Auto  
GlobalVariable Property K8RH_DefaultOutfit Auto
Keyword Property LocTypeHabitation auto 
Keyword Property LocTypeInn auto 
Keyword Property LocTypePlayerHouse Auto 

; Functions

Function CheckOutfit()
	Actor rnpcActor = FollowerAlias.GetActorRef() as Actor

	; Get the current location only once to improve performance
    Location CurrentLocation = rnpcActor.GetCurrentLocation()


	; Check for default outfit set
    if K8RH_DefaultOutfit.GetValue() == 1
        ; Check for specific locations and set outfits accordingly
        if CurrentLocation.HasKeyword(LocTypePlayerHouse)
            Debug.Trace("Aria Outfit: Aria is in a player home and will equip a home outfit.")
            rnpcActor.SetOutfit(K8RH_OutfitHome)
        elseif CurrentLocation.HasKeyword(LocTypeHabitation)
            Debug.Trace("Aria Outfit: Aria is in a settlement and will equip a city outfit.")
            rnpcActor.SetOutfit(K8RH_OutfitCity)
        else 
            Debug.Trace("Ashe Outfit: Aria is not in a city or home, or other conditions not met. Equipping her adventure outfit.")
            rnpcActor.SetOutfit(K8RH_OutfitAdventure)
        endif 
    ; Check for custom outfit set
    elseif K8RH_DefaultOutfit.GetValue() == 0
        ; Check for specific locations and set outfits accordingly
        if CurrentLocation.HasKeyword(LocTypePlayerHouse) && K8RH_OutfitContainerHome.GetItemCount(K8RH_OutfitFormListHome) > 0
            Debug.Trace("Aria Outfit: Aria is in a player home and will equip a home outfit.")
            rnpcActor.SetOutfit(K8RH_OutfitHome)
        elseif (CurrentLocation.HasKeyword(LocTypeHabitation) || CurrentLocation.HasKeyword(LocTypeInn)) && K8RH_OutfitContainerCity.GetItemCount(K8RH_OutfitFormListCity) > 0
            Debug.Trace("Aria Outfit: Aria is in a settlement and will equip a city outfit.")
            rnpcActor.SetOutfit(K8RH_OutfitCity)
        elseif K8RH_OutfitContainerAdventure.GetItemCount(K8RH_OutfitFormListAdventure) > 0
            Debug.Trace("Aria Outfit: Aria is not in a city or home, or other conditions not met. Equipping her adventure outfit.")
            rnpcActor.SetOutfit(K8RH_OutfitAdventure) 
        endif 
    endif
EndFunction

Function OutfitSetAdventure()
    Aria = FollowerAlias.GetActorRef() as Actor
    K8RH_OutfitContainerAdventure.Activate(PlayerRef)
    Utility.Wait(0.1)
    Aria.SetOutfit(K8RH_OutfitTemp)
    K8RH_OutfitLeveledListAdventure.Revert()
    Int iIndex = K8RH_OutfitFormListAdventure.GetSize() ; Indices are offset by 1 relative to size.
    While iIndex
        iIndex -= 1
        Form currentOutfitItem = K8RH_OutfitFormListAdventure.GetAt(iIndex)
        K8RH_OutfitLeveledListAdventure.AddForm(currentOutfitItem, 1, 1)
    EndWhile
    Aria.SetOutfit(K8RH_OutfitAdventure)
    Aria.AddItem(Gold001, 0)
    K8RH_DefaultOutfit.SetValue(0)
EndFunction

Function OutfitSetCity()
    Aria = FollowerAlias.GetActorRef() as Actor
    K8RH_OutfitContainerCity.Activate(PlayerRef)
    Utility.Wait(0.1)
    Aria.SetOutfit(K8RH_OutfitTemp)
    K8RH_OutfitLeveledListCity.Revert()
    Int iIndex = K8RH_OutfitFormListCity.GetSize() ; Indices are offset by 1 relative to size.
    While iIndex
        iIndex -= 1
        Form currentOutfitItem = K8RH_OutfitFormListCity.GetAt(iIndex)
        K8RH_OutfitLeveledListCity.AddForm(currentOutfitItem, 1, 1)
    EndWhile
    Aria.SetOutfit(K8RH_OutfitCity)
    Aria.AddItem(Gold001, 0)
    K8RH_DefaultOutfit.SetValue(0)
EndFunction

Function OutfitSetHome()
    Aria = FollowerAlias.GetActorRef() as Actor
    K8RH_OutfitContainerHome.Activate(PlayerRef)
    Utility.Wait(0.1)
    Aria.SetOutfit(K8RH_OutfitTemp)
    K8RH_OutfitLeveledListHome.Revert()
    Int iIndex = K8RH_OutfitFormListHome.GetSize() ; Indices are offset by 1 relative to size.
    While iIndex
        iIndex -= 1
        Form currentOutfitItem = K8RH_OutfitFormListHome.GetAt(iIndex)
        K8RH_OutfitLeveledListHome.AddForm(currentOutfitItem, 1, 1)
    EndWhile
    Aria.SetOutfit(K8RH_OutfitHome)
    Aria.AddItem(Gold001, 0)
    K8RH_DefaultOutfit.SetValue(0)
EndFunction

Function OutfitSetDefault()
Aria = FollowerAlias.GetActorRef() as Actor
Aria.SetOutfit(K8RH_AriaStarterOutfit)
K8RH_DefaultOutfit.SetValue(1)
EndFunction

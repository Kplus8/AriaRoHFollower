Scriptname K8RHAriaQuestAliasScript extends ReferenceAlias 

 

Faction Property CurrentHireling Auto

Message Property FollowerDismissMessage  Auto

Actor Property PlayerREF Auto

 

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)

     If (akTarget == PlayerREF)

          (GetOwningQuest() as K8RHAriaController).DismissFollower(0, 0)

     EndIf

EndEvent

 

Event OnDeath(Actor akKiller)

     Self.GetActorRef().RemoveFromFaction(CurrentHireling)

     Self.Clear()

EndEvent
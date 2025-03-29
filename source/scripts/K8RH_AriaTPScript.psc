Scriptname K8RH_AriaTPScript extends Quest conditional

Actor Property AriaRef  Auto  
ObjectReference Property K8RH_AriaTPMarker  Auto  
Actor Property Player  Auto  
Quest Property K8RHAriaFollower  Auto  
Faction Property CurrentFollowerFaction  Auto  

function MoveTPMarker(Float Angle)

	K8RH_AriaTPMarker.MoveTo(Player as objectreference, -250.000 * math.Sin(Angle), -250.000 * math.Cos(Angle), Player.GetHeight() + 5.0, true)
endFunction

function K8RH_AriaSilentTeleport()
	If AriaRef.IsInFaction(CurrentFollowerFaction)
		If Player.HasLOS(AriaRef as objectreference) == false
			Float PlayerAngle = Player.GetAngleZ()
			self.MoveTPMarker(PlayerAngle)
			Float theta  = 90.0
			while theta <= 360.0 && Player.HasLos(AriaRef) == true
				self.MoveTPMarker(PlayerAngle + theta)
				theta += 90.0
			endWhile
			AriaRef.MoveTo(K8RH_AriaTPMarker, 0.0, 0.0, 0.0, true)
			debug.trace("Aria successfully teleported", 0)
		endIf
	endIf
endFunction

Scriptname K8RH_AriaKinoNote4Branch extends ReferenceAlias

Quest Property myQuest  Auto  
SPELL Property SoT  Auto  
GlobalVariable Property Note4Read  Auto  

event onRead()
	;91 no SoT
	Note4Read.Value = 1
	if (Game.GetPlayer().HasSpell(SoT))
		myQuest.setStage(91)
	else
		myQuest.setStage(92)
	endIf
endEvent



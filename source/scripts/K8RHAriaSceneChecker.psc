Scriptname K8RHAriaSceneChecker extends Quest  

Scene Property SceneBacklog1 Auto
Scene Property SceneBacklog2 Auto
Scene Property SceneBacklog3 Auto

float updateTime = 1.5

Function StartCheck()
  RegisterForSingleUpdate(updateTime) ; Give us a single update in one second
EndFunction

Event OnUpdate()
	If K8RHAriaDoingScene.Value == 1
		RegisterForSingleUpdate(updateTime)
	Else
		RunScene()
	EndIf
EndEvent

Function LockScene()
	K8RHAriaDoingScene.Value = 1
	UpdateCurrentInstanceGlobal(K8RHAriaDoingScene)
	
EndFunction

Function UnlockScene()
	K8RHAriaDoingScene.Value = 0
	UpdateCurrentInstanceGlobal(K8RHAriaDoingScene)
EndFunction

Function RunScene()
	Scene holder
	if SceneBacklog3 != none && Scene3Overflow.Value == 1
		holder = SceneBacklog3
		;debug.Notification("Scene used from slot 3")
		SceneBacklog3 = none
		Scene3Overflow.Value = 0
		UpdateCurrentInstanceGlobal(Scene3Overflow)
	elseif SceneBacklog2 != none && Scene2Overflow.Value == 1
		holder = SceneBacklog2
		;debug.Notification("Scene used from slot 2")
		SceneBacklog2 = none
		Scene2Overflow.Value = 0
		UpdateCurrentInstanceGlobal(Scene2Overflow)
	elseif SceneBacklog1 != none && Scene1Overflow.Value == 1
		holder = SceneBacklog1
		;debug.Notification("Scene used from slot 1")
		SceneBacklog1 = none
		Scene1Overflow.Value = 0
		UpdateCurrentInstanceGlobal(Scene1Overflow)
	EndIf
	If holder != none
		holder.Start()
	EndIf
	if Scene1Overflow.Value != 0 || Scene2Overflow.Value != 0 || Scene3Overflow.Value != 0
		RegisterForSingleUpdate(updateTime)
	EndIf
EndFunction

Function SetScene(Scene inputScene)
	if Scene1Overflow.Value == 0
		SceneBacklog1 = inputScene
		;debug.Notification("Scene put into spot 1")
		Scene1Overflow.Value = 1
		UpdateCurrentInstanceGlobal(Scene1Overflow)
	elseif Scene2Overflow.Value == 0
		SceneBacklog2 = inputScene
		;debug.Notification("Scene put into spot 2")
		Scene2Overflow.Value = 1
		UpdateCurrentInstanceGlobal(Scene2Overflow)
	elseif Scene2Overflow.Value == 0
		SceneBacklog3 = inputScene
		;debug.Notification("Scene put into spot 3")
		Scene3Overflow.Value = 1
		UpdateCurrentInstanceGlobal(Scene3Overflow)
	EndIf
EndFunction

GlobalVariable Property K8RHAriaDoingScene  Auto

GlobalVariable Property Scene1Overflow  Auto  

GlobalVariable Property Scene2Overflow  Auto  

GlobalVariable Property Scene3Overflow  Auto  
;Error before might have been the lack of rescanning, might check to see if arrays work now
;possibly add some sort of priority system?
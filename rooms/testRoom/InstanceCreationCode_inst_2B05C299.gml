scene_info = [
	[PlayCutScene],
	[CutSceneWait, 1],
	[EnablePhysics],
	[CutSceneWait, 2],
	[MoveCameraToFollow, oGlowbieWithPhysics, 640, 320],
	[CutSceneWait, 2],
	[AddRealGlowbie],
	[MoveCameraToFollow, oGlowbie, 640, 320],
	[CutSceneWait, 7],
	[MoveCameraToFollow, oPlayer, 1920, 1080],
	[EndCutScene]
]
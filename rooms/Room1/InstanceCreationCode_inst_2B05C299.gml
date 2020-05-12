scene_info = [
	[PlayCutScene],
	[MoveCameraToFollow, oPlayer, 1920, 1080],
	[CutSceneWait, 1],
	[EnablePhysics],
	[CutSceneWait, 2],
	[AddRealGlowbie],
	[MoveCameraToFollow, oPlayer, 1024, 576],
	[CutSceneWait, 2],
	[ShowGlowbieExpression, "!", 1],
	[EndCutScene]
]
scene_info = [
	[PlayCutScene],
	[CutSceneWait, 1],
	[MoveCameraToFollow, oGlowbie, 1024, 576],
	[CutSceneWait, 2],
	[ShowGlowbieExpression, "!", 1],
	[ChangeEnergyProxObject, oGlowbie],
	[GlowbieChangeFollow, inst_4274B632, -200, -100],
	[CutSceneWait, 4],
	[ShowGlowbieExpression, "?", 1],
	[CutSceneWait, 3],
	[MoveCameraToFollow, oPlayer, 1024, 576],
	[EndCutScene]
]
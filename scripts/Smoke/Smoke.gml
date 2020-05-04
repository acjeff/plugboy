if (!smoke) {
	smoke = instance_create_layer(x, y, "NPCs", oSmoke);
	CutSceneEndAction();
}
else {
	var followX = x;
	var followY = y;
	var spriteHeightI = spriteHeight;
	with (smoke) {
		spriteHeight = spriteHeightI;
		x = followX;
		y = followY;
	}
}
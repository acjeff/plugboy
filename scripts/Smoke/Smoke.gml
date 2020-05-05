if (!smoke) {
	smoke = instance_create_layer(x, y, "Fire", oSmoke);
	CutSceneEndAction();
}
else {
	var followX = x;
	var followY = y;
	with (smoke) {
		x = followX;
		y = followY;
	}
}
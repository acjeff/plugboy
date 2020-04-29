var xOfNewGlowbie = 0;
var yOfNewGlowbie = 0;
with(oGlowbieWithPhysics) {
	xOfNewGlowbie = x;
	yOfNewGlowbie = y;
	instance_destroy();
}

instance_create_layer(xOfNewGlowbie, yOfNewGlowbie, "Glowbie", oGlowbie);
with (oGlowbie) {
	followDirectionX = 100;
	followDirectionY = -100;
	target = oPlayer;
	state = oGlowbieFollowState;
}

CutSceneEndAction();
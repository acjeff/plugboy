if (global.energy > 0 && life > 0) {
	if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
		if (point_distance(x, y, oPlayer.x, oPlayer.y) < 200) {
			global.energy -= 10;
			life -= 1;
		}
	}
}
if (life <= 0) {
	instance_destroy();
}
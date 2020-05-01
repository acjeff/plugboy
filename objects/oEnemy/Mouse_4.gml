if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
	if (point_distance(x, y, oPlayer.x, oPlayer.y) < 200) {
		throwEnergyBall = true;
		discharge = false;
	}
}
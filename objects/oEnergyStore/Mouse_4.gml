if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
	if (point_distance(x, y, oPlayer.x, oPlayer.y) < 200) {
		if (throwEnergyBallTimer == 100) {
			throwEnergyBall = true;
		}
	}
}
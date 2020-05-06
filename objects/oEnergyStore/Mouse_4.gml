if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
	if (point_distance(x, y, global.energyProxObj.x, global.energyProxObj.y) < 200) {
		if (throwEnergyBallTimer == 100) {
			throwEnergyBall = true;
		}
	}
}
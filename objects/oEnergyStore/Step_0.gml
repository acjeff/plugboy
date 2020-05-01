if (energy != "infinite" && energy < 0) energy = 0;
if (!dead) {
	if (discharge) {
		if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
			if (point_distance(x, y, oPlayer.x, oPlayer.y) < 200) {
				if (global.energy < global.totalEnergyCapacity) {
					show_debug_message("Send energy");
					if (energy == "infinite") {
						global.energy++;
					}
					else {
						if (energy > 0) {
							global.energy += 0.1;
							energy -= 0.1;
						}
					}
				}
			}
		}
	}

	if (beingAttacked) {	
		if (global.energy > 0 && life > 0) {
			if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
					if (point_distance(x, y, oPlayer.x, oPlayer.y) < 200) {
						global.energy -= 1;
						life -= 1;
					}
			}
		}
	}
	
	if (throwEnergyBallTimer > 0 && throwEnergyBall) {
		throwEnergyBallTimer--;
		if (global.energy > 0 && life > 0) {
			if (global.energy >= 5) {
				global.energy -= 5;
				life -= 5;
			}
			else {
				global.energy = 0;
				life -= global.energy;
			}
		}
	}
	if (throwEnergyBallTimer <= 0) {
		throwEnergyBall = false;
		throwEnergyBallTimer = room_speed / 2;
	}

	
	
	if (enemy) {
		lightColor = c_red;
	}
	else {
		lightColor = c_aqua;
	}
	if (energy == "infinite") {
		lightSize = 500;	
	}
	else {
		lightSize = (energy * 8) - 1;
	}
	
}


if (life <= 0) {
	dead = true;
}
if (energy != "infinite") {
	if (energy <= 0) {
		dead = true;
	}
}
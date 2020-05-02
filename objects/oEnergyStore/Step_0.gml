toPoint = global.energy <  34 ? 200 : global.energy * 6
if (life < 0) life = 0;
if (energy != "infinite" && energy < 0) energy = 0;
if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
	withinRange = point_distance(x, y, oPlayer.x, oPlayer.y) < toPoint;
	if (!dead) {
		if (discharge) {
				if (withinRange) {
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

		if (beingAttacked) {	
			if (global.energy > 0 && life > 0) {				
				if (withinRange) {
					global.energy -= 1;
					life -= 1;
				}
			}
		}
	
		if (throwEnergyBallTimer > 0 && throwEnergyBall) {
			throwEnergyBallTimer--;
			if (global.energy > 0 && life > 0) {
				if (global.energy >= 50) {
					global.energy -= 50;
					life -= 300;
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

	}
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
	lightSize = (((energy + life) /2) * 5);
}


if (life <= 0) {
	lightSize = 0;
	dead = true;
	instance_destroy();
}
if (energy != "infinite") {
	if (energy <= 0) {
		dead = true;
	}
}
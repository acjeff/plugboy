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

		if (withinRange) {
			var xVal = x;
			var yVal = y;
			var esEnergy = energy;
			var esDischarge = discharge;
			var esBeingAttatcked = beingAttacked;
			var esThrowEnergyBall = throwEnergyBall;
			var distance = point_distance(x, y, oGlowbie.x, oGlowbie.y);
					
			//ROPE LOGIC
			if (!rope) {
				rope = instance_create_layer(oGlowbie.x, oGlowbie.y, "Glowbie", oRope1);
				with (rope) {
					depth = -9999;
					for ( var i = 0; i <= knotNum; i++ )
						{
						    // position of knot
							ropeLen = distance;
						    knotX[i] = xVal;
						    knotY[i] = yVal+(knotDist*i*0.25);
						    // previous position
						    knotXprev[i] = knotX[i];
						    knotYprev[i] = knotY[i];
						}
				}
			}
			if (rope) {
				with (rope) {
			
					lineType = sLine;
					ropeLen = distance;
					x = oGlowbie.x;
					y = oGlowbie.y;
					knotX[knotNum] = xVal;
					knotY[knotNum] = yVal;	
					alpha = 0.5;
					
					
					if (esDischarge && esEnergy && global.energy < global.totalEnergyCapacity) {
						
						with (oGlowbie) {
							imageIndex = GlowbieGreen;
						}
			
						lineType = sLineCharging;
					}
					else if (esBeingAttatcked  && global.energy) {
						
						with (oGlowbie) {
							imageIndex = GlowbiePurple;
						}
			
						lineType = sLineAttack;
					}
				
					else if (esThrowEnergyBall && global.energy) {
						
						with (oGlowbie) {
							imageIndex = GlowbiePurple;
						}
			
						lineType = sLineAttackBolt;
					}
					
					
				}
			}

		}
		else {
			
			if (rope) {
				instance_destroy(rope)
				rope = false;
			};
		}
		//ROPE LOGIC

	}
	else {
		if (rope) {
				instance_destroy(rope)
				rope = false;
		};
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
}
if (energy != "infinite") {
	if (energy <= 0) {
		dead = true;
	}
}

depth = -10;
draw_self();
if (dead) {
	if (showDeath) RunNPCDeathScenes();
	image_alpha = 0.2;
}
else {
	if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
		if (withinRange) {
			if (!interactable && global.energy < global.totalEnergyCapacity) {
				with (oGlowbie) {
					draw_text(oGlowbie.x - 30, oGlowbie.y - 100, "Hold C to charge")
				}
			}
			if (interactable && (global.energy >= value)) {
				if (!clearEnemies) {
					with (oGlowbie) {
						draw_text(oGlowbie.x - 30, oGlowbie.y - 120, "Press E to interact")
					}
				}
				else if (clearEnemies && instance_number(oEnemy) == 0) {
					with (oGlowbie) {
						draw_text(oGlowbie.x - 30, oGlowbie.y - 120, "Press E to interact")
					}
				}
			}
			if (clearEnemies && instance_number(oEnemy) > 0) {
				with (oGlowbie) {
					draw_text(oGlowbie.x - 30, oGlowbie.y - 140, "Need to clear " + string(instance_number(oEnemy)) + " enemies");	
				}
			}
			if (interactable && (global.energy < value)) {
				var outOfString = string(global.energy) + "/" + string(value) + " more " + comparativeLabel;
				with (oGlowbie) {
					draw_text(oGlowbie.x - 30, oGlowbie.y - 120, "Need " + outOfString);
				}
			}
			if (enemy) {
				with (oGlowbie) {
					draw_text(oGlowbie.x - 30, oGlowbie.y - 160, "Hold F to attack")
				}
			}
			
		
			draw_set_alpha(lineAlpha);
			//draw_line_width_color(x, y, oGlowbie.x, oGlowbie.y, lineThickness, lineColor1, lineColor2);
		
			draw_set_alpha(1);
			
			//DRAW ROPE
			
			
			
			//DRAW ROPE
			
		}
	}
}

//draw_text(x - 30, y-100, "Scene: " + string(scene));
//draw_text(x - 30, y-120, "Scene info length: " + string(array_length_1d(scene_info)));

if (energy != "infinite") {
	draw_set_color(c_white);
	draw_text(x - 30, y-80, "Life: " + string(life));
	draw_text(x - 30, y-60, "Energy: " + string(energy));
	draw_set_color(c_white);
}

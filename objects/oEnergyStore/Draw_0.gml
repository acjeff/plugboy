draw_self();
if (dead) {
	image_alpha = 0.2;
}
else {
	if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
		if (withinRange) {
			if (!interactable && global.energy < 100) {
				draw_text(oGlowbie.x - 30, oGlowbie.y - 100, "Hold C to charge")
			}
			if (interactable && (global.energy >= value)) {
				if (!clearEnemies) {
					draw_text(oGlowbie.x - 30, oGlowbie.y - 120, "Press E to interact")
				}
				else if (clearEnemies && instance_number(oEnemy) == 0) {
					draw_text(oGlowbie.x - 30, oGlowbie.y - 120, "Press E to interact")
				}
			}
			if (clearEnemies && instance_number(oEnemy) > 0) {
				draw_text(oGlowbie.x - 30, oGlowbie.y - 140, "Need to clear " + string(instance_number(oEnemy)) + " enemies");	
			}
			if (interactable && (global.energy < value)) {
				draw_text(oGlowbie.x - 30, oGlowbie.y - 120, "Need " + string(value - global.energy) + " more " + comparativeLabel);
			}
			if (enemy) {
				draw_text(oGlowbie.x - 30, oGlowbie.y - 160, "Hold F to attack")
			}
			if (discharge && energy && global.energy < 100) {
				lineAlpha = 0.8;
				lineThickness = 4;
				lineColor1 = c_green;
				lineColor2 = c_blue;
			}
			else if (beingAttacked  && global.energy) {
				lineAlpha = 0.8;
				lineThickness = 4;
				lineColor1 = c_red;
				lineColor2 = c_orange;
			}
			else {
				lineAlpha = 0.3;
				lineThickness = 3;
				lineColor1 = c_white;
				lineColor2 = c_blue;
			}
			if (throwEnergyBall && global.energy) {
				lineAlpha = 0.8;
				lineThickness = 20;
				lineColor1 = c_red;
				lineColor2 = c_orange;
			}
		
			draw_set_alpha(lineAlpha);
			draw_line_width_color(x, y, oGlowbie.x, oGlowbie.y, lineThickness, lineColor1, lineColor2);
		
			draw_set_alpha(1);
		}
	}
}

if (energy != "infinite") {
	draw_set_color(c_red);
	draw_text(x - 30, y-80,  string(life));
	draw_set_color(c_green);
	draw_text(x - 30, y-60,  string(energy));
	draw_set_color(c_white);
}


if (dead) {
	image_alpha = 0.2;
}
else {
	if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
		if (point_distance(x, y, oPlayer.x, oPlayer.y) < 200) {
			
			if (discharge && energy) {
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
draw_self();

draw_set_color(c_red);
draw_text(x, y-35,  string(life));
draw_set_color(c_green);
draw_text(x, y-50,  string(energy));
draw_set_color(c_white);

draw_self();
if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
	if (point_distance(x, y, oPlayer.x, oPlayer.y) < 200) {
		if (discharge) {
			lineAlpha = 0.8;
			lineThickness = 4;
			lineColor1 = c_green;
			lineColor2 = c_blue;
		}
		else if (beingAttacked) {
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
		
		draw_set_alpha(lineAlpha);
		draw_line_width_color(x, y, oGlowbie.x, oGlowbie.y, lineThickness, lineColor1, lineColor2);
		
		draw_set_alpha(1);
	}
}

draw_text(x, y-30,  string(life));
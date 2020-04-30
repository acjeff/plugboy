draw_self();
if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
	if (point_distance(x, y, oPlayer.x, oPlayer.y) < 200) {
		if (discharge) {
			draw_set_alpha(0.8);
			draw_line_width_color(x, y, oGlowbie.x, oGlowbie.y, 3, $7aff6d, $7aff6d);
		}
		else {
			draw_set_alpha(0.3);
			draw_line_width_color(x, y, oGlowbie.x, oGlowbie.y, 2, c_white, c_white);	
		}
		draw_set_alpha(1);
	}
}
draw_self();
if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
	if (point_distance(x, y, oPlayer.x, oPlayer.y) < 200) {
		draw_line(x, y, oGlowbie.x, oGlowbie.y);
	}
}
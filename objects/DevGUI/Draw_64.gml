with(oPlayer) {
	if (touchingGround) {
		draw_text(50, 50, "Touching Ground");	
	}
	draw_text(50, 80, "Position: " + string(x) + " / " + string(y));
}
with(oPlayer) {
	if (touchingGround) {
		draw_text(50, 50, "Touching Ground");	
	}
	draw_text(50, 70, "Position: " + string(x) + " / " + string(y));
}

draw_text(50, 20, "PLUGGY DEV TEST ROOM");
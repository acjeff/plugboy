with (oPlayer) {
	draw_circle_color(leftDirX, leftDirY, 2, c_red, c_red, false);
	draw_circle_color(rightDirX, rightDirY, 2, c_green, c_green, false);
	draw_circle_color(jumpDirX, jumpDirY, 2, c_white, c_white, false);
	draw_set_colour(c_red);
	physics_draw_debug();
	draw_set_colour(c_white);
}
//Draw all empty life hearts
//draw_text(1700, 20, "Life: " + string(global.life));
//Draw empty energy balls
//draw_text(1700, 40, "Energy: " + string(global.energy));

//For loop over number of lives
//Draw life heart over empty ones

//For loop over number of energy
//Draw energy balls over empty ones


//if (global.lastCheckPointX && global.lastCheckPointY) {
//	draw_text(1700, 60, "CheckpointX: " + string(global.lastCheckPointX));
//	draw_text(1700, 80, "CheckpointY: " + string(global.lastCheckPointY));
//}


if (showDead) {
	draw_set_color($000000);
	draw_set_alpha(0.6);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_font(GameOverFont);
	draw_set_alpha(1);
	draw_set_color($ffffff);
	draw_text(600, 500, "Whoopsie");
	draw_set_font(StandardFont);
}
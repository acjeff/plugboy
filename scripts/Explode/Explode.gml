if (!explosionStarted) explosionStarted = 1;
else if (explosionStarted > 100) CutSceneEndAction();
else explosionStarted++;

draw_text(x - 100, y - 400, "IM DEAD BOI");

if (!explosionFluid) {
	explosionFluid = fd_rectangle_create(sprite_width, sprite_height);
	
	
	
	
}
else {
	
}
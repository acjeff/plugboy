if (global.paused) {
	global.paused = 0;
	physics_pause_enable(0);
	instance_destroy(global.pauseScreen);
}
else  {
	global.paused = true;
	physics_pause_enable(1);
	global.pauseScreen = instance_create_layer(0, 0, "GUI", oPauseScreen);
}
if (global.paused) {
	global.paused = 0;
	//instance_deactivate_all(0);
	physics_pause_enable(0);
	instance_destroy(oPauseScreen);
}
else  {
	global.paused = true;
	//instance_deactivate_all(1);
	physics_pause_enable(1);
	with (all) {
		image_speed = 0;
		image_index = image_number - 1;
	}
	instance_create_layer(0, 0, "GUI", oPauseScreen);
}
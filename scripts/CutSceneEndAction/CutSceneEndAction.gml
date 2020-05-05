if (scene <= array_length_1d(scene_info) - 1) {
	show_debug_message("Scene++");
	scene++;
}

if (scene > array_length_1d(scene_info) - 1 && !dontDestroy) {
	instance_destroy();
	if (explosionFluid) instance_destroy(explosionFluid);
	if (smoke) instance_destroy(smoke);
}

if (scene > array_length_1d(scene_info) - 1 && dontDestroy) {
	show_debug_message("Reset scenes");
	interacting = false;
	scene = 0;
}
if (scene <= array_length_1d(scene_info) - 1) scene++;

if (scene > array_length_1d(scene_info) - 1 && !dontDestroy) {
	instance_destroy();
	if (explosionFluid) {
		with(explosionFluid) {
			showFire = false;
		}
	}
	if (smoke) {
		with(smoke) {
			showFire = false;
		}
	}
}

if (scene > array_length_1d(scene_info) - 1 && dontDestroy) {
	show_debug_message("Reset scenes");
	interacting = false;
	scene = 0;
}
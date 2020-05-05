if (scene <= array_length_1d(scene_info) - 1) {
	scene++;
}

if (scene > array_length_1d(scene_info) - 1 && !dontDestroy) {
	instance_destroy();
	if (explosionFluid) instance_destroy(explosionFluid);
	if (smoke) instance_destroy(smoke);
}

if (scene > array_length_1d(scene_info) - 1 && dontDestroy) {
	interacting = false;
	scene = 0;
}
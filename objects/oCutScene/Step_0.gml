if (global.paused) exit;

/// @description Insert description here
// You can write your code in this editor
if (ShowCutScene) {
	var current_scene = scene_info[scene];

	var len = array_length_1d(current_scene) - 1;

	switch(len) {
		case 0: script_execute(current_scene[0]); break;
		case 1: script_execute(current_scene[0], current_scene[1]);  break;
		case 2: script_execute(current_scene[0], current_scene[1], current_scene[2]);  break;
		case 3: script_execute(current_scene[0], current_scene[1], current_scene[2], current_scene[3]);  break;
	}
}
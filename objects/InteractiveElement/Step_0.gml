/// @description Insert description here
// You can write your code in this editor
toPoint = global.energy <  34 ? 200 : global.energy * 6
if (life < 0) life = 0;
if (energy != "infinite" && energy < 0) energy = 0;
if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
	withinRange = point_distance(x, y, oPlayer.x, oPlayer.y) < toPoint;
}
if (interacting) {
	var current_scene = scene_info[scene];

	var len = array_length_1d(current_scene) - 1;

	switch(len) {
		case 0: script_execute(current_scene[0]); break;
		case 1: script_execute(current_scene[0], current_scene[1]);  break;
		case 2: script_execute(current_scene[0], current_scene[1], current_scene[2]);  break;
		case 3: script_execute(current_scene[0], current_scene[1], current_scene[2], current_scene[3]);  break;
	}
}
timer++;
if (timer >= argument0 * room_speed) {
	timer = 0;
	CutSceneEndAction();
}
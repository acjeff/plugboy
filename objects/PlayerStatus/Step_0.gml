if (global.energy < 0) global.energy = 0;
if (global.energy > 100) global.energy = 100;
if (global.life == 0) {
	showDead = true;
	with (oPlayer) {
		instance_destroy()
	}
	if (wait == 0) {
		instance_create_layer(global.lastCheckPointX, global.lastCheckPointY - 100, "Instances" ,oPlayer)
		global.life = 3;
		wait = room_speed * 3;
		showDead = false;
	}
	wait--;
}
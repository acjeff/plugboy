if (discharge) {
	if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
		if (point_distance(x, y, oPlayer.x, oPlayer.y) < 200) {
			if (global.energy < global.totalEnergyCapacity) {
				show_debug_message("Send energy");
				global.energy++;
			}
		}
	}
}
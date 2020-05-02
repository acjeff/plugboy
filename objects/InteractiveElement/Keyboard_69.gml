if (global.energy >= value) {
	if (withinRange) {
		if (clearEnemies) {
			if (instance_number(oEnemy) == 0) {
				interacting = true;
			}
		}
		else {
			interacting = true;
		}
	}
}
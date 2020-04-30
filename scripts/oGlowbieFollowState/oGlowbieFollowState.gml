if (instance_exists(target)) {
	if (target == oPlayer) {

		if (oPlayer.PlayerDirection == "left") {
				show_debug_message("left");
				followDirectionX = 100;
				followDirectionY = -100;
		}

		else if (oPlayer.PlayerDirection == "right") {
				show_debug_message("right");
				followDirectionX = -100;
				followDirectionY = -100;
		}

	}
	else {
		followDirectionX = 0;
		followDirectionY = 0;
	}

	targetX = target.x + followDirectionX;
	targetY = target.y + followDirectionY;
}

	// Update object position
	x += ((targetX + random_range(0, 20)) - x) / (random_range(15, 50));
	y += ((targetY + random_range(0, 20)) - y) / (random_range(15, 50));

	if (lightSize < 800) lightGrowShrink = random_range(1, 4);
	if (lightSize > 1000) lightGrowShrink = random_range(-1, -4);


	lightSize += lightGrowShrink;
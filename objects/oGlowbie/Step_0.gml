if (oPlayer.PlayerDirection == "left") {
	followDirectionX = 100;
	followDirectionY = -100;
}

else if (oPlayer.PlayerDirection == "right") {
	followDirectionX = -100;
	followDirectionY = -100;
}

targetX = oPlayer.x + followDirectionX;
targetY = oPlayer.y + followDirectionY;


// Update object position
x += ((targetX + random_range(0, 20)) - x) / (random_range(15, 50));
y += ((targetY + random_range(0, 20)) - y) / (random_range(15, 50));

if (lightSize < 150) lightGrowShrink = random_range(1, 4);
if (lightSize > 250) lightGrowShrink = random_range(-1, -4);


lightSize += lightGrowShrink;

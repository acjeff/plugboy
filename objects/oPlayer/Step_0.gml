phy_rotation = false;

touchingGround = place_meeting(x, y + 2, oSurface) || place_meeting(x, y + 2, oEnemy) || place_meeting(x, y + 2, oWall);

leftDirX = x-32;
leftDirY = y-32;
rightDirX = x+32;
rightDirY = y-32;
jumpDirX = x;
jumpDirY = y-64;

if ((touchingGround || Jumping) && !global.freezeMovement) {
	if (PlayerDirection == "left") {
		physics_apply_force(leftDirX, leftDirY, -150 - (global.energy / 3), 0);
	}
	if (PlayerDirection == "right") {
		physics_apply_force(rightDirX, rightDirY, 150 + (global.energy / 3), 0);
	}
	if (Jumping > 0) {
		var cancelForce = 0;
		if (PlayerDirection == "right") cancelForce = -100
		if (PlayerDirection == "left") cancelForce = 100
	
		show_debug_message(Jumping);
		physics_apply_force(jumpDirX, jumpDirY, cancelForce, -250 - (global.energy));
		Jumping -= 1;
	}
	if (Jumping == 0 && PlayerDirection == 0) {
		physics_apply_force(x, y-32, 0, 0);
	}
}

if (y > room_height) {
	global.life = 0;
}
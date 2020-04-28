//Update destination
show_debug_message(instance_exists(follow));
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x);
y += (yTo - y);

//Keep camera inside room
x = clamp(x, viewWidthHalf, room_width-viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height-viewHeightHalf);

//Screenshake

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);
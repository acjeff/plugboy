if (global.paused) exit;

//Update destination
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x) / cameraFollowSpeed;
y += (yTo - y) / cameraFollowSpeed;

cameraWidth += (cameraWidthTarget - camera_get_view_width(global.cam)) / cameraZoomSpeed;
cameraHeight += (cameraHeightTarget - camera_get_view_height(global.cam)) / cameraZoomSpeed;

camera_set_view_size(global.cam, cameraWidth, cameraHeight);

viewWidthHalf = camera_get_view_width(global.cam) * 0.5;
viewHeightHalf = camera_get_view_height(global.cam) * 0.5;

//Keep camera inside room
x = clamp(x, viewWidthHalf, room_width-viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height-viewHeightHalf);


//Screenshake

camera_set_view_pos(global.cam, x - viewWidthHalf, y - viewHeightHalf);
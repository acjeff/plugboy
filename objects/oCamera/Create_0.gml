/// @desc Set up camera
global.playingCutScene = false;
display_set_gui_size(1920, 1080);


global.cam = view_camera[0];
cameraFollowSpeed = 10;
cameraZoomSpeed = 10;
cameraWidth = camera_get_view_width(global.cam);
cameraHeight = camera_get_view_height(global.cam)

show_debug_message(string(cameraWidth));
show_debug_message(string(cameraHeight));

cameraWidthTarget = 1024;
cameraHeightTarget = 576;
follow = oPlayer;

xTo = xstart;
yTo = ystart;
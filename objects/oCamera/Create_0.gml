/// @desc Set up camera
global.playingCutScene = false;
display_set_gui_size(1920, 1080);

global.cam = view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(global.cam) * 0.5;
viewHeightHalf = camera_get_view_height(global.cam) * 0.5;
xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;
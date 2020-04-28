size = 500;
view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);
yAdjustedForCenter = y - (sprite_height / 2);
gpu_set_blendmode(bm_subtract);
surface_set_target(global.light);
draw_ellipse_color(x - size / 2 - view_x, yAdjustedForCenter - size / 2 - view_y, x + size / 2 - view_x, yAdjustedForCenter + size / 2 - view_y, c_orange, c_black, false);
surface_reset_target();
gpu_set_blendmode(bm_normal);
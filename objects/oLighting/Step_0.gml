view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])

surface_set_target(global.light);
draw_set_color(c_ltgray);
draw_rectangle(0, 0, view_w, view_h, false);
surface_reset_target();
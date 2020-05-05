// Updates the flsid dynamics with a simulation step.
fd_rectangle_update(fd_rectangle);

var x_relative = fd_rectangle_get_material_width(fd_rectangle) / 2;
var y_relative = fd_rectangle_get_material_height(fd_rectangle) / 2;
//var x_relative = x / world_width * fd_rectangle_get_material_width(fd_rectangle);
//var y_relative = y / world_height * fd_rectangle_get_material_height(fd_rectangle);

if (showFire) {
	fd_rectangle_replace_material(fd_rectangle, spr_fd_example_circle_gradient, 0, x_relative, y_relative, 1, 0.8, c_white,1);
fd_rectangle_add_velocity(fd_rectangle, spr_fd_example_circle_gradient, 0, x_relative, y_relative, 1.2, 1.2, 0, 0);
}
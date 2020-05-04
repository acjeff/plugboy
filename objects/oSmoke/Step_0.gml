// Updates the flsid dynamics with a simulation step.
fd_rectangle_update(fd_rectangle);

var x_relative = x / world_width * fd_rectangle_get_material_width(fd_rectangle);
var y_relative = (y - spriteHeight / 2) / world_height * fd_rectangle_get_material_height(fd_rectangle);

if (showFire) {
	fd_rectangle_add_material(fd_rectangle, spr_fd_example_circle_gradient, 0, x_relative, y_relative, .2, .2, c_white,0.3);
	fd_rectangle_add_velocity(fd_rectangle, spr_fd_example_circle_gradient, 0, x_relative, y_relative, .2, .2, 0, -5);
}
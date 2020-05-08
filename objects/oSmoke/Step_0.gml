if (!global.paused) {

	// Updates the flsid dynamics with a simulation step.
	fd_rectangle_update(fd_rectangle);

	var x_relative = fd_rectangle_get_material_width(fd_rectangle) / 2;
	var y_relative = fd_rectangle_get_material_height(fd_rectangle) / 2;


	fd_rectangle_replace_material(fd_rectangle, spr_fd_example_circle_gradient, 0, x_relative, y_relative, random_range(1, 0.7), random_range(0.3, 0.5), c_white,1);
	fd_rectangle_add_velocity(fd_rectangle, spr_fd_example_circle_gradient, 0, x_relative, y_relative, 1.2, 1.2, random_range(-2, 2), random_range(0, -5));
}
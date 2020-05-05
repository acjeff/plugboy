showFire = true;
xVel = 0;
world_width = 800;
world_height = 800;


fd_rectangle = fd_rectangle_create(256, 256);

        fd_rectangle_set_visualization_shader(fd_rectangle, FD_VISUALIZATION_SHADER.PIXEL_ART_FIERY_SMOKE);
        fd_rectangle_set_collision_mask_sprite(fd_rectangle, spr_fd_example_fluid_collision_mask_normal, 0);
        fd_rectangle_set_material_type(fd_rectangle, FD_MATERIAL_TYPE.A_16);
        fd_rectangle_set_velocity_time_step(fd_rectangle, 1);
        fd_rectangle_set_material_time_step(fd_rectangle, 1);
        fd_rectangle_set_material_dissipation_type(fd_rectangle, 1);
        fd_rectangle_set_material_dissipation_value(fd_rectangle, 0.002);
        fd_rectangle_set_velocity_dissipation_type(fd_rectangle, 1);
        fd_rectangle_set_velocity_dissipation_value(fd_rectangle, 0);
        fd_rectangle_set_velocity_maccormack_weight(fd_rectangle, 1);
        fd_rectangle_set_material_maccormack_weight(fd_rectangle, 0);
        fd_rectangle_set_pressure_iteration_type(fd_rectangle, -1);
        fd_rectangle_set_pressure_size(fd_rectangle, 256, 256);
        fd_rectangle_set_velocity_size(fd_rectangle, 256, 256);
        fd_rectangle_set_material_size(fd_rectangle, 256, 256);
        fd_rectangle_set_initial_value_pressure(fd_rectangle, 0.75);
        fd_rectangle_set_acceleration(fd_rectangle, 0, -0.3, 1, -0.2);
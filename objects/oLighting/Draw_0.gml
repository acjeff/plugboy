gpu_set_blendmode(bm_subtract);
draw_surface(global.light, view_x, view_y);
gpu_set_blendmode(bm_normal);
var size = 96;
gpu_set_blendmode(bm_subtract);
surface_set_target(global.light_surface);

    gpu_set_blendmode(bm_subtract);
	draw_ellipse_color(x-size/2,y-size/2,x+size/2,y+size/2,col,c_black,false);
	
surface_reset_target();
gpu_set_blendmode(bm_normal);
if (surface_exists(global.light_surface))
{
	surface_set_target(global.light_surface);
	// The following three lines set the 'dark' overlay
    draw_set_color(c_gray);
    draw_set_alpha(1);
    draw_rectangle(0, 0, 1024,1024, 0);
    draw_set_color(c_white);
	// Reset all of your draw stuff
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
    surface_reset_target();
} else {
    // Again, surfaces can be a pain
    // Create a new one if there were issues
    global.light_surface = surface_create(1024, 1024);
    surface_set_target(global.light_surface);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}
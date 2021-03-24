// Draw the surface or create a new one
// Be sure to use views, even if it isn't necessary for your game
// This trick bypasses an issue with resizing the game window
// DX requires that surfaces be destroyed when resizing
if (!surface_exists(global.light_surface)) {
    global.light_surface = surface_create(1024, 1024);
} else {
    if (view_current == 0) {
		gpu_set_blendmode(bm_subtract);
        draw_surface(global.light_surface, 0, 0);
		gpu_set_blendmode(bm_normal);
    }
}
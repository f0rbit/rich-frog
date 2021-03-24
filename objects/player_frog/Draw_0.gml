image_index = leaping;
if (powered) {
	sprite_index = sprite_frog_powered;
	draw_set_colour(make_colour_rgb(113,64,158));
	var near_coin = instance_nearest(x,y,obj_coin);
	draw_line(x,y,near_coin.x,near_coin.y);
	draw_set_colour(c_white);
} else { 
	sprite_index = sprite_frog;
}
draw_self();
draw_sprite_ext(sprite_frog_overlay,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
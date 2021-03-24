/// @description draw button
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(font_gui);
draw_text(x,y,string(txt));


if (txt == "ADVENTURE" and !global.adventure_unlocked) { 
	if (instance_position(mouse_x,mouse_y,id)) {
		var display_txt = "You need to get a timed\nhighscore of above 35 to\nunlock this mode.";
		draw_set_font(font_gui);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		var yy = y+16+string_height(display_txt);
		draw_set_colour(c_dkgray);
		draw_rectangle(x-(string_width(display_txt)/2)-4,yy-(string_height(display_txt)/2)-4,x+(string_width(display_txt)/2)+4,yy+(string_height(display_txt)/2)+4,false);
		draw_set_colour(c_white);
		draw_text(x,yy,string(display_txt));
	}
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);
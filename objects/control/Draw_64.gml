display_set_gui_size(1152,768);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (room == room_pond_timed and !global.end_game) {
	draw_set_font(font_gui);
	draw_text(1152/2+80,20,"TIME LEFT");
	draw_set_font(font_time);
	draw_text(1152/2+80,48,string(round(end_time - current_time*0.001)));


	draw_set_font(font_gui);
	draw_text(1152/2-80,20,"SCORE");
	draw_set_font(font_time);
	draw_text(1152/2-80,48,string(global.points));

	if (keyboard_check(vk_control)) {
	draw_set_font(font_gui_small);
	draw_text(1152/2-120,70,"COMBO");
	draw_set_font(font_text);
	draw_text(1152/2-120,85,string(global.combo));
	}
	
	draw_set_font(font_text);
	draw_text(1152/2,76,"HIGH SCORE");
	draw_set_font(font_time);
	draw_text(1152/2,106,string(global.highscore));


} else if (room == room_pond_adventure and !global.end_game) {
	draw_set_font(font_gui);
	draw_text(1152/2,20,"SECONDS ALIVE");
	draw_set_font(font_time);
	seconds_alive = round(current_time*0.001 - time_start);
	draw_text(1152/2,48,string(seconds_alive));

	if (keyboard_check(vk_control)) {
	draw_set_font(font_gui_small);
	draw_text(1152/2,72,"COMBO");
	draw_set_font(font_gui);
	draw_text(1152/2,86,string(global.combo));
	}
}
if (room == room_menu) {
		
	draw_set_font(font_gui);
	draw_text(1152/2,20,"TIMED HIGHSCORE");
	draw_set_font(font_time);
	draw_text(1152/2,50,string(global.highscore));
	
	if (global.adventure_unlocked) {
			
		draw_set_font(font_gui);
		draw_text(1152/2,50+30,"ADVENTURE HIGHSCORE");
		draw_set_font(font_time);
		draw_text(1152/2,50+60,string(global.adventure_highscore));
	}
	
	
	
	if (DRAW_URL) {
		var red = wave(219,105,10,105);
		var green = 105;
		var blue = 219;
		draw_set_font(font_gui);
		draw_set_halign(fa_right);
		draw_set_valign(fa_bottom);
		draw_set_colour(make_color_rgb(red,green,blue));
		draw_text(1152-8,768-8,"forbit.dev");
		draw_line(1152-8,768-8,1152-string_width("forbit.dev")-8,768-8);
		draw_set_colour(c_white);
		if (point_in_rectangle(mouse_x,mouse_y,1152-string_width("forbit.dev")-8,768-string_height("forbit.dev")-8,1152,768)) {
			if (mouse_check_button_pressed(mb_left)) {
				url_open("https://forbit.dev");
			}
		}
	}
}


	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
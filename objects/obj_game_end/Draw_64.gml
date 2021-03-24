if (global.end_game == true) {
	draw_set_alpha(.66);
	draw_set_colour(c_black);
	draw_rectangle(-1,-1,1153,769,false);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);	
	
	
	if (room == room_pond_timed) { 
		draw_set_font(font_time);
		draw_text(1152/2,768/2-24,"SCORE");
		draw_set_font(font_gui_big);
		draw_text(1152/2,768/2+24,string(global.points));
	

		if (global.new_highscore) {
			draw_set_font(font_gui_big);
			draw_text(1152/2,128,"NEW HIGHSCORE!");
		}
	} else if (room == room_pond_adventure) {
		draw_set_font(font_gui);
		draw_text(1152/2,64,string(txt));
		var scale = 2+((sprite_index == sprite_snake_head)*3)
		draw_sprite_ext(sprite_index,image_index,1152/2,64+48,scale,scale,0,c_white,1);
		
		draw_set_font(font_time);
		draw_text(1152/2,768/2-24,"SECONDS ALIVE");
		draw_set_font(font_gui_big);
		draw_text(1152/2,768/2+24,string(global.seconds_lived));
		
		
		if (global.new_highscore) {
			draw_set_font(font_gui_big);
			draw_text(1152/2,128+64,"NEW HIGHSCORE!");
		}
		
	}
	
	draw_set_font(font_gui_small);
	draw_text(1152/2,4*(768/5)-16,"RESTARTING IN");
	draw_set_font(font_gui);
	draw_text(1152/2,4*(768/5)+16,string(alarm[0] div 60));
	
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);	
	
}
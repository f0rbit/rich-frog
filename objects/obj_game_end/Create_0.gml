alarm[0] = room_speed*5;
image_speed = 0;

txt = "";
if (room == room_pond_adventure) {
	alarm[0] = room_speed*6;
	global.seconds_lived = control.seconds_alive;	
	// highscore check
	if (global.seconds_lived > global.adventure_highscore) {
		global.adventure_highscore = global.seconds_lived;
		global.new_highscore = true;
		save_highscore();
	}
}

if (place_meeting(x,y,player_frog)) {
	// collect coin
	var txt = instance_create_depth(x,y,0,text);
	txt.txt = global.combo;
	if (room == room_pond_timed) {
		global.points += global.combo;
	} else if (room == room_pond_adventure) {
		control.time_start -= global.combo;
	}
		global.combo++;
	instance_destroy();
	
	audio_play_sound(asset_get_index("coin"+string(min(global.combo,7))),10,false);
}

if (owner_lily > noone and instance_exists(owner_lily)) {
	x = owner_lily.x;
	y = owner_lily.y;
}
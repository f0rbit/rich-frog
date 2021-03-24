if (place_meeting(x,y,player_frog)) {
	// collect turnip
	player_frog.powered = true;
	player_frog.alarm[0] = room_speed*5;
	var txt = instance_create_depth(x,y,0,text);
	txt.txt = global.combo*10;
	if (room == room_pond_timed) {
		global.points += global.combo*10;
	} else if (room == room_pond_adventure) {
		control.time_start -= global.combo*10;
	}
		global.combo++;
	instance_destroy();
	
	audio_play_sound(asset_get_index("coin"+string(min(global.combo,7))),10,false);
}

if (owner_lily > noone and instance_exists(owner_lily)) {
	x = owner_lily.x;
	y = owner_lily.y;
}
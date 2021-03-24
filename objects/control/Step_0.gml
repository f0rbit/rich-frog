// STEP EVENT OF THE PLAYER OR SOME CONTROLLER OBJECT
var _cam_x = camera.x;
var _cam_y = camera.y;
layer_x("Background", _cam_x/2); // Change the background layer name to whatever you use in the room editor
layer_y("Background", _cam_y/2);   // Change the 0.25 and 0.5 values to change the speed of the effect


global.adventure_unlocked = (global.highscore >= 35);

if (room == room_pond_timed or room == room_pond_adventure) {
	while (instance_number(obj_firefly) < 65) {
		var inst = instance_create_layer(random_range(64,room_width-64),random_range(64,room_height-64),"fireflies",obj_firefly);	
	}
	
	if (!audio_is_playing(snd_water)) {
		audio_play_sound(snd_water,0,true);
	}
} else {
	end_time += 1;	
}

if (room == room_pond_timed) {
	if (round(end_time - current_time*0.001) <= 0) {
		if (global.end_game == false) {
			// end game
			if (global.points > global.highscore) {
				global.highscore = global.points;
				global.new_highscore = true;
				save_highscore();
			}
			if (!instance_exists(obj_game_end)) {
				instance_create_depth(camera.x,camera.y,-1,obj_game_end);
			}
			global.end_game = true;
		}
	}
}
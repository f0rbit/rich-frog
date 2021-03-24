if (place_meeting(x,y,player_frog)) {
	if (player_frog.turniped == false and global.end_game == false) {
		if (!instance_exists(obj_game_end)) {
			var inst = instance_create_depth(camera.x,camera.y,-1,obj_game_end);
			inst.txt = "YOU WERE EATEN BY THE SNAKE!"
			inst.sprite_index = sprite_index;
		}
		global.end_game = true;	
		audio_play_sound(snd_bite,11,false);
	}
}
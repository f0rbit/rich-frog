if (global.end_game) {
	speed = 0;
	hspeed = 0;
	vspeed = 0;
	direction = 0;
	exit;
}

if (lily_dest != noone) {
	// leap
	if (point_distance(x,y,lily_dest.x,lily_dest.y) > speed) {
		leaping = true;
		speed = 5 + (powered*2);
		move_towards_point(lily_dest.x,lily_dest.y,speed);
		image_angle = direction-90;
	} else {
		speed = 0;
		lily_dest = noone;
		leaping = false;
	}
}
// leave
if (leaping and leap_prev == false) {
	var ripple_inst = instance_create_depth(x,y,101,ripple);	
	ripple_inst.radius = 12;
	ripple_inst.alpha -= 0.01;
	var lily = instance_nearest(x,y,obj_lily);
	lily.image_xscale += .1;
	lily.image_yscale += .1;
	lily_land = noone;
	lily.coined = false;
	lily.powered = false;
} 
// land
if (!leaping and leap_prev == true) {
	
	var ripple_inst = instance_create_depth(x,y,101,ripple);	
	ripple_inst.radius = 16;
	var lily = instance_nearest(x,y,obj_lily);
	lily.image_xscale -= .1;
	lily.image_yscale -= .1;
	lily_land = lily;
	if (lily.coined == false and lily.powered == false) global.combo = 1;
	audio_play_sound(snd_splash,2,false);
	
	if (!powered and lily_land.type == ADVENTURE_LILLIES.ALLIGATOR) {
		if (global.end_game == false) {
			if (!instance_exists(obj_game_end)) {
				
				var inst = instance_create_depth(camera.x,camera.y,-1,obj_game_end);
				inst.txt = "YOU WERE EATEN BY AN ALLIGATOR!"
				inst.sprite_index = sprite_lily;
				inst.image_index = 1;
			}
			global.end_game = true;
			audio_play_sound(snd_bite,11,false);
		}
	}
}

if (powered and powered_prev == false) {
	alarm[0] = room_speed*5;	
}

if (room == room_pond_adventure and lily_land > noone and instance_exists(lily_land)) {
	x = lily_land.x;
	y = lily_land.y;
	if (lily_land.type == ADVENTURE_LILLIES.MOVING) {
		image_angle = lily_land.direction-90;
	}
}
if (room == room_pond_adventure and instance_exists(obj_snake)) {
	in_range_of_snake = (point_distance(x,y,obj_snake.x,obj_snake.y) < 64) 

	if (in_range_of_snake and snake_range_prev == false) {
		if (!audio_is_playing(snd_hiss)) {
			audio_play_sound(snd_hiss,9,false);	
		}
	}
}
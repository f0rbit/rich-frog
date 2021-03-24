if (mouse_check_button_pressed(mb_any)) {
	if (instance_position(mouse_x,mouse_y,id)) {
		show_debug_message("collision");
		// leap
		if (instance_exists(player_frog)) {
			leap(id);	
		}
	}
}

if (instance_position(mouse_x,mouse_y,id)) {
	if (room == room_pond_adventure and type == ADVENTURE_LILLIES.ALLIGATOR) {
		image_blend = c_maroon;	
	} else {
		image_blend = c_gray;
	}
} else {
	image_blend = c_white;	
}

if (room == room_pond_timed or (room == room_pond_adventure and type != ADVENTURE_LILLIES.ALLIGATOR)) {
	if (distance_to_object(player_frog) > 100) {
		if ((room == room_pond_timed and instance_number(obj_coin) < 10) or (room == room_pond_adventure and instance_number(obj_coin) < 17)) { 
			if (irandom(instance_number(obj_lily)) == 0 and coined == false and powered == false) {
				var inst = instance_create_depth(x,y,0,obj_coin);	
				coined = true;
				inst.owner_lily = id;
			}
		}
		if (control.seconds_alive > 45) { // spawn powerups after 45 seconds
			if (instance_number(obj_power) < 1) {
				if (irandom(instance_number(obj_lily)) == 0 and powered == false and coined == false) {
					var inst = instance_create_depth(x,y,0,obj_power);
					powered = true;
					inst.owner_lily = id;
				}
			}	
		}
	}
}

image_xscale = lerp(image_xscale,org_xscale,0.01);
image_yscale = lerp(image_yscale,org_yscale,0.01);

if (global.end_game == false) {
	if (room == room_pond_timed) {
		image_angle += .01*rotate; 
	} else if (room == room_pond_adventure) {
		image_angle += .04*rotate;	
	}

	if (type == ADVENTURE_LILLIES.ALLIGATOR) {
		image_index = 1;	
	} else { image_index = 0; }

	if (type == ADVENTURE_LILLIES.MOVING) {
		direction += dir_change;
		image_angle = direction;
	}
} else {
	speed = 0;	
}
if (global.end_game == true) {
	speed = 0;
	exit;
}
direction = point_direction(x,y,player_frog.x,player_frog.y);
speed = min(1.7,sqrt(control.seconds_alive/50));
image_angle = direction;

var inst = instance_create_depth(x,y,depth+1,obj_snake_tail);
inst.image_angle = image_angle;

if (place_meeting(x,y,player_frog)) {
	if (alarm[0] == -1) {
		alarm[0] = room_speed/3;
	}	
}
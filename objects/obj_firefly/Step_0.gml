if (global.end_game) {
	speed = 0;
	direction = 0;
	image_speed = 0;
	exit;
}
// stop for a second before going in a new direction
if (alarm[0] < room_speed) {
	speed = 0;	
	image_speed = 0;
} else {
	speed = spd;
	image_speed = 1;
}

image_angle = direction-90;


// correct self
if (x < 0 or x > room_width) direction = point_direction(x,y,room_width/2,room_height/2);
if (y < 0 or y > room_height) direction = point_direction(x,y,room_width/2,room_height/2);

if (place_meeting(x,y,player_frog) and player_frog.leaping) {
	instance_destroy();	
	if (room == room_pond_timed) {
		control.end_time += .25;
	}
}
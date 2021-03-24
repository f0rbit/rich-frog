if (room == room_pond_timed) {
	var num = random(instance_number(obj_lily)-1);
	var lily = instance_find(obj_lily,num);
	if (lily > noone and instance_exists(lily)) {
		x = lily.x;
		y = lily.y;
	} else {
		event_perform(ev_room_start,0);	
	}
}
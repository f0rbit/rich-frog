image_angle = irandom(360);
image_speed = 0;
image_index = 0;
speed = 0;
org_xscale = random_range(0.8,1.2);
org_yscale = org_xscale;
rotate = irandom(1);
if (rotate == 0) rotate = -1;
type = ADVENTURE_LILLIES.NORMAL;
coined = false;
powered = false;

if (room == room_pond_adventure) {
	// set type
	var value = irandom(100);
	if (value <= 70) {	// 7 in 10
		type = ADVENTURE_LILLIES.NORMAL;
	} else if (value > 70 and value <= 85) { // 15 in 100
		type = ADVENTURE_LILLIES.MOVING;
	} else if (value > 85 and value <= 100) { // 15 in 100
		type = ADVENTURE_LILLIES.ALLIGATOR;
	}
	
	if (type = ADVENTURE_LILLIES.MOVING) {
		speed = random_range(.3,.5);	
		dir_change = random_range(.8,1.2);
	}
}
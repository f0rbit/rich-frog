if (txt == "ADVENTURE") {
	if (!global.adventure_unlocked) {
		image_blend = c_dkgray;
		exit;
	}
}

if (instance_position(mouse_x,mouse_y,id)) {
	if (mouse_check_button_released(mb_any)) {
		button_action(txt);	
	}
	image_blend = c_gray;
} else {
	image_blend = c_ltgray;	
}
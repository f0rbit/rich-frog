/// @param string
function button_action(argument0) {
	switch (argument0) {
		case "TIMED PLAY":
			room_goto(room_pond_timed);
			return true;
			break;
		case "ADVENTURE":
			room_goto(room_pond_adventure);
			return true;
			break;
		default:
			return false;
			break;
	}	


}

/// @param id
function leap(argument0) {
	if (instance_exists(player_frog)) {
		if (player_frog.leaping == false) {
			player_frog.lily_dest = argument0;
			show_debug_message("leaping to: "+object_get_name(argument0.object_index));
			return true;
		} 
	}
	return false;


}

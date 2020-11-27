function break_action(argument0) {
	var useless = argument0;

	if(weapon == other.fired_from){
		instance_destroy();
		show_debug_message(useless);
	}


}

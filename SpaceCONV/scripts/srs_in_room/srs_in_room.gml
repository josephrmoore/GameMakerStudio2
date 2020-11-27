function srs_in_room(argument0) {
	var srs = argument0;

	var justroom = string_copy(srs, 0, string_length(srs)-2);

	if(room_get_name(room) == justroom){
		return true;
	} else {
		return false;
	}


}

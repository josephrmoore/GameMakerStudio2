function multiple_rooms(argument0) {
	if(string_pos("mountains", argument0) > 0){
		return "mountains";
	}
	if(string_pos("valley", argument0) > 0){
		return "valley";
	}

	return argument0;


}

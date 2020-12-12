function get_room_from_save(argument0) {
	var num = argument0;
	var save_file = "save" + string(num) + ".sav";

	var obj = instance_find(oSaveSlot,num);

	if(file_exists(save_file)){
		var save_data = LoadJsonFromFile(save_file);	
		obj.current_room = ds_map_find_value(save_data, "room");	
		obj.has_save_data = true;
	}


}

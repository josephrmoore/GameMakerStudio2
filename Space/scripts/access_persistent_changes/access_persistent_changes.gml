var action = argument0;

if(action == "get"){
	if(ds_map_find_value(persistent_changes, "boss1") == "dead"){
		// remove boss 1
	}
	if(ds_map_find_value(persistent_changes, "boss2") == "dead"){
		// remove boss 2
	}
	if(ds_map_find_value(persistent_changes, "boss3") == "dead"){
		// remove boss 3
	}
} else if (action == "set"){
	//ds_map_set(persistent_changes,"hp",oPlayer.hp);
} else if (action == "create"){
	//ds_map_add(persistent_changes,"hp",oPlayer.hp);
}
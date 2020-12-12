function console() {
	var n = argument[0];

	show_debug_message("********************************");
	if (argument_count > 1){
	    var label = argument[1];
		show_debug_message(label);
	}
	if(is_array(n)){
		show_debug_message("***array***");
		for(var i=0; i<array_length_1d(n); i++){
			show_debug_message("*****");
			show_debug_message(string("index: " + string(i)));
			show_debug_message(string("value: " + string(n[i])));
			show_debug_message("=====");
		}
	} else if (ds_exists(n, ds_type_map)){
		// iterate through map
		show_debug_message("***ds_map***");
		for (var k = ds_map_find_first(n); !is_undefined(k); k = ds_map_find_next(n, k)) {
			var v = n[? k];
			/* Use k, v here */
			show_debug_message("*****");
			show_debug_message(string("key: " + string(k)));
			show_debug_message(string("value: " + string(v)));
			show_debug_message("=====");
		}
	} else if (ds_exists(n, ds_type_list)){
		// iterate through list
		show_debug_message("***ds_list***");
		for(var i=0; i<ds_list_size(n); i++){
			show_debug_message("*****");
			show_debug_message(string("index: " + string(i)));
			show_debug_message(string("value: " + string(ds_list_find_value(n, i))));
			show_debug_message("=====");
		}
	} else if (ds_type_grid){
		// iterate through grid
		show_debug_message("***ds_grid***");
		for(var j=0; j<ds_grid_height(n); j++){
			for(var i=0; i<ds_grid_width(n); i++){
				show_debug_message("*****");
				show_debug_message(string("index: (" + string(i) + "," + string(j) + ")"));
				show_debug_message(string("value: " + string(ds_grid_get(n, i, j))));
				show_debug_message("=====");
			}
		}
	} else {
		if(is_bool(n)){
			show_debug_message("***boolean***");
		} else if (is_string(n)){
			show_debug_message("***string***");
		} else if (is_int32(n) || is_int64(n)){
			show_debug_message("***int***");
		} else if (is_real(n)){
			show_debug_message("***real***");
		}
		show_debug_message(string("value: " + string(n)));
	}
	show_debug_message("=================================");


}

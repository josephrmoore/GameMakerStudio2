var list = argument0;
var obj = argument1;

for(var i=0; i<ds_list_size(list); i++){
	if(srs_in_room(ds_list_find_value(list,i))){
		for(var j=0; j<instance_number(obj); j++){
			var inst = instance_find(obj, j);
			if(srs_in_room(get_srs_obj(inst))){
				inst.collected = true;
			}
		}
	}
}
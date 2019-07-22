var obj = argument0;
var script_name = argument1;
var subarg1 = argument2;

var dslist = ds_list_create();
var hits = instance_place_list(x,y,obj,dslist,false);
	for(var i=0; i<hits; i++){
		var hitID = dslist[| i]; // ds_list_find_value(hitByAttackNow, i) ALT version for shorthand
		with (hitID){
			script_execute(script_name, subarg1);
			show_debug_message(hitID.enemy_state)
		}
	}
ds_list_destroy(dslist);
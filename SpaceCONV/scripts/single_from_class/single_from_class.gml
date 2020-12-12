function single_from_class() {
	var obj = argument[0];
	var script_name = argument[1];
	var subarg1 = argument[2];
	var extrax = 0;
	var extray = 0;

	if(argument_count==5){
		extrax = argument[3];
		extray = argument[4];
	}

	var dslist = ds_list_create();
	var hits = instance_place_list(x+extrax,y+extray,obj,dslist,false);
		for(var i=0; i<hits; i++){
			var hitID = dslist[| i]; // ds_list_find_value(hitByAttackNow, i) ALT version for shorthand
			with (hitID){
				script_execute(script_name, subarg1);
			}
		}
	ds_list_destroy(dslist);


}

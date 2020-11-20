// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function delete_cannon(argument0){
	for(var i=0; i<argument0; i++){
		var thiscannon = instance_find(oCannon,0);
		if(thiscannon != noone){
			instance_destroy(thiscannon);
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function grow_money(){
	var max_money = 0;
	if(tree_state == TREESTATE.BABY){
		max_money = 2;
	} else if (tree_state == TREESTATE.SAPLING){
		max_money = 6;
	} else if (tree_state == TREESTATE.ADULT){
		max_money = 12
	}
	
//	instance_create_layer(bbox_right+8, y, "Instances", oMoney);
//	instance_create_layer(bbox_left-8, y, "Instances", oMoney);
}
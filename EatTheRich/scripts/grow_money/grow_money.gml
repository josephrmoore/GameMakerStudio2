// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function grow_money(argument0){
	var tree = argument0;
	switch(tree){
		case TREESTATE.BABY:
			max_money = 2;
			instance_create_layer(bbox_right+8, y, "Instances", oMoney);
			instance_create_layer(bbox_left-8, y, "Instances", oMoney);
			break;
		case TREESTATE.SAPLING:
			max_money = 6;
			instance_create_layer(bbox_right+8, y-12, "Instances", oMoney);
			instance_create_layer(bbox_left-8, y-12, "Instances", oMoney);
			instance_create_layer(bbox_right+8, y+12, "Instances", oMoney);
			instance_create_layer(bbox_left-8, y+12, "Instances", oMoney);
			instance_create_layer(bbox_right+8, y, "Instances", oMoney);
			instance_create_layer(bbox_left-8, y, "Instances", oMoney);
			break;
		case TREESTATE.ADULT:
			max_money = 12;
			instance_create_layer(bbox_right+8, y-16, "Instances", oMoney);
			instance_create_layer(bbox_left-8, y-16, "Instances", oMoney);
			instance_create_layer(bbox_right+8, y-12, "Instances", oMoney);
			instance_create_layer(bbox_left-8, y-12, "Instances", oMoney);
			instance_create_layer(bbox_right+8, y-8, "Instances", oMoney);
			instance_create_layer(bbox_left-8, y-8, "Instances", oMoney);
			instance_create_layer(bbox_right+8, y, "Instances", oMoney);
			instance_create_layer(bbox_left-8, y, "Instances", oMoney);
			instance_create_layer(bbox_right+8, y+8, "Instances", oMoney);
			instance_create_layer(bbox_left-8, y+8, "Instances", oMoney);
			instance_create_layer(bbox_right+8, y+12, "Instances", oMoney);
			instance_create_layer(bbox_left-8, y+12, "Instances", oMoney);
			break;
	}
	
	
	
	
	

	
	

	

}
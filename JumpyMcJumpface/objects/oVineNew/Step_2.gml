/// @description Insert description here
// You can write your code in this editor
swing_physics();
var myanchor = instance_place(x,y,oVineAnchor);
if(myanchor != noone){
	anchor_id = instance_id_get(myanchor);
}

var anchor_inst = instance_find(oVineAnchor,anchor_id);
show_debug_message(anchor_inst);
//anchor_inst.x = anchor_x;
//anchor_inst.y = anchor_y;
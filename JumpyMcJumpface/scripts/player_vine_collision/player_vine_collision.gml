var obj = argument0;

// Horizontal object collision
if (place_meeting(x+hsp,y+vsp,obj)) {
	//show_debug_message("vine collision script");
	var inst = instance_place(x+hsp,y+vsp,oVineNew);
	if(inst != noone){
		ropeX = inst.x;
		ropeY = inst.y;
		show_debug_message(string(inst.x) + ", " + string(inst.y));
		ropeAngle = point_direction(ropeX,ropeY,x,y);
	}
}
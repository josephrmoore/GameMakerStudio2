function player_vine_collision(argument0) {
	var obj = argument0;

	// Horizontal object collision
	if (place_meeting(x+hsp,y+vsp,obj)) {
		//show_debug_message("vine collision script");
		var inst = instance_place(x+hsp,y+vsp,oVineNew);
		if(inst != noone){
			ropeX = inst.x;
			ropeY = inst.y;
			show_debug_message(string(inst.x) + ", " + string(inst.y));
	//		if(hsp>0){
	////			ropeAngle = 180;
	//			ropeAngle = point_direction(ropeX,ropeY,ropeX-105,ropeY+60);
	//		} else {
	////			ropeAngle = 0;
	//			ropeAngle = point_direction(ropeX,ropeY,ropeX+105,ropeY+60);
	//		}
			ropeAngle = point_direction(ropeX,ropeY,x,y);
		}
	}


}

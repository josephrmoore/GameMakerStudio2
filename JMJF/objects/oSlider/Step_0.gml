/// @description Insert description here
// You can write your code in this editor



if(dir == 1){
	//slide down
	oBackground.y = approach(oBackground.y, -360, 48);
	oMenu.y = approach(oMenu.y, (128-360), 48);
	oLevel1.y = approach(oLevel1.y, 0, 48);
	
	var layer_id = layer_get_id("Sequence");
	var layy = layer_get_y(layer_id);
//	show_debug_message(layy);
	layer_y(layer_id, approach(layy, -360, 48));
	
	// move sequence if possible?
	if(oLevel1.y == 0){
		dir = 0;
		room_goto(levelsMenu);
	}
} else if (dir == -1){
	// slide up
	
}
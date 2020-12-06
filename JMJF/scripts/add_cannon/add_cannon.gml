// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_cannon(argument0, argument1) {
	for(var i=0; i<argument0; i++){
		var thisaxis = argument1;

		var startx = 24;
		var starty = 24;
		var endx = 520;
		var endy = 296;


	if(thisaxis){
		// vertical
		var thisx = 8;
		var thisy = round(random_range(starty, endy));
		with(instance_create_layer(thisx,thisy,"Cannons",oCannon)){
			axis = 1;
		}
	} else {
		// horizontal
		var thisy = 8;
		var thisx = round(random_range(startx, endx));
		with(instance_create_layer(thisx,thisy,"Cannons",oCannon)){
			axis = 0;
			image_angle = 270;
		}
	}

	}
}
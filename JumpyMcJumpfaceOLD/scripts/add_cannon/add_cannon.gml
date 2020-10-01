function add_cannon(argument0) {
	var thisaxis = argument0;

	var startx = 100;
	var starty = 100;
	var endx = 1420;
	var endy = 980;


	if(thisaxis){
		// vertical
		var thisx = 32;
		var thisy = round(random_range(starty, endy));
		with(instance_create_layer(thisx,thisy,"Cannons",oCannon)){
			axis = 1;
			mSpeed = random_range(2,3);
			firing_rate = random_range(4,10);
			bullet_speed = random_range(5,7);
		}
	} else {
		// horizontal
		var thisy = 32;
		var thisx = round(random_range(startx, endx));
		with(instance_create_layer(thisx,thisy,"Cannons",oCannon)){
			axis = 0;
			image_angle = 270;
			mSpeed = random_range(2,3);
			firing_rate = random_range(4,10);
			bullet_speed = random_range(5,7);
		}
	}


}

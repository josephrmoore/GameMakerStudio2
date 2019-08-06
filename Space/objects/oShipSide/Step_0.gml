/// @description Insert description here
// You can write your code in this editor
if(moving && (current_spd+spd) <= spd_limit){
	x = x+spd;
	current_spd += spd;
} else if (moving && (current_spd+spd) > spd_limit){
	moving = false;
}

if(zooming_in){
	scale = clamp(scale+0.002, 0, 1);
	spd = clamp(spd-0.05, 2, 4);
	image_xscale = scale;
	image_yscale = scale;
}

if(zoom_n_rotate){
	scale = clamp(scale-0.005, 0, 1);
	image_xscale = scale;
	image_yscale = scale;
	y = y+0.05;
	image_angle = clamp(image_angle-0.5, -15, 0);
}

if(zooming_out){
	scale = clamp(scale-0.05, 0, 1);
	spd = clamp(spd+0.1, 2, 5);
	y = y+0.05;
	image_xscale = scale;
	image_yscale = scale;
}
var dash_index_start, dash_index_end;
if(oPlayer.has_sharp_dash){
	dash_index_start = 6;
	dash_index_end = 8;
} else {
	dash_index_start = 10;
	dash_index_end = 12;
}

if(image_index <6 || image_index == 9 || image_index > 12){
	image_index = dash_index_start;
	image_speed = 1;
} else if (image_index == dash_index_end){
	image_index = dash_index_end;
	image_speed = 0;
}

image_xscale = facing;

show_debug_message(image_index);

hsp = 5*mSpeed*facing;
vsp = 0;

player_collision();
object_collision(oDoor);
enemy_collision(oEnemy, 1);
player_collision();

x += hsp;
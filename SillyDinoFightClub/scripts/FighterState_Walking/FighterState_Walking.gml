input();
var spd = 3;
sprite_index = sTriWalk;
if(key_walk_left){
	x -= spd;
	image_xscale = 1;
}
if(key_walk_right){
	x += spd;
	image_xscale = -1;
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Avatar_Jumping(){
	image_speed = 1;
	grav();
	left_right();
	jumping();
	player_object_collision(oLedge);
	avatar_position();
	sprite_index = sAvatar_jumping;
	if(hsp<0){
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
}
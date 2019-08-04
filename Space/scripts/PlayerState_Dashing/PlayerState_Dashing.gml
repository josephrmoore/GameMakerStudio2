//var dash_index_start, dash_index_end;
//if(oPlayer.has_sharp_dash){
//	dash_index_start = 6;
//	dash_index_end = 8;
//} else {
//	dash_index_start = 10;
//	dash_index_end = 12;
//}

//if(image_index <6 || image_index == 9 || image_index > 12){
//	image_index = dash_index_start;
//	image_speed = 1;
//} else if (image_index == dash_index_end){
//	image_index = dash_index_end;
//	image_speed = 0;
//}

//image_xscale = facing;

if(!oController.is_paused){
	hsp = 5*mSpeed*facing;
	vsp = 0;

	player_tile_collision();
	player_object_collision(oDoor);
	player_object_collision(oBreakable);
	player_enemy_collision(oEnemy, 1);

	x += hsp;

	var dash_sprite = sPlayer_dashing;
	if(oPlayer.has_sharp_dash && oPlayer.mod_sharp_dash){
		dash_sprite = sPlayer_dashing_sharp;
	}
	sprite_index = dash_sprite;
}
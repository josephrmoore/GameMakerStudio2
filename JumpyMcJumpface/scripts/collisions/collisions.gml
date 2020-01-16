no_collisions = true;
player_tile_collision();
if(oPlayer.player_state != PLAYERSTATE.CLIMBING && oPlayer.player_state != PLAYERSTATE.SLIDING){
	object_collision_like_tiles(oThroughBlock);
}
//object_collision_like_tiles(oButton);
player_object_collision(oDoor);

if(no_collisions){
	grounded = false;
}

player_button_collision(oButton);
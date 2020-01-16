//show_debug_message("1");
no_collisions = true;
player_tile_collision();
//show_debug_message("2");
if(oPlayer.player_state != PLAYERSTATE.CLIMBING && oPlayer.player_state != PLAYERSTATE.SLIDING){
	object_collision_like_tiles(oThroughBlock);
}
//show_debug_message("3");
if(no_collisions){
	grounded = false;
}
//show_debug_message("4");
player_button_collision(oButton);
player_object_collision(oDoor);
//show_debug_message("5");

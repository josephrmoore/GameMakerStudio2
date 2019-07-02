player_x = oPlayer.x;
player_y = oPlayer.y;

if(point_distance(player_x,player_y,x,y) <= 200 && !(collision_line(x,y,player_x,player_y,oWall,false,false))){
	// chase
	state = states.chase;
	path_end();
	mp_potential_step_object(player_x,player_y,runsp,oWall);
	
} else if(path_index != mypath){
	state = states.patrol;
	mp_potential_step_object(start_x,start_y,walksp,oWall);
	if(x==start_x && y==start_y){
		path_start(mypath, walksp, path_action_reverse, false);
	}
}


sprite_index = sSquirrelSideWalking;
show_debug_message(dir);

switch (dir) {
    case 0:
		sprite_index = sSquirrelSideWalking;
		image_xscale = 1;
        break;
    case 1:
        sprite_index = sSquirrelBackWalking;
		image_xscale = 1;
        break;
    case 2:
        sprite_index = sSquirrelSideWalking;
		image_xscale = -1;
        break;
    case 3:
        sprite_index = sSquirrelFrontWalking;
		image_xscale = 1;
        break;
}
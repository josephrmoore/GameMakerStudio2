/// @description Insert description here
// You can write your code in this editor

var player_x = oPlayer.x;
var player_y = oPlayer.y;

if(point_distance(player_x,player_y,x,y) <= 200 && !(collision_line(x,y,player_x,player_y,oObstacle,false,false))){
	// chase
	path_end();
	mp_potential_step_object(player_x,player_y,runsp,oSolid);
	
} else if(path_index != mypath){
	mp_potential_step_object(start_x,start_y,walksp,oSolid);
	if(x==start_x && y==start_y){
		path_start(mypath, walksp, path_action_reverse, false);
	}
}

//if x != xprevious || y != yprevious {
//    dir = round(point_direction(xprevious, yprevious, x, y)/90);
//}

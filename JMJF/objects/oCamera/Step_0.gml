/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if(oGame.game_state == GAMESTATE.ENDING){
if(instance_exists(follow)){
	xTo = follow.x-view_w_half;
//	yTo = follow.y;
}

x += (xTo - x) / 25;
//y += (yTo - y) / 25;

x = clamp(x,0,room_width*5);

camera_set_view_pos(cam, x, 0);
} else {
camera_set_view_pos(cam, 0, 0);
}
//if(first_step){
//	x = 0;
//	y = 0;
//	first_step = false;
//} else {

//x += (xTo - x)/5;
//y += (yTo - y)/5;

//if(follow != noone){
//	xTo = clamp(follow.x, camera_get_view_width(view_current)/2, room_width-(camera_get_view_width(view_current)/2));
//	yTo = clamp(follow.y, camera_get_view_height(view_current)/2, room_height-(camera_get_view_height(view_current)/2));
//	//yTo = follow.y;
//}
//}

//var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
//camera_set_view_mat(camera,vm);

//oGame.camera_x = x;
//oGame.camera_y = y;
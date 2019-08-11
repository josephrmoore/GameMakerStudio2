/// @description Insert description here
// You can write your code in this editor

x += (xTo - x)/5;
y += (yTo - y)/5;

if(follow != noone){
	xTo = clamp(follow.x, camera_get_view_width(view_current)/2, room_width-(camera_get_view_width(view_current)/2));
	yTo = clamp(follow.y, camera_get_view_height(view_current)/2, room_height-(camera_get_view_height(view_current)/2)-64);
	//yTo = follow.y;
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);

oController.camera_x = x;
oController.camera_y = y;
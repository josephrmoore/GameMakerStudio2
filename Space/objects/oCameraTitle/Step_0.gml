/// @description Insert description here
// You can write your code in this editor
if(x<8000){
	x += 2;
} else {
	x = 1000;
}
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);
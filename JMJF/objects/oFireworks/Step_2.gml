/// @description Insert description here
// You can write your code in this editor
//if(image_index == image_number-1){
//	instance_destroy();
//}

var total_colors = array_length_1d(oGame.fireworks_shaders);
var random_color = floor(random_range(0,total_colors));
//show_debug_message(random_color);
shader = oGame.fireworks_shaders[random_color];
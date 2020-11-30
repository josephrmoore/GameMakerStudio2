/// @description Insert description here
// You can write your code in this editor


var all_shaders = [shPie1, shP11, shP21, shP31, shP41, shP61, shP71, shP83, c_white];
var ledge_shaders = [shPie3, shP13, shP23, shP33, shP43, shP63, shP73, shP84, c_white]
var random_index = floor(random_range(0,array_length_1d(all_shaders)-1));

current_shader = all_shaders[random_index];
oLedge.current_shader = ledge_shaders[random_index];
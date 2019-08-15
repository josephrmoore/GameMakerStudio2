/// @description Insert description here
// You can write your code in this editor

// use tile_x & tile_y of collider to set controller's global map var to visited

global.map_visited[tile_x, tile_y] = true;
show_debug_message("collided!");
instance_destroy();
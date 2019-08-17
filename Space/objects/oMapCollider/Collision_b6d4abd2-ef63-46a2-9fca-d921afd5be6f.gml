/// @description Insert description here
// You can write your code in this editor

// use tile_x & tile_y of collider to set controller's global map var to visited

//global.map_visited[tile_x, tile_y] = true;
ds_grid_set(global.map_visited_grid, tile_x, tile_y, true);
show_debug_message("collided!");
oController.current_x_tile = tile_x;
oController.current_y_tile = tile_y;
instance_destroy();
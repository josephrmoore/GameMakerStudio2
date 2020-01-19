var button_id = argument0;
var tilelayer = "button" + string(button_id+1);

//show_debug_message(oGame.lvl4_tilemaps[button_id]);
layer_set_visible(tilelayer, true);
oGame.lvl4_tilemaps_active[button_id] = true;
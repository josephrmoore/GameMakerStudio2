room_music = "plains";
oController.screen_state = SCREENSTATE.GAME;
oController.is_paused = false;

global_offset_x = 25;
global_offset_y = 35;


for(var i=0; i<room_height/878; i++){
	for(var j=0; j<room_width/1024; j++){
		var coll = instance_create_layer(j*1024,i*878,"Map",oMapCollider);
		coll.tile_x = global_offset_x + j;
		coll.tile_y = global_offset_y + i;
		show_debug_message(coll.tile_x);
		show_debug_message(coll.tile_y);
	}
}
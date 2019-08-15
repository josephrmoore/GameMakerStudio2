for(var i=0; i<room_height/878; i++){
	for(var j=0; j<room_width/1024; j++){
		var coll = instance_create_layer(j*1024,i*878,"Map",oMapCollider);
		coll.tile_x = global_offset_x + j;
		coll.tile_y = global_offset_y + i;
	}
}
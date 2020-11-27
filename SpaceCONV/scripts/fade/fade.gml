function fade(argument0, argument1, argument2) {
	with(instance_create_layer(0,0,"Fade",oFade)){
		targetRoom = argument0;
		targetX = argument1;
		targetY = argument2;
	}

	oController.player_has_control = false;


}

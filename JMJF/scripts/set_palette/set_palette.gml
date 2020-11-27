/// @function set_palette(shader1, shader2, shader3, shader4, shader5)
/// @description Set the shaders for a level based ona five color palette
/// @param shader1 set shader for background
/// @param shader2 set shader for slides, door
/// @param shader3 set shader for ledges, frame
/// @param shader4 set shader for vines, risers
/// @param shader5 set shader for ladder


function set_palette(argument0, argument1, argument2, argument3, argument4){

	oBackground.current_shader = argument0;
	
	if(instance_exists(oSlide)){
		oSlide.current_shader = argument1;
		oSlideEnd.current_shader = argument1;
	}
	if(instance_exists(oDoor)){
		oDoor.current_shader = argument1;
	}
	
	if(instance_exists(oFrame)){
		oFrame.current_shader = argument2;
	}
	if(instance_exists(oFrame8B)){
		oFrame8B.current_shader = argument2;
	}
	oLedge.current_shader = argument2;
	if(instance_exists(oLedgeLadder)){
		oLedgeLadder.current_shader = argument2;
	}

	if(instance_exists(oVine)){
		oVine.current_shader = argument3;
	}
	if(instance_exists(oRiserIntro)){
		oRiserIntro.current_shader = argument3;
	}
	if(instance_exists(oRiserOutro)){
		oRiserOutro.current_shader = argument3;
	}
	
	if(instance_exists(oLadder)){
		oLadder.current_shader = argument4;
		oLadderTop.current_shader = argument4;
	}
}
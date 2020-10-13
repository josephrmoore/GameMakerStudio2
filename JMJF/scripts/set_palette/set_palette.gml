/// @function set_palette(shader1, shader2, shader3, shader4, shader5)
/// @description Set the shaders for a level based ona five color palette
/// @param shader1 set shader for background
/// @param shader2 set shader for slides, door
/// @param shader3 set shader for ledges, frame
/// @param shader4 set shader for vines, risers
/// @param shader5 set shader for ladder


function set_palette(argument0, argument1, argument2, argument3, argument4){

	oBackground.current_shader = argument0;
	
	oSlide.current_shader = argument1;
	oSlideEnd.current_shader = argument1;
	oDoor.current_shader = argument1;
	
	oFrame.current_shader = argument2;
	oLedge.current_shader = argument2;
	oLedgeLadder.current_shader = argument2;
	
	oVine.current_shader = argument3;
	oRiserIntro.current_shader = argument3;
	oRiserOutro.current_shader = argument3;
	
	oLadder.current_shader = argument4;
}
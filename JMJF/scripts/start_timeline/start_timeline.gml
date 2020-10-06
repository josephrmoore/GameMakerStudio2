/// @function start_timeline(timelineObject)
/// @description start a timeline running
/// @param timelineObject Timeline object to begin

function start_timeline(argument0){
	oGame.timeline_index = argument0;
	oGame.timeline_position = 0;
	oGame.timeline_running = true;
}
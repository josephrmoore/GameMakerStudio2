/// @function player_rise(riser)
/// @description Set the player's avatar to the position just above a rising riser
/// @param riser Riser object

function player_rise(argument0){
	var riser = argument0;
	oAvatar.y = riser.y-16;
	oAvatar.x = approach(oAvatar.x, riser.x, 1);
}
/// @description Insert description here
// You can write your code in this editor

if(oPlayer.player_state != PLAYERSTATE.SWINGING){
	oPlayer.grappleX = x;
	oPlayer.grappleY = y;
	oPlayer.ropeX = oPlayer.x;
	oPlayer.ropeY = oPlayer.y;
	oPlayer.ropeAngle = 270;
	//if(oPlayer.hsp < 0){
	//	oPlayer.ropeAngle = 300;
	//} else {
	//	oPlayer.ropeAngle = 240;
	//}
//	ropeAngleVelocity = 0;
//	oPlayer.ropeAngle = point_direction(oPlayer.grappleX,oPlayer.grappleY,oPlayer.x,oPlayer.y);
//	oPlayer.ropeLength = point_distance(oPlayer.grappleX,oPlayer.grappleY,oPlayer.x,oPlayer.y);

show_debug_message("ONLY ONCE!");
oPlayer.player_state = PLAYERSTATE.SWINGING;
}


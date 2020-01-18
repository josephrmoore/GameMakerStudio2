var obj = argument0;

// Horizontal object collision
if (place_meeting(x+hsp,y,obj) || place_meeting(x,y+vsp,obj)) {
	if(!oGame.pressed_buttons_held){
		player_state = PLAYERSTATE.SWINGING;
		ropeX = obj.x;
		ropeY = obj.y;
		ropeAngle = point_direction(ropeX,ropeY,x,y);
	}
}
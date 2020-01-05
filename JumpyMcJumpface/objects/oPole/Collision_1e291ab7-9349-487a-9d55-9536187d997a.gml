/// @description Insert description here
// You can write your code in this editor
if(oPlayer.player_state == PLAYERSTATE.SLIDING){
	var pole_center = x+(sprite_width/2);
	oPlayer.hsp = 0;
	if(oPlayer.x < pole_center){
		oPlayer.x += 1;
	} else if (oPlayer.x > pole_center){
		oPlayer.x -= 1;
	} else if(oPlayer.x == pole_center){
		oPlayer.jumps = 0;
	}
}

/// @description Insert description here
// You can write your code in this editor
if(oPlayer.player_state == PLAYERSTATE.CLIMBING){
	oPlayer.jumps = oPlayer.max_jumps;
	if(oGame.move_down || oGame.move_up){
		var ladder_center = x+(sprite_width/2);
		oPlayer.hsp = 0;
		if(oPlayer.x < ladder_center){
			oPlayer.x += 1;
		} else if (oPlayer.x > ladder_center){
			oPlayer.x -= 1;
		}
	}
}

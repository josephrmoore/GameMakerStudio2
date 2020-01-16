/// @description Insert description here
// You can write your code in this editor
if(player_state == PLAYERSTATE.SWINGING){
	draw_line_width(grappleX,grappleY,ropeX,ropeY,8);
}
draw_self();

if(oPlayer.has_parachute && oPlayer.player_state == PLAYERSTATE.FALLING){
	draw_sprite(player_parachute,-1,oPlayer.x,(oPlayer.y-(oPlayer.sprite_height/2)));
}
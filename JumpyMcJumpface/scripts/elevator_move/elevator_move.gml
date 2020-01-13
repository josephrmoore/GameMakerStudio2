var spd = argument0;
var stop_pt = argument1;
var player_sprite_offset = ceil(oPlayer.sprite_height/2);


if(y>stop_pt){
//	y-=spd;
	y-=spd*oGame.DT;
} else {
	y = stop_pt;
}

if(oGame.died_yet){
	y = stop_pt;
}

oPlayer.y = y-player_sprite_offset;
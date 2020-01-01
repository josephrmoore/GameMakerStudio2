var spd = argument0;
var stop_pt = argument1;

if(y>stop_pt){
	y-=spd;
} else {
	y = stop_pt;
}

if(oPlayer.y>stop_pt-30){
	oPlayer.y -= spd;
} else {
	oPlayer.y = stop_pt-30;
}

if(oGame.died_yet){
	y = stop_pt;
	oPlayer.y = stop_pt-30;
}
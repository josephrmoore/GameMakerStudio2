var horiz = argument[0];
var vert = oPlayer.vsp;

if(argument_count > 1){
	vert = argument[1];
}

oPlayer.alarm[0] = 5;
pushback = true;
if(pushback){
	hsp = horiz;
	vsp = vert;
}
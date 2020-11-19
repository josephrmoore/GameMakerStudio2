// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function avatar_position(){
	if(vsp > max_vsp){
		vsp = max_vsp;
	}
	x+=hsp;
	y+=vsp;
	//x = round(x);
	//y = round(y);
}
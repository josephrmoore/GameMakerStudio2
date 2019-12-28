var startx = 100;
var starty = 100;
var endx = 1420;
var endy = 980;

if(axis == 0){
	if(x>endx){
		multiplier = -1;
	}
	if(x<startx){
		multiplier = 1;
	}
	hsp = approach(hsp,mSpeed*multiplier,aSpeed);
	x+=hsp;
} else if(axis == 1){
	if(y>endy){
		multiplier = -1;
	}
	if(y<starty){
		multiplier = 1;
	}
	vsp = approach(vsp,mSpeed*multiplier,aSpeed);
	y+=vsp;
}
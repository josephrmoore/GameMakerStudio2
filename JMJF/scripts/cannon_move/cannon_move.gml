function cannon_move() {
	var startx = 20;
	var starty = 20;
	var endx = 520;
	var endy = 290;

	if(axis == 0){
		if(x>endx){
			multiplier = -1;
		}
		if(x<startx){
			multiplier = 1;
		}
		hsp = approach(hsp,mSpeed*multiplier,aSpeed);
		x+=hsp;
	//	x+=hsp*oGame.DT;
	} else if(axis == 1){
		if(y>endy){
			multiplier = -1;
		}
		if(y<starty){
			multiplier = 1;
		}
		vsp = approach(vsp,mSpeed*multiplier,aSpeed);
		y+=vsp;
	//	y+=vsp*oGame.DT;
	}


}

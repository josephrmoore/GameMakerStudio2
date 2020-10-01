function elevator_move(argument0, argument1) {
	var spd = argument0;
	var stop_pt = argument1;

	if(y>stop_pt){
	//	y-=spd;
		y-=spd*oGame.DT;
	} else {
		y = stop_pt;
	}

	if(oGame.died_yet){
		y = stop_pt;
	}

	oPlayer.y = y-15;


}

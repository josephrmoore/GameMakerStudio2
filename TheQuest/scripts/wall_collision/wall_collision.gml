if(place_meeting(x+hsp,y,oSolid)){
	while(!place_meeting(x+sign(hsp), y, oSolid)){
		x = x+sign(hsp);
	}
	hsp = 0;
}

if(place_meeting(x, y+vsp,oSolid)){
	while(!place_meeting(x, y+sign(vsp), oSolid)){
		y = y+sign(vsp);
	}
	vsp = 0;
}


x += hsp;
y += vsp;
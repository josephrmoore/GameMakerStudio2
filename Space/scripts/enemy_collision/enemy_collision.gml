var obj = argument0;

// Horizontal object collision - oEnemy

if (place_meeting(x+hsp,y,obj)) {
	while(!place_meeting(x+sign(hsp),y,obj)){
		x = x + sign(hsp);
	}
	alarm[0] = 5;
	pushback = true;
	if(pushback){
		hsp = -facing*10;
	}
	player_collision();
}

// Vertical object collision - oEnemy

if (place_meeting(x,y+vsp,obj)) {
	while(!place_meeting(x,y+sign(vsp),obj)){
		y = y + sign(vsp);
	}
	alarm[0] = 5;
	pushback = true;
	if(pushback){
		vsp = -20;
		hsp = -facing*10;
	}
	player_collision();
}
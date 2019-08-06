if(!oController.is_paused){
var grv = 0.4;

if(y==startY){
	vsp = -5+random_range(-2,2);
} else if (y<startY){
	vsp+=grv;
} else {
	y = startY;
}

y += ceil(vsp);

if(place_meeting(x,y,oBullet)){
	y = startY;
	npc_state = NPCSTATE.DEAD;
}
}
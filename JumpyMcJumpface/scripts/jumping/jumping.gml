// Jumping

if(oGame.buttons){
	if(jumps < max_jumps){
		vsp = -jSpeed;
		jumps++;
	}
}
vsp = max(vsp, -jSpeed/4);
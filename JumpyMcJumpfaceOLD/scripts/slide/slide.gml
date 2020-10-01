function slide() {
	vsp = approach(vsp,mSpeed,aSpeed);

	if(vsp>0){
		vsp = ceil(vsp);	
	} else {
		vsp = floor(vsp);
	}



}

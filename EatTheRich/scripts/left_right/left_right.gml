/// @description Left & Right motion calculation
function left_right() {

	if(oGame.key_left){
	    hsp = approach(hsp,-mSpeed,aSpeed);
	}else if(oGame.key_right){
	    hsp = approach(hsp,mSpeed,aSpeed);
	}else{
	    hsp = approach(hsp,0,dSpeed);
	}

}

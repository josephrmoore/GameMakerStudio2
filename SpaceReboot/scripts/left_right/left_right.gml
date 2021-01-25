/// @description Left & Right motion calculation
function left_right() {

	if(key_left){
	    hsp = approach(hsp,-mSpeed,aSpeed);
	}else if(key_right){
	    hsp = approach(hsp,mSpeed,aSpeed);
	}else{
	    hsp = approach(hsp,0,dSpeed);
	}


}

/// @description Left & Right motion calculation
function left_right() {

	if(oController.key_left){
	    hsp = approach(hsp,-mSpeed,aSpeed);
	}else if(oController.key_right){
	    hsp = approach(hsp,mSpeed,aSpeed);
	}else{
	    hsp = approach(hsp,0,dSpeed);
	}


}

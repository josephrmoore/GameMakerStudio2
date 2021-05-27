// attach to oAvatar object
function left_right() {
	
	if(oGame.move_left){
	    hsp = approach(hsp,-mSpeed,aSpeed);
	}else if(oGame.move_right){
	    hsp = approach(hsp,mSpeed,aSpeed);
	}else{
	    hsp = approach(hsp,0,dSpeed);
	}
}

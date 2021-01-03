/// @description Left & Right motion calculation
function up_down() {

	if(oGame.key_up){
	    vsp = approach(vsp,-mSpeed,aSpeed);
	}else if(oGame.key_down){
	    vsp = approach(vsp,mSpeed,aSpeed);
	}else{
	    vsp = approach(vsp,0,dSpeed);
	}


}

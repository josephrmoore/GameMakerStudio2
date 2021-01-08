// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function avatar_motion(){
	
	if(oGame.key_up){
	    vsp = approach(vsp,-mSpeed*speed_multiplier,aSpeed);
	}else if(oGame.key_down){
	    vsp = approach(vsp,mSpeed*speed_multiplier,aSpeed);
	}else{
	    vsp = approach(vsp,0,dSpeed);
	}
	
	if(oGame.key_left){
	    hsp = approach(hsp,-mSpeed*speed_multiplier,aSpeed);
	}else if(oGame.key_right){
	    hsp = approach(hsp,mSpeed*speed_multiplier,aSpeed);
	}else{
	    hsp = approach(hsp,0,dSpeed);
	}
	
}
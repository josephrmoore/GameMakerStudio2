if(oGame.move_up){
    vsp = approach(vsp,-mSpeed,aSpeed);
}else if(oGame.move_down){
    vsp = approach(vsp,mSpeed,aSpeed);
}else{
    vsp = approach(vsp,0,dSpeed);
}

if(vsp>0){
	vsp = ceil(vsp);	
} else {
	vsp = floor(vsp);
}

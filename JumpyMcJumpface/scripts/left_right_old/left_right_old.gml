if(oGame.move_left && controllable){
    hsp = approach(hsp,-mSpeed,aSpeed);
}else if(oGame.move_right && controllable){
    hsp = approach(hsp,mSpeed,aSpeed);
}else{
    hsp = approach(hsp,0,dSpeed);
}

if(hsp>0){
	hsp = ceil(hsp);	
} else {
	hsp = floor(hsp);
}

//if(oGame.move_up){
//	y -=5;
//}

//if(oGame.move_down){
//	y +=5;
//}

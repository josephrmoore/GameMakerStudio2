if(oGame.move_up){
    y-=climb_speed;
}else if(oGame.move_down){
    y+=climb_speed;
}

if(oGame.move_left){
	x-=5;
} else if (oGame.move_right){
	x+=5;
}
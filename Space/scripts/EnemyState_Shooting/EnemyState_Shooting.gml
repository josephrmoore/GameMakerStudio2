--shooting_delay;

if(shooting_delay<0){
	shooting_delay = 60;
	with(instance_create_layer(x,y,"Bullets",oBulletEnemy)){
		speed = 5;
		direction = 180;
	}
}
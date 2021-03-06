function EnemyState_Shooting() {
	if(!oController.is_paused){
		if(shooting_limit != 0){
			--shooting_delay;

			if(shooting_delay<0){
				shooting_delay = 60;
				with(instance_create_layer(x,y,"Bullets",oBulletEnemy)){
					speed = 5;
					if(other.facing_right){
						direction = 0;
						other.image_xscale = -1;
					} else {
						direction = 180
						other.image_xscale = 1;
					}
				}
				if(shooting_limit > 0){
					shooting_limit--;
				}
			}
		} else {
			enemy_state = default_state;
		}
	}


}

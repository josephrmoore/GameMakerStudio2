/// @description Insert description here
// You can write your code in this editor

if(oPlayer.has_wave && wavey){
	if(vert_wave){
		if(horiz_wave){
			y = wave(y-20, y+20, .1, 0, false);
		}
		x = wave(x-20, x+20, .1, 0, false);
	} else {
		y = wave(y-20, y+20, .1, 0, false);
	}
}

if(place_meeting(x,y,oEnemy)){
	var hitByBulletAttackNow = ds_list_create();
	var bulletHits = instance_place_list(x,y,oEnemy,hitByBulletAttackNow,false);
	for(var i=0; i<bulletHits; i++){
		var hitID = hitByBulletAttackNow[| i]; // ds_list_find_value(hitByAttackNow, i) ALT version for shorthand
		with (hitID){
			EnemyHit(other.bullet_strength);
		}
	}
}
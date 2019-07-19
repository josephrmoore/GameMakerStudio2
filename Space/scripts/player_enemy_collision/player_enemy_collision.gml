var obj = argument0;
var damage_percent = argument1;
var dash_damage = 1;

// Horizontal object collision - oEnemy

if (place_meeting(x+hsp,y,obj)) {
	if(oPlayer.has_sharp_dash && oPlayer.state == PLAYERSTATE.DASHING){
		with(obj){
			EnemyHit(dash_damage);
		}
	} else {
		while(!place_meeting(x+sign(hsp),y,obj)){
			x = x + sign(hsp);
		}
		if(oPlayer.has_screw_attack && oPlayer.jumps > 1){
			var hitScrewH = ds_list_create();
			var screwHitsH = instance_place_list(x+hsp,y,oEnemy,hitScrewH,false);
			
			for(var k=0; k<screwHitsH; k++){
				var screwHitIDH = hitScrewH[| k]; // ds_list_find_value(hitByAttackNow, i) ALT version for shorthand
				with (screwHitIDH){
					EnemyHit(5);
				}
			}
			ds_list_destroy(hitScrewH);
		} else {
			oPlayer.hp -= (obj.damaging*damage_percent);
		}
		alarm[0] = 5;
		pushback = true;
		if(pushback){
			hsp = -facing*10;
		}
		player_tile_collision();
	}

}

// Vertical object collision - oEnemy

if (place_meeting(x,y+vsp,obj)) {
	if(oPlayer.has_sharp_dash && oPlayer.state == PLAYERSTATE.DASHING){
		with(obj){
			EnemyHit(dash_damage);
		}
	} else {
		//while(!place_meeting(x,y+sign(vsp),obj)){
		//	y = y + sign(vsp);
		//}
		if(oPlayer.has_screw_attack && oPlayer.jumps > 1){
			var hitScrew = ds_list_create();
			var screwHits = instance_place_list(x,y+vsp,oEnemy,hitScrew,false);
			
			for(var j=0; j<screwHits; j++){
				var screwHitID = hitScrew[| j]; // ds_list_find_value(hitByAttackNow, i) ALT version for shorthand
				with (screwHitID){
					EnemyHit(5);
				}
			}
			ds_list_destroy(hitScrew);
		} else {
			oPlayer.hp -= (obj.damaging*damage_percent);
		}
		alarm[0] = 5;
		pushback = true;
		if(pushback){
			vsp = -20;
			hsp = -facing*10;
		}
		player_tile_collision();
	}
}
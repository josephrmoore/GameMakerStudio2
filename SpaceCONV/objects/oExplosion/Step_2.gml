if(!oController.is_paused){
/// @description Insert description here
// You can write your code in this editor
if(creating_weapon == "bomb"){
	var bomb_damage = 5;
	if(oPlayer.has_super_bombs && oPlayer.mod_super_bombs){
		image_xscale = 2;
		image_yscale = image_xscale;
		bomb_damage = 20;
	}
	mask_index = sExplosionHB;
	var hitByExplosionNow = ds_list_create();
	var explosion_hits = instance_place_list(x,y,oEnemy,hitByExplosionNow,false);

	if(explosion_hits > 0){
		for(var i=0; i<explosion_hits; i++){
			var hitID = hitByExplosionNow[| i]; // ds_list_find_value(hitByAttackNow, i) ALT version for shorthand
			if(ds_list_find_index(hitByExplosion, hitID) == -1){
				ds_list_add(hitByExplosion,hitID);
				with (hitID){
					EnemyHit(bomb_damage);
				}
			}
		}
	}
	ds_list_destroy(hitByExplosionNow);
	
	//if(place_meeting(x,y,oBreakable)){
	//	if(oBreakable.weapon == "bomb"){
	//		with(oBreakable){
	//			instance_destroy();
	//		}
	//	}
	//}
	
	if(place_meeting(x,y,oBreakable)){
		var hitBreakable = ds_list_create();
		var breakableHits = instance_place_list(x,y,oBreakable,hitBreakable,false);
		for(var i=0; i<breakableHits; i++){
			var breakableID = hitBreakable[| i]; // ds_list_find_value(hitByAttackNow, i) ALT version for shorthand
			with (breakableID){
				if(weapon == other.creating_weapon){
					instance_destroy();
				}
			}
		}
		ds_list_destroy(hitBreakable);
	}
}
}
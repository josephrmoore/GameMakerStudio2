/// @description Insert description here
// You can write your code in this editor
if(!oController.is_paused){

speed = bullet_speed;

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
	single_from_class(oEnemy, EnemyHit, other.bullet_strength);
	if(fired_from == "missile"){
		missile_details();
	}
	//var hitByBulletAttackNow = ds_list_create();
	//var bulletHits = instance_place_list(x,y,oEnemy,hitByBulletAttackNow,false);
	//for(var i=0; i<bulletHits; i++){
	//	var hitID = hitByBulletAttackNow[| i]; // ds_list_find_value(hitByAttackNow, i) ALT version for shorthand
	//	with (hitID){
	//		EnemyHit(other.bullet_strength);
	//	}
	//}
	//ds_list_destroy(hitByBulletAttackNow);
}

if(place_meeting(x,y,oDoor)){
	single_from_class(oDoor, door_action, true);
	if(fired_from == "missile"){
		missile_details();
	}
	//var doorHit = ds_list_create();
	//var doorHits = instance_place_list(x,y,oDoor,doorHit,false);
	//for(var i=0; i<doorHits; i++){
	//	var doorID = doorHit[| i]; // ds_list_find_value(hitByAttackNow, i) ALT version for shorthand
	//	with (doorID){
	//		door_action(true);
	//	}
	//}
	//ds_list_destroy(doorHit);
}

if(place_meeting(x,y,oBreakable)){
	single_from_class(oBreakable, break_action, "that sounds really boring");
	if(fired_from == "missile"){
		missile_details();
	}
	//var hitBreakable = ds_list_create();
	//var breakableHits = instance_place_list(x,y,oBreakable,hitBreakable,false);
	//for(var i=0; i<breakableHits; i++){
	//	var breakableID = hitBreakable[| i]; // ds_list_find_value(hitByAttackNow, i) ALT version for shorthand
	//	with (breakableID){
	//		break_action("that sounds really boring");
	//	}
	//}
	//ds_list_destroy(hitBreakable);
}
} else {
	speed = 0;
}
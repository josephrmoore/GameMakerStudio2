// Set speeds

left_right();
grav();

if(can_slash){
	image_xscale = facing;
	if(hanging_left || hanging_right){
		image_xscale = -facing;
	}
}

if(key_up){
	image_angle = 90*facing;
	can_slash = false;
} else if(!grounded && key_down){
	image_angle = 270*facing;
	can_slash = false;
} else {
	image_angle = 0;
}

if (sprite_index != sPlayerAttack) {
	sprite_index = sPlayerAttack;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

mask_index = sPlayerAttackHB;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,oEnemy,hitByAttackNow,false);

if(hits > 0){
	for(var i=0; i<hits; i++){
		var hitID = hitByAttackNow[| i]; // ds_list_find_value(hitByAttackNow, i) ALT version for shorthand
		if(ds_list_find_index(hitByAttack, hitID) == -1){
			ds_list_add(hitByAttack,hitID);
			with (hitID){
				other.alarm[0] = 5;
				other.pushback = true;
				if(other.pushback){
					other.hsp -= (other.facing * 5);
				}
				if(other.key_down && !other.grounded){
					other.vsp = -10;
				}
				EnemyHit(2);
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = sPlayer;

player_collision();

enemy_collision(oEnemy);
object_collision(oDoor);

// Apply speeds to position

x += hsp;
y += vsp;

var ani_type = sprite_get_speed_type(sprite_index);
var ani_spd = sprite_get_speed(sprite_index)*image_speed;
if(ani_type == spritespeed_framespersecond){
	ani_spd = ani_spd/room_speed;
}
// ani_speed can also be "rate" directly
var ani_result = image_index+ani_spd >= sprite_get_number(sprite_index);

if(ani_result){
	sprite_index = sPlayer;
	state = PLAYERSTATE.FREE;
	can_slash = true;
}
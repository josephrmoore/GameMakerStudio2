// Set speeds

left_right();
grav();

var slash_sprite, slash_mask;
var slash_damage = 3;

if(oPlayer.has_strong_slash && oPlayer.mod_strong_slash){
	slash_damage = 6;
}

if(oPlayer.has_long_slash && oPlayer.mod_long_slash){
	slash_sprite = sPlayerAttackLong;
	slash_mask = sPlayerAttackLongHB;
} else if (oPlayer.has_orb_slash){
	slash_sprite = sPlayerAttackOrb;
	slash_mask = sPlayerAttackOrbHB;
} else {
	slash_sprite = sPlayerAttack;
	slash_mask = sPlayerAttackHB;
}

var scale_factor;
if(oPlayer.has_small_avatar && oPlayer.mod_small_avatar){
	scale_factor = 0.5;
} else {
	scale_factor = 1;
}

if(can_slash){
	image_xscale = scale_factor*facing;
	if(location == PLAYERLOCATION.HANGING){
		image_xscale = -facing*scale_factor;
	}
}



if(key_up){
	image_angle = 90*facing;
	can_slash = false;
} else if(location == PLAYERLOCATION.AIRBORNE && key_down){
	image_angle = -90*facing;
	can_slash = false;
} else {
	image_angle = 0;
}

if (sprite_index != slash_sprite) {
	sprite_index = slash_sprite;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

mask_index = slash_mask;
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
				if(other.key_down && other.location == PLAYERLOCATION.AIRBORNE){
					other.vsp = -10;
				}
				EnemyHit(slash_damage);
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = sPlayer;

player_tile_collision();

player_enemy_collision(oEnemy, 1);
player_object_collision(oDoor);
player_object_collision(oBreakable);

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
	image_angle = 0;
	sprite_index = sPlayer;
	state = PLAYERSTATE.FREE;
	can_slash = true;
}

/// @description Insert description here
// You can write your code in this editor

var avatar_collision = false;
with(oAvatar){
	if(avatar_state == AVATARSTATE.JUMPING && armored){
		// do not kill
		avatar_collision = false;
	} else {
		pop_up(-1);
		avatar_state = AVATARSTATE.FALLING;
		avatar_collision = true;
	}
}

if(avatar_collision){
	audio_play_sound(aBulletDeath, 50, false);
	instance_destroy();
}


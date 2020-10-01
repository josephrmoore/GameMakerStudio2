/// @description Insert description here
// You can write your code in this editor
switch(upgrade_type){
	case "high_jump":
		oPlayer.has_high_jump = true;
		break;
	case "double_jump":
		oPlayer.has_double_jump = true;
		oPlayer.max_jumps = 2;
		break;
	case "parachute":
		oPlayer.has_parachute = true;
		break;
	case "pole_climb":
		oPlayer.has_pole_climb = true;
		break;
}
SaveGame("jumpydata.sav");
audio_play_sound(aUpgrade, 1000, false);
instance_destroy();
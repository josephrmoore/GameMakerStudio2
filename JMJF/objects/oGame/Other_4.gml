/// @description Insert description here
// You can write your code in this editor

var current_room = room_get_name(room);

switch(current_room){
	case "mainMenu":
		oGame.shaders_on = true;
		LoadGame("jmjf.dat");
		if(!audio_is_playing(aMainMenu)){
			audio_stop_all();
			audio_play_sound(aMainMenu, 100, true);
		}
		alarm[0] = 5;
		break;
	case "level1":
		// rules for level
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shPie1, shPie2, shPie3, shPie4, shPie5);
		oGame.current_level = level1;
		oGame.next_level = level2;
		oAvatar.last_teleport_x = -1;
		oAvatar.last_teleport_y = -1;
		oGame.shaders_on = true;
		oGame.teleportation_at_death = false;
		set_highest_level(1);
		SaveGame("jmjf.dat");
		oGame.double_jump = false;
		oGame.high_jump = false;
		oGame.armor_jump = false;
		oCannon.firing_rate = 4;
		break;
	case "level2":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shP11, shP12, shP13, shP14, shP15);
		oGame.current_level = level2;
		oGame.next_level = level3;
		oAvatar.last_teleport_x = -1;
		oAvatar.last_teleport_y = -1;
		oGame.shaders_on = true;
		oGame.teleportation_at_death = false;
		set_highest_level(2);
		SaveGame("jmjf.dat");
		oGame.double_jump = false;
		oGame.high_jump = false;
		oGame.armor_jump = false;
		oCannon.firing_rate = 4;
		break;
	case "level3":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shP21, shP22, shP23, shP24, shP25);
		oGame.current_level = level3;
		oGame.next_level = level4;
		oAvatar.last_teleport_x = -1;
		oAvatar.last_teleport_y = -1;
		oGame.shaders_on = true;
		oGame.teleportation_at_death = false;
		set_highest_level(3);
		SaveGame("jmjf.dat");
		oGame.double_jump = true;
		oGame.high_jump = false;
		oGame.armor_jump = false;
		oCannon.firing_rate = 2.5;
		break;
	case "level4":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = true;
		set_palette(shP61, shP62, shP63, shP64, shP65);
		oGame.current_level = level4;
		oGame.next_level = level5;
		oAvatar.last_teleport_x = -1;
		oAvatar.last_teleport_y = -1;
		oGame.shaders_on = true;
		oGame.teleportation_at_death = false;
		set_highest_level(4);
		SaveGame("jmjf.dat");
		oGame.double_jump = true;
		oGame.high_jump = false;
		oGame.armor_jump = false;
		oCannon.firing_rate = 2.5;
		break;
	case "level5":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = true;
		set_palette(shP71, shP72, shP73, shP74, shP75);
		oGame.current_level = level5;
		oGame.next_level = level6;
		oAvatar.last_teleport_x = -1;
		oAvatar.last_teleport_y = -1;
		oGame.shaders_on = true;
		oGame.teleportation_at_death = true;
		set_highest_level(5);
		SaveGame("jmjf.dat");
		oGame.double_jump = true;
		oGame.high_jump = false;
		oGame.armor_jump = false;
		oCannon.growing = true;
		oCannon.firing_rate = 2.5;
		oAvatar.last_teleport_x = 432;
		oAvatar.last_teleport_y = 296;
		break;
	case "level6":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = true;
		oGame.teleportation = false;
		set_palette(shP41, shP42, shP43, shP44, shP45);
		oGame.current_level = level6;
		oGame.next_level = level7;
		oAvatar.last_teleport_x = -1;
		oAvatar.last_teleport_y = -1;
		oGame.shaders_on = true;
		oGame.teleportation_at_death = false;
		set_highest_level(6);
		SaveGame("jmjf.dat");
		oGame.double_jump = true;
		oGame.high_jump = true;
		oGame.armor_jump = false;
		oCannon.firing_rate = 2.5;
		oCannon.wave_bullets = true;
		break;
	case "level7":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shP31, shP32, shP33, shP34, shP35);
		oGame.current_level = level7;
		oGame.next_level = level8;
		oAvatar.last_teleport_x = -1;
		oAvatar.last_teleport_y = -1;
		oGame.shaders_on = true;
		oGame.teleportation_at_death = false;
		set_highest_level(7);
		SaveGame("jmjf.dat");
		oGame.double_jump = true;
		oGame.high_jump = true;
		oGame.armor_jump = false;
		oCannon.firing_rate = 2;
		break;
	case "level8":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = true;
		oGame.teleportation = true;
		set_palette(shP83, shP82, shP84, shP85, shP81);
		oGame.current_level = level8;
		oGame.next_level = level9;
		oAvatar.last_teleport_x = -1;
		oAvatar.last_teleport_y = -1;
		oGame.shaders_on = true;
		oGame.teleportation_at_death = false;
		set_highest_level(8);
		SaveGame("jmjf.dat");
		oGame.double_jump = true;
		oGame.high_jump = true;
		oGame.armor_jump = true;
		oCannon.firing_rate = 2;
		break;
	case "level8B":
		if(!audio_is_playing(aLevel8)){
			audio_stop_all();
			room_music();
			alarm[0] = -1;
			oGame.game_state = GAMESTATE.LEVEL;
		}
		oGame.buttons_pressed_this_level = 0;
		gain_control();
		oGame.slides_vines_togglable = false;
		oGame.teleportation = true;
		set_palette(shP83, shP82, shP84, shP85, shP81);
		oGame.current_level = level8;
		oGame.next_level = level9;
		oAvatar.last_teleport_x = -1;
		oAvatar.last_teleport_y = -1;
		oGame.shaders_on = true;
		oGame.teleportation_at_death = false;
		set_highest_level(8);
		SaveGame("jmjf.dat");
		oGame.double_jump = true;
		oGame.high_jump = true;
		oGame.armor_jump = true;
		oCannon.firing_rate = 2;
		oCannon.growing = true;
		oCannon.wave_bullets = true;
		break;
	case "level9":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		oGame.shaders_on = true;
		oGame.current_level = level9;
		oAvatar.last_teleport_x = -1;
		oAvatar.last_teleport_y = -1;
		oGame.teleportation_at_death = false;
		set_highest_level(9);
		SaveGame("jmjf.dat");
		oGame.double_jump = true;
		oGame.high_jump = true;
		oGame.armor_jump = true;
		break;
}

if(oGame.double_jump){
	if(instance_exists(oAvatar)){
		oAvatar.max_jumps = 2;
	}
	if(instance_exists(oDoubleJump)){
		with(oDoubleJump){
			instance_destroy();
		}
	}
}

if(oGame.high_jump){
	if(instance_exists(oAvatar)){
		oAvatar.jSpeed = oAvatar.jSpeedHigh;
	}
	if(instance_exists(oHighJump)){
		with(oHighJump){
			instance_destroy();
		}
	}
}

if(oGame.armor_jump){
	if(instance_exists(oAvatar)){
		oAvatar.armored = true;
	}
	if(instance_exists(oArmorJump)){
		with(oArmorJump){
			instance_destroy();
		}
	}
}

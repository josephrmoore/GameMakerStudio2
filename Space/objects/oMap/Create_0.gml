/// @description Insert description here
// You can write your code in this editor
enum SECTIONS {
	PLAINS,
	MOUNTAINS,
	VALLEY,
	LABORATORY,
	OCEAN,
	TUNNELS,
	CAVES,
	JUNGLE,
	JUNKPIT,
	SECRET,
	DESCENT,
	LAVA,
	LAVAMONSTER,
	NEST,
	QUEENSLAIR,
	size
}

global.mapvars = [];

for(var i=0; i<SECTIONS.size; i++){
	var s_x, s_y;
	switch(i){
		case 0:
			s_x = 0;
			s_y = 0;
			break;
		case 1:
			s_x = 0;
			s_y = 0;
			break;
		case 2:
			s_x = 0;
			s_y = 0;
			break;
		case 3:
			s_x = 0;
			s_y = 0;
			break;
		case 4:
			s_x = 0;
			s_y = 0;
			break;
		case 5:
			s_x = 0;
			s_y = 0;
			break;
		case 6:
			s_x = 0;
			s_y = 0;
			break;
		case 7:
			s_x = 0;
			s_y = 0;
			break;
		case 8:
			s_x = 0;
			s_y = 0;
			break;
		case 9:
			s_x = 0;
			s_y = 0;
			break;
		case 10:
			s_x = 0;
			s_y = 0;
			break;
		case 11:
			s_x = 0;
			s_y = 0;
			break;
		case 12:
			s_x = 0;
			s_y = 0;
			break;
		case 13:
			s_x = 0;
			s_y = 0;
			break;
		case 14:
			s_x = 0;
			s_y = 0;
			break;
	}
	global.mapvars[0] = i;
	global.mapvars[1] = s_x;
	global.mapvars[2] = s_y;
	instance_create_layer(s_x,s_y,"Map",oMapSection);
}
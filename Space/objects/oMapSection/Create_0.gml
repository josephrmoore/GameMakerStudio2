/// @description Insert description here
// You can write your code in this editor
show_debug_message("section created");
switch(section_id){
	case SECTIONS.PLAINS:
		var offset_x = 0;
		var offset_y = 0;
		var thisx = section_x + offset_x;
		var thisy = section_y + offset_y;
		// room: plains
		global.mapvars[3] = thisx;
		global.mapvars[4] = thisy;
		global.mapvars[5] = 17;
		global.mapvars[6] = 3;
		instance_create_layer(thisx, thisy, "Map", oMapRoom);
		break;
	case SECTIONS.MOUNTAINS:
		var offset_x = 0;
		var offset_y = 0;
		var thisx = section_x + offset_x;
		var thisy = section_y + offset_y;
		// room: mountainsA
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// room: mountainsB
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// room: mountainsC
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// room: mountainsD
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// room: mountainsE
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		break;
	case SECTIONS.VALLEY:
		var offset_x = 0;
		var offset_y = 0;
		var thisx = section_x + offset_x;
		var thisy = section_y + offset_y;
		// valleyA
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// valleyB
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// valleyC
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// valleyD
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// valleyE
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// valleyF
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// valleyG
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// valleyH
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// valleyI
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		
		break;
	case SECTIONS.LABORATORY:
		var offset_x = 0;
		var offset_y = 0;
		var thisx = section_x + offset_x;
		var thisy = section_y + offset_y;
		// found
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// runA
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// runB
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// runC
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		// runD
		offset_x = 0;
		offset_y = 0;
		thisx = section_x + offset_x;
		thisy = section_y + offset_y;
		with(instance_create_layer(thisx, thisy, "Map", oMapRoom)){
			x_pos = thisx;
			y_pos = thisy;
			x_screens = 0;
			y_screens = 0;
		}
		break;
	case SECTIONS.JUNGLE:
		
		break;
	case SECTIONS.OCEAN:
		
		break;
	case SECTIONS.TUNNELS:
		
		break;
	case SECTIONS.CAVES:
		
		break;
	case SECTIONS.JUNKPIT:
		
		break;
	case SECTIONS.SECRET:
		
		break;
	case SECTIONS.DESCENT:
		
		break;
	case SECTIONS.LAVA:
		
		break;
	case SECTIONS.LAVAMONSTER:
		
		break;
	case SECTIONS.NEST:
		
		break;
	case SECTIONS.QUEENSLAIR:
		
		break;
}
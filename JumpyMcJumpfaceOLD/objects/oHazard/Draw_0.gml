/// @description Insert description here
// You can write your code in this editor
if(exists){
	sprite_index = hazard;
	image_index = hazard_type;
	draw_self();
} else {
	sprite_index = noone;
}

// Better version for later
//switch(hazard_type){
//	case HAZARDSTATE.FIRE:
//		// change sprite
//		break;
//	case HAZARDSTATE.SPIKES:
//		// change sprite
//		break;	
//	case HAZARDSTATE.ELECTRICITY:
//		// change sprite
//		break;
//}
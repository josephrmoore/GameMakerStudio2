var button_id = argument0;

switch(button_id){
	case 0:
		// +2 cannons
		for(var i=0; i<2; i++){
			var thisaxis = round(random_range(0,1));
			add_cannon(thisaxis);
		}
		break;
	case 1:
		// +2 cannons
		for(var i=0; i<2; i++){
			var thisaxis = round(random_range(0,1));
			add_cannon(thisaxis);
		}
		break;
	case 2:
		// +4 cannons
		for(var i=0; i<4; i++){
			var thisaxis = round(random_range(0,1));
			add_cannon(thisaxis);
		}
		break;
	case 3:
		// +4 cannons
		for(var i=0; i<4; i++){
			var thisaxis = round(random_range(0,1));
			add_cannon(thisaxis);
		}
		break;
	case 4:
		// +6 cannons
		for(var i=0; i<6; i++){
			var thisaxis = round(random_range(0,1));
			add_cannon(thisaxis);
		}
		break;
	case 5:
		// -2 cannons
		for(var i=0; i<2; i++){
			delete_cannon();
		}
		break;
	case 6:
		// -2 cannons
		for(var i=0; i<2; i++){
			delete_cannon();
		}
		break;
	case 7:
		// -4 cannons
		for(var i=0; i<4; i++){
			delete_cannon();
		}
		break;
	case 8:
		// -4 cannons
		for(var i=0; i<4; i++){
			delete_cannon();
		}
		break;
}
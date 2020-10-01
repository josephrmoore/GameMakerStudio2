function menu_init() {
	var menu_items;
	menu_items[0] = MAINMENUITEMS.START;

	if(oGame.last_level_finished>0){
		menu_items[1] = MAINMENUITEMS.CONTINUE;
		if(oGame.finished_game){
			menu_items[2] = MAINMENUITEMS.LEVELSELECT;
			menu_items[3] = MAINMENUITEMS.CONTROLS;
		} else {
			menu_items[2] = MAINMENUITEMS.CONTROLS;
		}
	} else {
		if(oGame.finished_game){
			menu_items[1] = MAINMENUITEMS.LEVELSELECT;
			menu_items[2] = MAINMENUITEMS.CONTROLS;
		} else {
			menu_items[1] = MAINMENUITEMS.CONTROLS;
		}
	}

	return menu_items;


}

enum MENUS {
	MAIN,
	LEVELSELECT,
	OPTIONS,
	CONTROLS,
	DISPLAY,
	ABOUT,
	REMAP,
	PAUSE,
	RESTART,
	CONFIRM
}

var main_menu = ["START", "LEVEL SELECT", "OPTIONS", "EXIT"];
var level_select_menu = ["Level 1","Level 2","Level 3","Level 4","Level 5","Level 6","Level 7","Level 8","Level 9",];
var options_menu = ["CONTROLS", "DISPLAY", "ABOUT"];
var controls_menu = ["REMAP CONTROLS", "BACK"];
var display_menu = ["RESIZE","BACK"];
var about_menu = ["BACK"];
var remap_menu = ["SAVE CHANGES", "BACK"];
var pause_menu = ["BACK", "RESTART", "QUIT"];
var restart_menu = ["Restart level", "Quit"];
var confirm_menu = ["CANCEL", "CONFIRM"];

all_menus = [];
all_menus[MENUS.MAIN] = main_menu;
all_menus[MENUS.LEVELSELECT] = level_select_menu;
all_menus[MENUS.OPTIONS] = options_menu;
all_menus[MENUS.CONTROLS] = controls_menu;
all_menus[MENUS.DISPLAY] = display_menu;
all_menus[MENUS.ABOUT] = about_menu;
all_menus[MENUS.REMAP] = remap_menu;
all_menus[MENUS.PAUSE] = pause_menu;
all_menus[MENUS.RESTART] = restart_menu;
all_menus[MENUS.CONFIRM] = confirm_menu;
enum MENUS {
	MAIN,
	LEVELS,
	OPTIONS,
	ABOUT,
	PAUSE,
	RESTART,
	CONFIRM
}

var main_menu = ["START", "LEVELS", "OPTIONS", "QUIT"];
var levels_menu = ["PLAY", "BACK"];
var options_menu = ["ABOUT", "BACK"];
var about_menu = ["BACK"];
var pause_menu = ["KEEP PLAYING", "DO OVER", "GO HOME"];
var restart_menu = ["DO OVER", "GO HOME"];
var confirm_menu = ["GO BACK", "QUIT!!!"];

all_menus = [];
all_menus[MENUS.MAIN] = main_menu;
all_menus[MENUS.LEVELS] = levels_menu;
all_menus[MENUS.OPTIONS] = options_menu;
all_menus[MENUS.ABOUT] = about_menu;
all_menus[MENUS.PAUSE] = pause_menu;
all_menus[MENUS.RESTART] = restart_menu;
all_menus[MENUS.CONFIRM] = confirm_menu;
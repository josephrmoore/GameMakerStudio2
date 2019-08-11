/// @description Insert description here
// You can write your code in this editor
show_debug_message("room created");

var w = 51;
var h = 44;

for(var i=0; i<global.mapvars[6]; i++){
	show_debug_message("in i");
	for(var j=0; j<global.mapvars[5]; j++){
		show_debug_message("in j");
		instance_create_layer(global.mapvars[3]+(j*w), global.mapvars[4]+(i*h), "Map", oMapScreen);
	}
}
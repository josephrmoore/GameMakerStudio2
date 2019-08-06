/// @description Insert description here
// You can write your code in this editor
var starting_x = 50;
var ending_x = 500;

var y_margin = 50;
var y_padding = 48;
var y_height = 64;
var border = 1.3; // as a scale percentage of the sTerminal sprite

color_hexes[0] = make_color_rgb(142,0,0);
color_hexes[1] = make_color_rgb(239,66,19);
color_hexes[2] = make_color_rgb(255,248,153);
color_hexes[3] = make_color_rgb(59,191,98);
color_hexes[4] = make_color_rgb(0,67,204);
color_hexes[5] = make_color_rgb(101,0,178);

num_terminals = 6;
num_node_holders = 3;

var middle_dist = ending_x-starting_x;
var each_node = middle_dist/(num_node_holders+1);

starting = [COLORS.RED, COLORS.ORANGE, COLORS.YELLOW, COLORS.GREEN, COLORS.BLUE, COLORS.PURPLE];
solution = [COLORS.PURPLE, COLORS.BLUE, COLORS.GREEN, COLORS.YELLOW, COLORS.ORANGE, COLORS.RED];


node_row = [];
terminals_start = [];
terminals_end = [];

for(var i=0; i<num_terminals; i++){
	terminals_start[i] = instance_create_layer(starting_x, (y_margin+(i*(y_height+y_padding))), "Terminals", oTerminal);
	with(terminals_start[i]){
		color = other.starting[i];
		row = i;
	}
	terminals_end[i] = instance_create_layer(ending_x, (y_margin+(i*(y_height+y_padding))), "Terminals", oTerminal);
	with(terminals_end[i]){
		is_solution = true;
		row = i;
	}
	with(instance_create_layer(ending_x, (y_margin+(i*(y_height+y_padding))), "TerminalKey", oTerminal)){
		// key 
		image_xscale = border;
		image_yscale = border;
		color = other.solution[i];
		row = i;
	}
	var nodes = [];
	for (var j=0; j<num_node_holders; j++){
		nodes[j] = instance_create_layer((each_node*(j+1))+starting_x, y_margin+(i*(y_height+y_padding)),"NodeHolders",oNodeHolder);
		with(nodes[j]){
			row = i;
			column = j;
		}
	}
	node_row[i] = nodes;
}
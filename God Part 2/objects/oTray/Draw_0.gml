/// @description Insert description here
// You can write your code in this editor
for(var i=0; i<num_terminals; i++){

	var t1 = terminals_start[i];
	var t2 = terminals_end[i];
	var nodes = node_row[i];
	var first_node = nodes[0];
	var last_node = nodes[array_length_1d(nodes)-1];
	first_node.color = t1.color;
	
	draw_set_color(color_hexes[t1.color]);
	draw_line_poly(t1.x, t1.y, first_node.x, first_node.y, 5);
	
	
	for(var j=0; j<num_node_holders-1; j++){
		// logic for changing the lines here
		var n1 = nodes[j];
		var n2 = nodes[j+1];
		// end logic
		n2.color = n1.color;
		draw_set_color(color_hexes[n1.color]);
		draw_line_poly(n1.x, n1.y, n2.x, n2.y, 5);
	}
	// logic for changing the last line from last node here
	t2.color = last_node.color;
	draw_set_color(color_hexes[last_node.color]);
	draw_line_poly(last_node.x, last_node.y, t2.x, t2.y, 5);
}
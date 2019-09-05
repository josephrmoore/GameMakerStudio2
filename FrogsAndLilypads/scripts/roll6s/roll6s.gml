var num_dice;
var results;

if(argument_count == 1){
	num_dice = argument[0];
} else {
	num_dice = 1;
}

for(var i=0; i<num_dice; i++){
	results[i] = random_range(1,6);
}

return results;

/// @description Insert description here
// You can write your code in this editor

rings++;

if(rings>45){
	if(bloomed == 2){
		grow_money(tree_state);
		bloomed = 3;
	}
} else if(rings>30){
	tree_state = TREESTATE.ADULT;
} else if (rings>20){
	if(bloomed == 1){
		grow_money(tree_state);
		bloomed = 2;
	}
} else if (rings>10){
	tree_state = TREESTATE.SAPLING;
} else if (rings>5){
	if(bloomed == 0){
		grow_money(tree_state);
		bloomed = 1;
	}
}


//if(rings > 10 && rings < 30){
//	tree_state = TREESTATE.SAPLING;
//} else if(rings > 30){
//	tree_state = TREESTATE.ADULT;
//}


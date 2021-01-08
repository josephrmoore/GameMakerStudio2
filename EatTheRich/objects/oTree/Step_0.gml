/// @description Insert description here
// You can write your code in this editor
image_index = tree_state;
if(alarm[0] <= 0){
	alarm[0] = 600;
}

switch(tree_state){
	case TREESTATE.BABY:
		TreeState_Baby();
		break;
	case TREESTATE.SAPLING:
		TreeState_Sapling();
		break;
	case TREESTATE.ADULT:
		TreeState_Adult();
		break;
}
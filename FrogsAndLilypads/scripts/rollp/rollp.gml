var roll = roll6s();
roll[0]--;
if(roll[0] == 5){
	oBrain.predators_active = true;
	return -1;
} else {
	return roll[0];
}
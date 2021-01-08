// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function consumer_check(){
	// eat
	net_worth -= hunger;
	
	// check for starvation
	
	if(net_worth < 0){
		consumer_state = CONSUMERSTATE.DEAD;
	}
	
	// check current class, set vars
	
	if(net_worth<oGame.poverty_line){
		consumer_class = CONSUMERCLASS.POOR;
		size = 1;
		speed_multiplier = 3;
		hunger = 1;
	} else if (net_worth>oGame.wealth_line){
		consumer_class = CONSUMERCLASS.RICH;
		size = 5;
		speed_multiplier = 2;
		hunger = 10;
	} else if (net_worth>oGame.poverty_line && net_worth<oGame.wealth_line){
		consumer_class = CONSUMERCLASS.MIDDLE;
		size = 3;
		speed_multiplier = 1;
		hunger = 100;
	}
	
}
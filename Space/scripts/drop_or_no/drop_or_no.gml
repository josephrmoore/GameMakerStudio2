var dropodds = 3;
var total = 7;
var randy = random_range(0,total);

var missileodds = 3;
var bighealthodds = 1;
var droptotal = 10;
var randy2 = round(random_range(0,droptotal));

if(randy<=dropodds){
	if(randy2 <= bighealthodds){
		instance_create_layer(x,y,"Pickups",oPickupHealthLarge);
	} else if (randy2 <= missileodds){
		instance_create_layer(x,y,"Pickups",oPickupMissiles);
	} else {
		instance_create_layer(x,y,"Pickups",oPickupHealthSmall);
	}
}

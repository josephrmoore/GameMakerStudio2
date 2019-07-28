var grv = 0.4;

if(y==startY){
	vsp = -5+random_range(-2,2);
} else if (y<startY){
	vsp+=grv;
} else {
	y = startY;
}

y += ceil(vsp);


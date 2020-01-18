if(oPlayer.x >= bbox_left && oPlayer.x < (bbox_left+30)){
	image_index = 0;
} else if (oPlayer.x >= (bbox_left+30) && oPlayer.x < (bbox_left + 60)){
	image_index = 1;
} else if (oPlayer.x >= (bbox_left+60) && oPlayer.x < (bbox_left + 105)){
	image_index = 2;
} else if (oPlayer.x >= (bbox_left+105) && oPlayer.x < (bbox_left + 180)){
	image_index = 3;
} else if (oPlayer.x >= (bbox_left+180) && oPlayer.x < (bbox_left + 210)){
	image_index = 4;
}
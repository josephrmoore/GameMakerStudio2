function pos() {
	//x+=hsp;
	//y+=vsp;

	vsp = clamp(vsp,-jSpeedHigh,max_vsp);

	oPlayer.x+=floor(oPlayer.hsp*oGame.DT);
	oPlayer.y+=floor(oPlayer.vsp*oGame.DT);


}
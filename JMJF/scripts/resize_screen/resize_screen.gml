function resize_screen() {
	var win_wid=window_get_width();
	var win_hgt=window_get_height();
	var scale;
	var maincam;

	if win_wid/win_hgt>=(1920/1080) {
	    //wider
	    scale=win_wid/1920;
	} else {
	    //taller
	    scale=win_hgt/1080;
	}
	view_hport[0]=win_hgt;
	view_wport[0]=win_wid;
	camera_set_view_size(maincam,win_wid/scale,win_hgt/scale);



}

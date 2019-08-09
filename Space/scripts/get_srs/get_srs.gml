var thisroom = room_get_name(room);

var camera_w = 1024;
var camera_h = 878;

// ceil because we want an extra "tile" if there's even a pixel more than our alotted screen width
var x_tiles = ceil(room_width/camera_w);

var player_x_tile = floor(oPlayer.x/camera_w);
var player_y_tile = floor(oPlayer.y/camera_h);

var n = (player_y_tile*x_tiles)+player_x_tile;
if(n<10){
	n = "0"+string(n);
} else {
	n = string(n);
}

var srs = thisroom + n;

return srs;

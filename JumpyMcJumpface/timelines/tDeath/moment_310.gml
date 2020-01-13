//room_restart();
// need custom restart to skip rising part
oCannon.activated = true;
oPlayer.x = oElevator.x + round(oElevator.sprite_width/2);
oPlayer.y = oElevator.y - ceil(oPlayer.sprite_height/2);
oPlayer.player_state = PLAYERSTATE.IDLE;
oPlayer.launch_x = oPlayer.x;
oPlayer.launch_y = oPlayer.y;
room_music();

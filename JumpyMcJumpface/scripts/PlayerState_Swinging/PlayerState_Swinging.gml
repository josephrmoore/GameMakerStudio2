//var _ropeAngleAcceleration = -0.2* dcos(ropeAngle);
//_ropeAngleAcceleration += ((oGame.move_right - oGame.move_left) * 0.08);
////ropeAngleVelocity += _ropeAngleAcceleration;
//ropeAngleVelocity += _ropeAngleAcceleration*oGame.DT;
//ropeAngleVelocity = clamp(ropeAngleVelocity, -3, 3);
//ropeAngle += ropeAngleVelocity;
//// DAMPING
////ropeAngleVelocity *= 0.99;
//ropeX = grappleX + lengthdir_x(ropeLength,ropeAngle);
//ropeY = grappleY + lengthdir_y(ropeLength,ropeAngle);

//hsp = ropeX - x;
//vsp = ropeY - y;

//var vine = argument0;

if(oGame.buttons){
	player_state = PLAYERSTATE.JUMPING;
}

//jumping();
collisions();

//pos();

launch_x = x;
launch_y = y;

check_for_ending();

sprite_index = player_jumping;
if(hsp<0){
	image_xscale = -1;
} else {
	image_xscale = 1;
}
/// @description Insert description here
// You can write your code in this editor
///step event
angle_accelerration = -.1 * dcos(angle);
    
angle_velocity += angle_accelerration;
angle += angle_velocity;

//angle_velocity *= velocity_dampening;

var new_x = anchor_x + lengthdir_x(distance, angle);
var new_y = anchor_y + lengthdir_y(distance, angle);

hsp = new_x - x;
vsp = new_y - y;

x += hsp;
y += vsp;


if(!oGame.buttons){

}

if(distance_to_point(oPlayer.x,oPlayer.y)<10){
	oPlayer.x = x;
	oPlayer.y = y;
}
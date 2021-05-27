/// @description Insert description here
// You can write your code in this editor

// 1. velocity calculations

vsp += (oGame.grv/60);
left_right();
jumping();

// 2. collision checks

player_object_collision(oWall);

// 3. update position

y += vsp;
x += hsp;
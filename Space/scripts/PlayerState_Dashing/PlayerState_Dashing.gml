hsp = 5*mSpeed*facing;
vsp = 0;

player_collision();
object_collision(oDoor);
enemy_collision(oEnemy, 1);
player_collision();

x += hsp;
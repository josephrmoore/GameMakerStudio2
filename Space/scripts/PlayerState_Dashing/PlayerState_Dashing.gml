hsp = 5*mSpeed*facing;
vsp = 0;

player_collision();
object_collision(oDoor);
enemy_collision(oEnemy);
player_collision();

x += hsp;
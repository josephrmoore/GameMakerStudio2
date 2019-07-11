if playerType=0 Enemy=instance_nearest(x, y, obEnemy)
if playerType=1 and enemyRestore=0 { alarm[1]=irandom_range(room_speed, room_speed*2) enemyRestore=1 Enemy=instance_nearest(x, y, choose(obPlayer, obAlly)) }
if playerType=1 and instance_exists(obAlly) and obAlly.Death[0] { Enemy=instance_nearest(x, y, obPlayer) }
if playerType=1 and instance_exists(obPlayer) and obPlayer.Death[0] { Enemy=instance_nearest(x, y, obAlly) }
if playerType=1 and !instance_exists(obAlly) { Enemy=instance_nearest(x, y, obPlayer) }

if enemyMove=0 and Disable and Enable {
    if Hurting=0 and Attacking=0 {
        if instance_exists(Enemy) {
           if Enemy.Death[0]=0 and Death[0]=0 and !Hurting && sprite_index!=Jump {
                   if Enemy.x>x {
                        image_xscale=nXscale
                        enemyMoving=0
                        if sprite_index!=Land and !Attacking sprite_index=Walk;
                        if sprite_index!=Land && (gravity=0 or Move=0.5) { hspeed=0 if distance_to_object(Enemy)>heroRange[Hero] { enemyMoving++ image_xscale=nXscale x+=Move; } }
                    } else {
                        image_xscale=-nXscale
                        enemyMoving=0
                         if sprite_index!=Land and !Attacking sprite_index=Walk;
                         if sprite_index!=Land && (gravity=0 or Move=0.5) { hspeed=0 if distance_to_object(Enemy)>heroRange[Hero] { enemyMoving++ image_xscale=-nXscale x-=Move; } }
                         }
                    }
           }
    }
}


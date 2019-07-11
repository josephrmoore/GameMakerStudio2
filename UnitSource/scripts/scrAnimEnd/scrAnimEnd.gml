if sprite_index=Land and sprite_index!=Dead { Attacking=0 sprite_index=Stand; image_index=0; }
if sprite_index=Dead { hspeed=0; image_index=(image_number-1) }

if sprite_index=spAttack_09 and vikingAttack[1] { vikingAttack[0]-- }
if sprite_index=spAttack_09 and vikingAttack[0]<=0 { vikingAttack[1]=0 }

if sprite_index=spSpawn_01 {
    sprite_index=Stand;
    image_index=0;
    Attacking=0;
    MoveType=-1;
    Hurting=0;
}

if sprite_index=Atk[4] and (Hero=0) {

    if Multiplayer=0 {
        with Enemy.id {
            if id!=other.id {
                Health=Health/2
            }
        }
    } else {
      
    }
    
    iD=instance_create(x, y-sprite_height/2, obHeart)
    iD.painDefault=painDefault
    iD.iD=id
}
for (i=0; i<5; i++) {
    if sprite_index=Atk[i] {
        sprite_index=Stand;
        image_index=0;
        Attacking=0;
        MoveType=-1;
        hspeed=0;
    }
}

for (i=0; i<3; i++) {
    if sprite_index=Hrt[i] and sprite_index!=Dead and sprite_index!=Jump {
       sprite_index=Stand;
       image_index=0;
       Hurting=0;
       Attacking=0;
       MoveType=-1;
       friction=.15
       hspeed=0;
    }
}



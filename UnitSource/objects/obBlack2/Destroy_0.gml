cardPos=0
yRange=-180
//if os_type=os_android
{
    iD=instance_create(-100, -100, obMove);
    iD.type=0;
    iD=instance_create(-100, -100, obMove);
    iD.type=1;
    
    if instance_exists(obPlayer) and obPlayer.JumpSpeed!=0
       instance_create(-100, -100, obJump)

    for (i=0; i<5; i+=1) {
        if cardAcitve[Champion, i] {
            iD=instance_create(-100, -100, obCard);
            iD.type=i;
        }
    }

}

if Help instance_create(-100, -100, obBattle)


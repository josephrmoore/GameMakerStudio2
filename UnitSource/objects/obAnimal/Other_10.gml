Animal=0
if Animal=0 {
    Hurting=0
    image_speed=0.28
    Stand=spDog02_02
    Run=spDog00_02
    Atk=spDog01_02
    sprite_index=Stand
    MoveNormal=3
    Move=MoveNormal
    scrPlayerCard()
    Attacking=0
    Move=20
    alarm[0]=50
    Destroy=0
    //image_blend=c_gray
    if Used[1] {
        for (i=0; i<5; i+=1)
        {
            cardHit[Hero, i]=cardHit[Hero, i]*2;
        }
    }
}


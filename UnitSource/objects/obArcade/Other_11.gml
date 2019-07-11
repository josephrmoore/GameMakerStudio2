if champOwned[Champion]
{
    //room_goto(roGame00)
    
    audio_stop_sound(audioMusic[0])
    audio_stop_sound(audioMusic[1])
    
    scrSaveData("Champion", Champion)
    
    scrArcade()
    
    Disable=0
    
    for (i=0; i<10; i+=1)
    {
        iD=instance_create((490)*i, 900, obGround)
        iD.xx=i
    }
    
    audio_stop_sound(fxFantasy)
    audio_stop_sound(fxVictory2)
} else
{
    if Ruby>=champCost[Champion] {
            Ruby-=champCost[Champion]
            scrSaveData("Ruby", Ruby)
            audio_play_sound(fxStar3, 1, 0)
            
            champOwned[Champion]=1
            scrSaveData("champOwned"+string(Champion), 1)
            
            alarm[3]=5
    } else scrMessage("Not enough Ruby", 0)
}


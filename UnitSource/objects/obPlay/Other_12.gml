if !instance_exists(obDrawSpellAssign) {
    room_goto(roGame00)

    audio_stop_sound(audioMusic[0])
    audio_stop_sound(audioMusic[1])
    
    scrSaveData("Champion", Champion)
    
    Disable=0
    
    for (i=0; i<10; i+=1)
    {
        iD=instance_create((490)*i, 850, obGroundParent)
        iD.xx=i
    }
    
    audio_stop_sound(fxFantasy)
    audio_stop_sound(fxVictory2)
}


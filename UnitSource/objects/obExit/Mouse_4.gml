if !instance_exists(obBlack3) and !instance_exists(obBlack2)
{
    if scrLoadData("Help", 0)=1 and roundDefeat = 1 {
        audio_play_sound(fxClick, 1 , 0)
        
        scrSaveData("Defeated", 1)
        
        roundDefeat=2
        
        totalMatch++
        scrSaveData("totalMatch", totalMatch)
       
        Loss++
        scrSaveData("Loss", Loss)
        
        obSun.image_blend=c_green
        with obPlayer Death[0]=1
        
    }
    
    with obPlayer { sprite_index=Dead image_index=0 }
    audio_stop_sound(audioMusic[1])
    audio_stop_sound(fxPrepare)
    
    with obPlayerParent instance_destroy()
    with obBlack3 instance_destroy()
    //with obButtons instance_destroy()
    
    room_goto(roMenu)
    
    instance_destroy()
}



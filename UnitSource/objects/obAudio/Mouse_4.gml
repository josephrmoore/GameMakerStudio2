if !instance_exists(obOverview) and !instance_exists(obBlack) and !instance_exists(obBackSpells)
{
    Music=!Music
    
    audio_stop_sound(auMusic00)
    if Music audio_play_sound(auMusic00, 1, 1)
    
    scrSaveData("Music", Music)
}


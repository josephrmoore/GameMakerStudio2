if !used and image_alpha=1
{
     if roundDefeat!=2 and roundVictory!=2 and Round!=3 {
        if Sound and Round!=0 audio_play_sound(fxPrepare, 10, 0)
    }
    used=1
}

if remove imagealpha-=0.1

if image_alpha<=1 and !remove image_alpha+=.1

if made=2 image_alpha-=.075
if image_alpha<=0 instance_destroy()

if image_alpha>=1 and made=0 {

   audio_stop_sound(audioMusic[1])
   enemyCount=0
    with obReturn instance_destroy()
    with obPlayerParent instance_destroy()
    with obEnemy instance_destroy()
    with obPart instance_destroy()
    
    if roundVictory!=2 and roundDefeat!=2 {
    
        scrCreate()
    
    }
    if roundVictory=2 or roundDefeat=2 {
        with obPlayerParent instance_destroy()
        with obBlack3 instance_destroy()
        with obButtons destroy=1
        
        room_goto(roMenu)
        alarm[1]=1
    }
    alarm[0]=100
    made=1
}


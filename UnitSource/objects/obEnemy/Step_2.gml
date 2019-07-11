if sprite_index=Jump and !Hurting {
   if vspeed<0 image_index=1 else image_index=0
}

if hp<=0 and Death[0]=0 and gravity=0 and Enemy.Death[0]=0 {
   Death[0]=1;
   
   //destroy=1
   
   sprite_index=Dead;
   image_index=0;
   friction=.15
   
   enemyCount--
   if enemyCount=0 { gameEnd=1 alarm[2]=35 with obSun { image_blend=c_gray match=0 } roundVictory+=1 }
   
   if instance_exists(obPlayer) and enemyCount=0 {
       if roundVictory=2 audio_play_sound(fxVictory2, 1, 0)
       //if roundVictory<2 audio_play_sound(fxVictory3, 1, 0)
   }
   if enemyCount=0 {
       audio_stop_sound(fxRound3)
       audio_stop_sound(audioMusic[1])
   }
   
   if roundVictory=2 { Victory++ achievement_post_score("CgkI-tLJkpQeEAIQAQ", Victory) }

   scrSaveData("Cookie", Cookie)
   scrSaveData("Defeated", 0)

   scrSaveData("Victory", Victory)
   if roundVictory=2 scrSaveData("Defeated", 0)
   if roundVictory=2 scrSaveData("Help", 1)
   if roundVictory=2 scrSaveData("helpMade", 1)
   
    scrDropRate()
   
    if roundVictory=2 {
        if Level>1 maxXP+=30 else maxXP+=200
        Burn=maxXP
   
        scrLevel()
   }
   scrQuest()
   scrEnemyDeath()
}
if destroy image_alpha-=0.1
if image_alpha<=0 instance_destroy()

if Death[0] { depth=-90 }


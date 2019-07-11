if !instance_exists(obBackSpells)
{
    //if Cookie>0
    //{
        playCount++
        event_user(playCount)
    //} else scrMessage("No more cookies", 0)
} else {
    if !champOwned[Champion]
    {
        if x!=xstart
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
    } else {
      playCount++
      event_user(playCount)
    }
}

/*if champOwned[Champion]
{
    if Cookie>0
    {
        playCount++
        event_user(playCount)
    } else scrMessage("No more cookies", 0)
} else {
  if instance_exists(obBackSpells)
  {
      if Ruby>=champCost[Champion] {
            Ruby-=champCost[Champion]
            scrSaveData("Ruby", Ruby)
            audio_play_sound(fxStar3, 1, 0)
            
            champOwned[Champion]=1
            scrSaveData("champOwned"+string(Champion), 1)
            
        } else scrMessage("Not enough Ruby", 0)
  } else event_user(playCount)
}

/* */
/*  */

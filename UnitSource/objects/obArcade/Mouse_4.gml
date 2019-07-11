if x=xstart arcadeMode=!arcadeMode

if gameCount=-1
{
    gameCount++
    
    event_user(gameCount)
    
    exit
}

if gameCount=0
{
 if champOwned[Champion]
 {
    gameCount++
    
    event_user(gameCount)
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
}


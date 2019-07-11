scrFireEngine()

moonMove=0

alarm[2]=10

//Cookie
cookieTime=scrLoadData("cookieTime", current_hour)
checkTimeCookie=0
checkTimeAlarm=90
//End

Begin2=0
gameDuring=0

saveCheck=0

//champOwned[10]=1

globalvar yRange;
yRange=-180

adType=0

if Version=1 {
   if Achievement[0, 26]=0 {
       scrQuestCreate(26)
       
       if achievement_available() achievement_post("CgkI-tLJkpQeEAIQCA", 50)
       
}
   if Achievement[0, 33]=0 and Victory=1 {
       scrQuestCreate(33)
   }
}


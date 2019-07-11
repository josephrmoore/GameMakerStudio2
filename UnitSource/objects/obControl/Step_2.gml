if checkTimeCookie=0 and Cookie<30
{
    checkTimeCookie=1
    checkCookie=date_compare_date(cookieTime, current_hour)
    
    if checkCookie=1 or checkCookie=-1
    {
        Ruby+=50
        scrSaveData("Ruby", Ruby)
        scrMessage("+50 Hourly Ruby", 0)
        
        scrSaveData("cookieTime", current_hour)
        cookieTime=scrLoadData("cookieTime", current_hour)
    }
}

if checkTimeCookie checkTimeAlarm--
if checkTimeAlarm<=0 { checkTimeAlarm=90 checkTimeCookie=0 }

if Achievement[0, 44]=0 and Level=5 {
    scrQuestCreate(44)
}

if Achievement[0, 45]=0 and Level=7 {
    scrQuestCreate(45)
}
if Achievement[0, 46]=0 and Level=9 {
    scrQuestCreate(46)
}
if Achievement[0, 47]=0 and Level=10 {
    scrQuestCreate(47)
}


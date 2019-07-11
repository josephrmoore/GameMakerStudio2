if !instance_exists(obMission) and !instance_exists(obBlack) && !instance_exists(obOverview) && !instance_exists(obBackSpells) {
   alarm[1]=1;
}

if Victory=0 or Victory=1 {
    with obArrow { object=2 event_user(0) }
    depth=-1
}


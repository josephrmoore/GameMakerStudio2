if missionType<4 {

    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
    
    iD=instance_create(1250, 100, obEnemy);
    iD.Enemy=obPlayer
    iD.Hero=missionType
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
}

if missionType=4 {
    iD=instance_create(1250-100, 100, obEnemy);
    iD.Hero=0
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=1
    with iD event_user(0)
    
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=2
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=2
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    if Champion!=4 iD.image_xscale=-1
    if Champion=4 iD.image_xscale=-0.65
    iD.Enemy=obEnemy
    
    iD=instance_create(4000-1250-100, 100, obAlly);
    iD.Hero=5
    iD.playerType=0
    iD.painDefault=1
    iD.Mode=0
    with iD event_user(0)
}

if missionType=5 {
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=0
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=1
    with iD event_user(0)
    
    iD=instance_create(1250-150, 100, obEnemy);
    iD.Hero=1
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=2
    with iD event_user(0)
    
    iD=instance_create(1250-300, 100, obEnemy);
    iD.Hero=2
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=2
    with iD event_user(0)
    
    iD=instance_create(4000-1250-100, 100, obAlly);
    iD.Hero=5
    iD.playerType=0
    iD.painDefault=1
    iD.image_xscale=-1
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
    
}

if missionType=6 {
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=4
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}

if missionType=7 {
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=3
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}

if missionType=8 {
    iD=instance_create(1250-150, 100, obEnemy);
    iD.Hero=1
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=3
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}

if missionType=9 {
    iD=instance_create(1250-150, 100, obEnemy);
    iD.Hero=1
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=3
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(1250-300, 100, obEnemy);
    iD.Hero=0
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}

if missionType=10 {
    iD=instance_create(1250-150, 100, obEnemy);
    iD.Hero=5
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=5
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(1250-300, 100, obEnemy);
    iD.Hero=5
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}

if missionType=11 {
    iD=instance_create(1250-150, 100, obEnemy);
    iD.Hero=1
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=1
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}

if missionType=12 {

    iD=instance_create(1250-300, 100, obEnemy);
    iD.Hero=1
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)

    iD=instance_create(1250-150, 100, obEnemy);
    iD.Hero=1
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=1
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}

if missionType=13 {
    iD=instance_create(1250-150, 100, obEnemy);
    iD.Hero=6
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}

if missionType=14 {
    iD=instance_create(1250-250, 100, obEnemy);
    iD.Hero=6
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=1
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}

if missionType=15 {
    
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=7
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}

if missionType=16 {
    
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=8
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}

if missionType=17 {
    
    iD=instance_create(1250, 100, obEnemy);
    iD.Hero=8
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(1250-150, 100, obEnemy);
    iD.Hero=7
    iD.playerType=1
    iD.painDefault=0
    iD.Mode=0
    with iD event_user(0)
    
    iD=instance_create(4000-1250, 100, obPlayer);
    iD.Enemy=obEnemy
}


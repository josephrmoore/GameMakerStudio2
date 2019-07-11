if alpha=1 image_alpha-=0.1;
if alpha!=1 && image_alpha<1 image_alpha+=0.1;
if image_alpha<=0 alpha=2
if alpha=2 {
    with obBlack alpha=1
    with obBackSpells alpha=1
    with obOverview alpha=1
    with obMission alpha=1
    instance_destroy();
}


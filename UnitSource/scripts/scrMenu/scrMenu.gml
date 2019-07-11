//with obControl instance_destroy()

if !instance_exists(obAds) instance_create(0, 0, obAds)

/*
if Level>=1 {
    iD=instance_create(940, 200, obTrophy)
    iD.image_xscale=2
    iD.image_yscale=2
    
}
*/

iD=instance_create(1140, 400, obStats)
iD.image_xscale=2
iD.image_yscale=2

iD=instance_create(1140, 600, obInfo)
iD.image_xscale=2
iD.image_yscale=2

/*
iD=instance_create(940, 400, obShop)
iD.image_xscale=2
iD.image_yscale=2
*/

iD=instance_create(940, 600, obAudio)
iD.image_xscale=2
iD.image_yscale=2

iD=instance_create(1140, 200, obPlay)
iD.image_xscale=2
iD.image_yscale=2


Multiplayer=0

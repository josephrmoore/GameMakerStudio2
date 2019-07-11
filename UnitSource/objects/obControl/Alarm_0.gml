if room=roMenu {
    iD=instance_create(random(room_width), random(room_height), obFlareGame)
    iD.image_xscale=choose(1, -1)
    alarm[0]=90*3
}


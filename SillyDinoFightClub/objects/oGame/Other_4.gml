/// @description Insert description here
// You can write your code in this editor
current_room = room_get_name(room);

switch(current_room){
	case "title":
		break;
	case "chooseplayer":
		break;
	case "game":
		var p1;
		var p2;
		switch(p1_fighter){
			case FIGHTERS.TREX:
				p1 = instance_create_layer(100,100,"Instances",oTRex);
				break;
			case FIGHTERS.TRICERATOPS:
				p1 = instance_create_layer(100,100,"Instances",oTri);
				break;
			case FIGHTERS.STEGASAURUS:
				p1 = instance_create_layer(100,100,"Instances",oSteg);
				break;
			case FIGHTERS.BRONTO:
				p1 = instance_create_layer(100,100,"Instances",oBronto);
				break;
			case FIGHTERS.ANKLY:
				p1 = instance_create_layer(100,100,"Instances",oAnkly);
				break;
		}
		p1.player_num = 1;
		p1.fighter_num = p1_fighter;
		if(p2_fighter != -1){
			switch(p2_fighter){
			case FIGHTERS.TREX:
				p2 = instance_create_layer(800,100,"Instances",oTRex);
				break;
			case FIGHTERS.TRICERATOPS:
				p2 = instance_create_layer(800,100,"Instances",oTri);
				break;
			case FIGHTERS.STEGASAURUS:
				p2 = instance_create_layer(800,100,"Instances",oSteg);
				break;
			case FIGHTERS.BRONTO:
				p2 = instance_create_layer(800,100,"Instances",oBronto);
				break;
			case FIGHTERS.ANKLY:
				p2 = instance_create_layer(800,100,"Instances",oAnkly);
				break;
			}
			p2.player_num = 2;
			p2.fighter_num = p2_fighter;
		}
		break;
	case "result":
		break;
	case "trashtalk":
		draw_sprite(sTrash, 0, 0, 0);
		break;
	case "endchoice":
		break;
}
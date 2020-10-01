function delete_cannon() {
	var thiscannon = instance_find(oCannon,0);
	if(thiscannon != noone){
		instance_destroy(thiscannon);
	}


}

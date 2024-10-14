/// @description Follow player

if(instance_exists(obj_player)){
	
	if (mouse_x < x) {
	    image_xscale = -1;
		meleeOffset = -15;
	} else {
	    image_xscale = 1;
		meleeOffset = 15;
	}

	x = obj_player.x + meleeOffset;
	y = obj_player.y;
	
}
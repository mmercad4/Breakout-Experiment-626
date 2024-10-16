var offset = 0
image_angle = point_direction(x, y, mouse_x, mouse_y);
if image_angle > 90 and image_angle < 270{
	image_yscale = -1
	offset = -3
}
else{
	image_yscale = 1
	offset = 3
}

// Follows player
if instance_exists(obj_player){
	x = obj_player.x + offset
	y = obj_player.y
	depth = obj_player.depth + 1
	
	if (obj_player.weapon_equipped){
		visible = true
	}
	else{ visible = false}
}



// Follows player
if instance_exists(obj_player){
	x = obj_player.x 
	y = obj_player.y
}
image_angle = point_direction(x, y, mouse_x, mouse_y);
if image_angle > 90 and image_angle < 270{
	image_yscale = -1
}
else{
	image_yscale = 1
}
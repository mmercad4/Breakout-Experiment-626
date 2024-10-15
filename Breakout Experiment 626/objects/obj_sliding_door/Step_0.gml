/// @description if the player approaches the door, open it
if instance_exists(obj_player) {
	
	if distance_to_object(obj_player) < 50 and image_yscale > 0.1 and not locked { 
		image_yscale -= 0.1
	}
	else if image_yscale != 1 and distance_to_object(obj_player) > 50 and image_yscale < max_y_scale { image_yscale += 0.1 }
}

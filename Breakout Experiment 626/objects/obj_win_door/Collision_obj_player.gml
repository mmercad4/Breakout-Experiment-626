/// @description go to win
if(instance_exists(obj_controller)){
	obj_controller.is_win = true
}

if(instance_exists(obj_player)){
	with(obj_player){instance_destroy()}
}

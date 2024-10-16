/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_controller)){
	if(not obj_controller.is_win){
		audio_play_sound(snd_player_death,10,false)
	}
}

if(instance_exists(obj_arm)){
	with(obj_arm){instance_destroy()}
}

// NEED TO DESTROY IF PLAYER WINS AS WELL
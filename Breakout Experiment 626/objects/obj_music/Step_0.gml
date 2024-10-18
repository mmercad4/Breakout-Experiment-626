/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)){
	if(obj_player.is_boss_present){
		audio_pause_sound(snd_theme)
		if(not audio_is_playing(snd_boss_theme)){
			audio_play_sound(snd_boss_theme,.35,true)
		}
	}
}
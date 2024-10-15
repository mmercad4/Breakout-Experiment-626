if weapon != noone and not global.draw_reload {
	audio_play_sound(snd_shotgun_reload,1,false)
	bullets_left = 0
	alarm[1] = weapon_stats.reload_time
	global.draw_reload = true
}
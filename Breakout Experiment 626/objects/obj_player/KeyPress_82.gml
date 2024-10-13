if weapon != noone and not global.draw_reload {
	bullets_left = 0
	alarm[1] = weapon_stats.reload_time
	global.draw_reload = true
}
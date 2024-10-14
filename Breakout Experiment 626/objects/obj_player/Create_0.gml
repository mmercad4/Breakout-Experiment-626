hp = 100
canShoot = true
points = 0
isJump = false

//shader stuff
ishit = false 
hit_timer = 0
hit_release = room_speed * 0.5
sh_handle_timer = shader_get_uniform(sh_FlashRed, "utimer")


weapon_stats = { //struct holding all the characteristics of the weapon you're holding
	damage : 0,
	propulsion : 0,
	clip_size : 0,
	reload_time : 0,
	num_bullets : 0,
	spread : 0,
	time_between_shots : 0
}
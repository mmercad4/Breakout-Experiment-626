hp = 100
canShoot = true
points = 0
bullets_left = 0
global.draw_reload = false //Whether or not to draw the reload bar above the player (within obj_controller)

weapon_stats = { //struct holding all the characteristics of the weapon you're holding
	damage : 0,
	propulsion : 0,
	clip_size : 0,
	reload_time : 0,
	num_bullets : 0,
	spread : 0,
	time_between_shots : 0
}

//Store old clips when switching guns
old_clips = [
	6, //Pistol
	2, //Shotgun
	1 //RPG
]
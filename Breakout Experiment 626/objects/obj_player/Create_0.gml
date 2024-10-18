//health
hp = 100
hp_packs = 3
damage_cooldown = 600;
last_damage_time = -damage_cooldown;
is_knockback = false;
is_boss_present = false;

//gold

coins = 0

//movement
canShoot = true
points = 0
bullets_left = 0
isJump = false
isMelee = false
meleeOffset = 0
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

//shader stuff
ishit = false 
hit_timer = 0
hit_release = room_speed * 0.5
sh_handle_timer = shader_get_uniform(sh_FlashRed, "utimer")

isheal = false 
heal_timer = 0
heal_release = room_speed * 0.5
sh_handle_timer_heal = shader_get_uniform(sh_FlashGreen, "utimer")



is_on_ground = function(){
	return place_meeting(x,y+1,obj_block)
}


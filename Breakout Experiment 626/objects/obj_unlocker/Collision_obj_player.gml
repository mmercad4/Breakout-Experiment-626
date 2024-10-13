//Unlock weapon
if weapon == obj_pistol {
	with obj_player {
		pistol_unlocked = true
		weapon = obj_pistol
		bullet = obj_pistol_bullet
		weapon_stats = switch_weapon(weapon)
		bullets_left = weapon_stats.clip_size
	}
}
else if weapon == obj_shotgun {
	if instance_exists(obj_pistol) { instance_destroy(obj_pistol) }
	with obj_player {
		shotgun_unlocked = true
		weapon = obj_shotgun
		bullet = obj_shotgun_bullet
		weapon_stats = switch_weapon(weapon)
		bullets_left = weapon_stats.clip_size
	}	
}
instance_destroy(self)
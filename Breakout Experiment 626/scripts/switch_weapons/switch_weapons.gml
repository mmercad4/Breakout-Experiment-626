// Script to automate weapon switching
// Returns a struct containing all the vars controlling weapon characteristics for the player
function switch_weapon(weapon_obj){
	if weapon_obj == obj_pistol {
		return {
			damage : 3,
			propulsion : 5,
			clip_size : 6,
			reload_time : 1.5,
			num_bullets : 1,
			spread : 3,
			time_between_shots : 2
		}
	}
	
	if weapon_obj == obj_shotgun {
		return {
			damage : 1,
			propulsion : 10,
			clip_size : 2,
			reload_time : 0.25,
			num_bullets : 6,
			spread : 15,
			time_between_shots : 2
		}
	}
}
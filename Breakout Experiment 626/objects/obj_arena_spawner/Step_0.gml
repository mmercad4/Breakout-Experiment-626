//Enemies var: list of enemy objects within arena
//Once dead, doors will unlock

if (active) {
	var _end = true
	for (var i = 0; i < array_length(enemies); i++) {
		if instance_exists(enemies[i]) {
			_end = false
		}
	}
	
	if _end == true { 
		end_arena(doors) 
		arena_beaten = true
		active = false
		}
}

if (not instance_exists(obj_player)){instance_destroy()}
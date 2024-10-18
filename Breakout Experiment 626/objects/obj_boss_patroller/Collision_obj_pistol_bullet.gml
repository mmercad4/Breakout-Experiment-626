/// @description Insert description here
// You can write your code in this editor
// Decrease health by the damage value (e.g., 20)
hp -= 20;

// Stop regenerating if the boss is hit
if(obj_player.weapon == obj_rpg) {
	is_regenerating = false;
}

instance_destroy(other)
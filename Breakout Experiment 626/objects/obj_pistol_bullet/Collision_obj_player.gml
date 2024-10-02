// obj_pistol_bullet Collision Event with obj_humanoid
if (bullet_owner != other.id) { // Check if the bullet owner is not the same as the colliding instance
    // This prevents the bullet from damaging its own creator
    with (other) {
        if (instance_exists(obj_player)) {
            obj_controller.player_hp -= obj_humanoid_patroller.damage; // Subtract damage from player's health
            if (obj_controller.player_hp <= 0) {
                instance_destroy(); // Handle player death
            }
        }
    }
		instance_destroy()
}
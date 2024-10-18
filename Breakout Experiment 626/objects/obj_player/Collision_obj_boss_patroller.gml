/// @description Collision Event for obj_player and obj_enemy

// Check if enough time has passed since the last damage was taken
if (current_time - last_damage_time >= damage_cooldown) {
    // Apply damage to player's health
    obj_player.hp -= 20; 
    last_damage_time = current_time; // Update the last damage time

    // Apply knockback effect
    var knockback_strength = 2; // Adjust this value to control knockback strength
    var knockback_upward = -2; // Upward velocity (negative value to move up)

    // Determine the direction to push the player based on the enemy's position
    if (x > other.x) {
        // Player is to the left of the enemy, push right
        obj_player.vspeed = knockback_upward; // Push the player up
        obj_player.hspeed = knockback_strength; // Push the player right
    } else {
        // Player is to the right of the enemy, push left
        obj_player.vspeed = knockback_upward; // Push the player up
        obj_player.hspeed = -knockback_strength; // Push the player left
    }

    // Start a temporary knockback effect
    obj_player.is_knockback = true; // Set knockback state
    obj_player.knockback_timer = room_speed * 0.5; // Lasts for half a second (30 frames at 60 FPS)
}

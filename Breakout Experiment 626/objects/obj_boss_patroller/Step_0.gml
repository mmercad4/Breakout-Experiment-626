// Step Event for obj_patroller

// Check if the boss has taken damage
if (hp < 1000) {
    is_damaged = true; // Mark as damaged
}

// Destroy the instance if health is zero or below
if (hp <= 0) {
    instance_destroy();
}

// Adjust the sprite's horizontal scale based on the direction and sprite index
if (sprite_index == spr_boss_attack3) {
    if (direction > 90 && direction < 270) {
        image_xscale = -1; // Face right
    } else {
        image_xscale = 1; // Face left
    }
} else {
    // For other sprites, keep the original logic
    if (direction > 90 && direction < 270) {
        image_xscale = 1; // Face right
    } else {
        image_xscale = -1; // Face left
    }
}

// Regeneration Logic
if (hp < 250 && sprite_index != spr_boss_special && !is_patrolling && alarm[2] == -1) {
    // Change to special sprite and start regenerating health
    sprite_index = spr_boss_special;
    is_regenerating = true; // Start the regeneration process
    
    // Stop the shooting alarm while regenerating
    alarm[0] = -1; // Disable the shooting alarm
    
    // Set the regeneration cooldown (500 seconds)
    alarm[2] = 500; // 500 seconds, assuming room_speed is 60
}

// Regenerate health if the boss is in special state
if (is_regenerating) {
    if (hp < 1000) { // Cap health to 5000
        hp += 10; // Regenerate 10 health points per step; adjust as necessary
    }
    if (hp >= 1000) {
        hp = 1000; // Ensure health does not exceed maximum
        is_regenerating = false; // Stop regenerating once max health is reached
        sprite_index = spr_boss_attack1; // Change back to attack sprite
    }
}

// Check if the player exists in the room
if (instance_exists(obj_player)) {
    // Calculate distance to the player
    var dist_to_player = distance_to_object(obj_player);

    // Check if the player is within attack range
    if (dist_to_player < attack_range) {
        // Check if there's a wall or solid object between the enemy and the player
        var collision_with_wall = collision_line(x, y, obj_player.x, obj_player.y, obj_block, true, true);
        
        // If no wall is detected (i.e., no object blocking the line of sight), shoot
        if (!is_patrolling && !is_regenerating) { // Don't shoot if regenerating
            // Ensure the alarm is active to handle shooting
            if (alarm[0] == -1) { // Check if the alarm is not set
                alarm[0] = shooting_delay; // Start the shooting alarm
                sprite_index = spr_boss_attack1; // Change to the attack sprite
            }
        } else {
            // Stop shooting if there is a wall or if regenerating
            alarm[0] = -1; // Disable the shooting alarm
        }
    } else {
        // Stop the shooting alarm if the player is out of range
        alarm[0] = -1; // Disable the shooting alarm
    }

    // Check if the distance to the player is more than 280
    if (dist_to_player > 280 && dist_to_player <= 300) {
        // Allow patrolling if not already patrolling
        if (!is_patrolling && !is_regenerating) {
            is_patrolling = true; // Set patrolling state to true
            sprite_index = spr_boss_attack3; // Change to patrolling sprite
            
            // Start the path movement
            path_start(walk_path, 2, path_action_stop, false); // Start path movement
            
            // Set alarm to reset is_patrolling after 5 seconds (assuming 60 FPS: 60 frames/second * 5 seconds)
            alarm[1] = 360; // Set alarm[1] to 300 frames (for 60 FPS)
        }
    }
}

// Check if the enemy has reached the end of the path
if (is_patrolling && path_position >= path_get_length(walk_path) - 1) {
    // Reset the state and resume shooting
    is_patrolling = false; // Set patrolling state to false
    sprite_index = spr_boss_attack1; // Change back to attack sprite
    alarm[0] = shooting_delay; // Restart shooting

    // Stop following the path
    path_end(); // Stop following the path
}

// Alarm Event for obj_patroller (add this part)
if (alarm[1] == 0) {
    is_patrolling = false; // Reset patrolling state to false
    sprite_index = spr_boss_attack1; // Change back to attack sprite
    alarm[0] = shooting_delay; // Restart shooting
}

// Handle regeneration cooldown in the Alarm Event
if (alarm[2] == 0) {
    // This alarm will be reset after regeneration occurs
    is_regenerating = false; // Allow regeneration again after cooldown
}

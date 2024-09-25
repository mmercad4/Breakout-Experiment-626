// Step Event for obj_patroller

// Check if the player exists in the room
if (instance_exists(obj_player)) {
    // Calculate distance to the player
    var dist_to_player = distance_to_object(obj_player);

    // Check if the player is within attack range
    if (dist_to_player < attack_range) {
        // Ensure the alarm is active to handle shooting
        if (alarm[0] == -1) { // Check if the alarm is not set
            alarm[0] = shooting_delay; // Start the shooting alarm
        }
    } else {
        // Stop the shooting alarm if the player is out of range
        alarm[0] = -1; // Disable the shooting alarm
    }

    // Keep following the path while shooting
    if (path_index == -1) { // If not already following a path
        path_start(walk_path, path_speed, path_action_restart, true); // Restart the path
    }
}

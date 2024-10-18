/// @description Insert description here
// You can write your code in this editor
// Step Event for obj_patroller

// Check if the player exists in the room
if hp < 100 {
    is_damaged = true;
}
if hp <= 0 {
	audio_play_sound(snd_machine_death,.25,false)
    instance_destroy();
}

if (direction > 90 && direction < 270)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}


// Check if the player exists
if (instance_exists(obj_player)) {
    // Calculate distance to the player
    var dist_to_player = distance_to_object(obj_player);

    // Check if the player is within attack range
    if (dist_to_player < attack_range) {
        
        // Check if there's a wall or solid object between the enemy and the player
        var collision_with_wall = collision_line(x, y, obj_player.x, obj_player.y, obj_block, true, true);

        // If no wall is detected (i.e., no object blocking the line of sight), shoot
        if (collision_with_wall == noone) {
			
			sprite_index = spr_bot_attack
            // Ensure the alarm is active to handle shooting
            if (alarm[0] == -1) { // Check if the alarm is not set
                alarm[0] = shooting_delay; // Start the shooting alarm
            }
        } else {
			sprite_index = spr_bot_walk
            // Stop shooting if there is a wall
            alarm[0] = -1; // Disable the shooting alarm
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


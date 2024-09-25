// Alarm[0] Event for obj_patroller

// Check if the player still exists and is in range before shooting
if (instance_exists(obj_enemy) && distance_to_object(obj_enemy) < attack_range) {
    // Set the direction towards the player
    var angle = point_direction(x, y, obj_enemy.x, obj_enemy.y);
    
    // Create a bullet and set its direction
    var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
    bullet.direction = angle; // Set bullet's direction towards the player
    
    // Reset the alarm to fire again after the delay
    alarm[0] = shooting_delay; // Reset the alarm for continuous shooting
}

/// @description Insert description here
// You can write your code in this editor
Identifier = string(room) + "_" + string(x) + "_" + string(y);
// Check if identifier is on the map.
if(!is_undefined(global.dead_enemies[? Identifier])){
    // Identifier was found, this enemy is already dead.
    instance_destroy();
}
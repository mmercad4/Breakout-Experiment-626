/// @description Insert description here
// You can write your code in this editor

// if WIN instance_destroy

if instance_exists(obj_player){
	player_hp = obj_player.hp
}
else{
	// GO TO GAME OVER SCREEN
	instance_destroy()
}
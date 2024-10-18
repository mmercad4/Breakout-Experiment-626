try { //Attempt to place player at the proper coordinates on room creation
	obj_player.x = global.target_loc.x
	obj_player.y = global.target_loc.y
}
catch( _exception) {
	
}
//If target loc isn't initialized yet, obj_player gets placed in their default location within the room.
global.load_timer = 100 //Time til the player is allowed to go into the next room
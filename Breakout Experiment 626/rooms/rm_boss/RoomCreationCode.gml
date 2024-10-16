try { //Attempt to place player at the proper coordinates on room creation
	obj_player.x = global.target_loc.x
	obj_player.y = global.target_loc.y
}
catch( _exception) {
	
}
//If target loc isn't initialized yet, obj_player gets placed in their default location within the room.
global.load_timer = 99999999999 //Don't allow player to (realistically) leave
inst_67547631.active = false 
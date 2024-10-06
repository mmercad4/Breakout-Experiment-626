/// @description check for collision with player and go to target room
/// Must be at end step— otherwise risks player clipping through walls and transitioning before
/// collision checking in main step.

if place_meeting(x,y,obj_player) and global.load_timer < 1 {
	//TODO: Add level transition effect. Screen fade or something.
	show_debug_message(string(global.load_timer))
	room_goto(target_room)
	global.target_loc = self.target_place
}

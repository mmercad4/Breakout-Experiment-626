/// @description check if player is touching the bbox— if they are, fit the camera to the bbox.

if instance_exists(obj_player) {
	if follow_player { //For larger rooms where the camera cannot remain still.
		//Note— for rooms like that, ensure that only one camera exists
		x = obj_player.x
		y = obj_player.y
		
		}
	if place_meeting(x,y,obj_player) {
		camera_set_view_size(view_camera[0], sprite_width, sprite_height)
		camera_set_view_pos(view_camera[0], x, y)
		view_wport[0] = sprite_width
		view_hport[0] = sprite_height
		//surface_resize(application_surface, sprite_width, sprite_height)
		
		//Check if this room is an arena
		if arena_trigger != noone and arena_trigger.arena_beaten == false {
			trigger_arena(doors, arena_trigger)
		}
	}
	
}

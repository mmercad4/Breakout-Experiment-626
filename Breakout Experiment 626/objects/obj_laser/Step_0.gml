if (collision_rectangle(bbox_left-1, bbox_top-1, bbox_right+1, bbox_bottom+1, obj_player, true, true)) {
	var dir_x = -sign(x-obj_player.x)
	var dir_y = -sign(y-obj_player.y)
	obj_player.move_speed = dir_x*5
	obj_player.jump_speed = dir_y*5
	obj_player.hp -= 50
	audio_play_sound(snd_ow,1,false)
}
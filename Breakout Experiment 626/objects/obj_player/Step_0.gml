if keyboard_check_pressed(ord("1")){
	current_weapon = obj_pistol
}
if keyboard_check_pressed(ord("2")){
	current_weapon = obj_rifle
}
weapon = current_weapon


if canShoot = true and mouse_check_button(mb_left){
		canShoot = false
		if weapon = obj_pistol{
			alarm[0] = game_get_speed(gamespeed_fps)/3
			instance_create_layer(x,y,"Instances",obj_bullet1_1)
		}
		if weapon = obj_rifle{
			alarm[0] = game_get_speed(gamespeed_fps)/5
			instance_create_layer(x,y,"Instances",obj_bullet5_1)
		}
}
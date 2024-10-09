if hp <= 0{
	instance_destroy()
}
if global.load_timer > 0 { global.load_timer-- } //Timer til player is allowed to leave room
//Switch weapon and bullet type
if keyboard_check_pressed(ord("1")){
	weapon = obj_pistol
	bullet = obj_pistol_bullet
}
if keyboard_check_pressed(ord("2")){
	weapon = obj_shotgun
	bullet = obj_shotgun_bullet
}

//SET WEAPON STATS BASED ON CURRENT WEAPON
weapon_stats = switch_weapon(weapon)
propel = false
if canShoot = true and mouse_check_button(mb_left){
		canShoot = false //Cannot shoot until alarm 0 runs out (time between shots)
		propel = true //Tell the block further down to propel the player backwards
		
		//TODO: ADD CLIP SIZE/RELOADING (DIFFERENT FROM TIME BETWEEN SHOTS)
		
		if weapon = obj_pistol {
			alarm[0] = game_get_speed(gamespeed_fps)/weapon_stats.time_between_shots //Set alarm for time between shots
			repeat(weapon_stats.num_bullets) { 
				var angle = point_direction(x,y,mouse_x,mouse_y) + random_range(-weapon_stats.spread, weapon_stats.spread)
				instance_create_layer(x,y,"Instances", bullet, //Create bullet instances
					{
						//Pass in creation variables to bullets
						speed : 8,
						direction : angle,
						image_angle : angle,
						damage : weapon_stats.damage
					}) }
		}
		if weapon = obj_shotgun{
			alarm[0] = game_get_speed(gamespeed_fps)/weapon_stats.time_between_shots //Set alarm for time between shots
			repeat(weapon_stats.num_bullets) { 
				var angle = point_direction(x,y,mouse_x,mouse_y) + random_range(-weapon_stats.spread, weapon_stats.spread)
				instance_create_layer(x,y,"Instances", bullet, //Create bullet instances
					{
						//Pass in creation variables to bullets
						speed : 16,
						direction : angle,
						image_angle : angle,
						damage : weapon_stats.damage,
						image_xscale : 0.5,
						image_yscale : 0.5,
					}) }
		}
}
//Left/right movement handling
//Cast a rectangle collision to the left/right (depending on input direction) pixel of the player. Only accelerate that way if there's no block there.
if (keyboard_check(ord("D")) and !collision_rectangle(self.bbox_left+1, self.bbox_top+sign(jump_speed), self.bbox_right+1, self.bbox_bottom+sign(jump_speed), obj_block, true, true)) {
	if input_accel < 2 { input_accel += 1 } //Max acceleration (from player input) is 2
	if abs(move_speed+input_accel) > max_input_move { input_accel = 0 } //Stop accelerating if the next step forward would cause the player to accelerate beyond their max speed
}

else if (keyboard_check(ord("A")) and !collision_rectangle(self.bbox_left-1, self.bbox_top+sign(jump_speed), self.bbox_right-1, self.bbox_bottom+sign(jump_speed), obj_block, true, true)) { 
	if input_accel > -2 { input_accel -= 1 } //Max acceleration (from player input) is 2
	if abs(move_speed+input_accel) > max_input_move { input_accel = 0 } //Stop accelerating if the next step forward would cause the player to accelerate beyond their max speed
}
else { input_accel = 0 } //No acceleration in either direction if there's no left/right input being made

if (not keyboard_check(ord("D")) and not keyboard_check(ord("A")) and move_speed != 0) { move_speed -= sign(move_speed) } //Decceleration— if no input, deccelerate the player.
if acceleration == 0 and move_speed > -1 and move_speed < 1 { move_speed = 0 } //Round move_speed to 0 if it's a decimal between -1 and 1 (leaving this out causes the player to jitter back and forth otherwise)

//If a shot has been registered earlier in the same frame, propel will have been set to true, and so send the player flying backwards
if (propel) {
	if gun_accel_x < 5 { gun_accel_x -= lengthdir_x(weapon_stats.propulsion,point_direction(x,y,mouse_x,mouse_y)) } //Horizontal acceleration from shooting is ADDITIVE, but capped lower than vertical acceleration
	if gun_accel_y < 10 { gun_accel_y -= lengthdir_y(weapon_stats.propulsion*2,point_direction(x,y,mouse_x,mouse_y)) } 
	propel = false //Be sure to set this back!
	}


acceleration = input_accel + gun_accel_x //Acceleration is determined by both player left/right inputs, as well as the horizontal accel. from shooting.
if (abs(move_speed) > max_input_move) { acceleration -= sign(move_speed) } //Decellerate the player if they go beyond the max move speed.

move_speed += acceleration //Add acceleration to move_speed
move_speed = clamp(move_speed, -max_move, max_move) //Cap horizontal movement speed
input_accel = clamp(input_accel, -2, 2) //Cap input acceleration


if (!place_meeting(x,y+1,obj_block) and !collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_one_way_plat,true,true)) { jump_speed += 1	} //If the player is not standing on the ground, accelerate them downwards

//Jumping
if (keyboard_check(vk_space)) {
	if (instance_place(x,y+1,obj_block) or collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_one_way_plat,true,true)) { jump_speed = jump_height }
} 

//Deccelerate the player's gun acceleration
if gun_accel_x != 0 { gun_accel_x -= sign(gun_accel_x) }
if gun_accel_y != 0 { gun_accel_y -= sign(gun_accel_y) }

//If acceleration is a float between -1 and 1, round it to 0
if gun_accel_x > -1 and gun_accel_x < 1 { gun_accel_x = 0 }
if gun_accel_y > -1 and gun_accel_y < 1 { gun_accel_y = 0 }

//Limit gravity
if abs(jump_speed) > max_gravity { jump_speed = sign(jump_speed)*max_gravity }

if (gun_accel_y < 0) { jump_speed = gun_accel_y } //Vertical acceleration is CONSTANT, if the player is travelling upwards. Additive vertical acceleration stacks with jump inputs, causing
	//strange and unwanted bursts of speed.
else if (gun_accel_y > 0) { jump_speed += gun_accel_y } //If the player is falling, vertical acceleration is ADDITIVE. 



//HIGH SPEED COLLISIONS— cast a ray to detect if the player's movement would place them outside a wall, bypassing the normal collision detection.
//If it does, move them up against that wall by incrementing their position along that raycast until they hit it.
if (collision_line(x,y,x+move_speed,y+jump_speed,obj_block,true,true)) { 
	var dir = point_direction(x,y,x+move_speed,y+jump_speed)
	while !(place_meeting(x+lengthdir_x(1,dir),y+lengthdir_y(1,dir),obj_block)) { 
		x += lengthdir_x(1,dir)
		y += lengthdir_y(1,dir)
		}
	move_speed = 0
	jump_speed = 0
	gun_accel_x = 0
	gun_accel_y = 0
}

//collision handling
//this block may not be needed, due to the above collision_line block. May be able to handle niche cases 
if (place_meeting(x+move_speed, y, obj_block)) {
	x+=move_speed
	while (place_meeting(x,y,obj_block)) { x-=sign(move_speed) }
	move_speed = 0
	gun_accel_x = 0
}
if (place_meeting(x, y+jump_speed, obj_block)) {
	y+=jump_speed
	while (place_meeting(x,y,obj_block)) { y-=sign(jump_speed) }
	jump_speed = 0
	gun_accel_y = 0
}
if (place_meeting(x+move_speed, y+jump_speed, obj_block)) {
	x+=move_speed
	y+=jump_speed
	while (place_meeting(x,y,obj_block)) { 
		x-=sign(move_speed)
		y-=sign(jump_speed) 
		}
	jump_speed = 0
	move_speed = 0
	gun_accel_x = 0
	gun_accel_y = 0
}

//Collision handling with one-way platforms— only stop the player if they're moving downwards and their feet touch the platform
if (collision_line(x,bbox_bottom,x+move_speed,bbox_bottom+jump_speed-1,obj_one_way_plat,true,true) and jump_speed > 0) {
	x+=move_speed
	y+=jump_speed
	do {
		y-=sign(jump_speed)
		x-=sign(move_speed)
		show_debug_message(string(y))
		}
	until (collision_rectangle(bbox_left+move_speed,bbox_bottom,bbox_right+move_speed,bbox_bottom+1,obj_one_way_plat,true,true))
	y-=1
	jump_speed = 0
	gun_accel_y = 0
}


//Change x and y by their respective movement variables. Effectively the same as using hspeed/vspeed
x += move_speed 
y += jump_speed

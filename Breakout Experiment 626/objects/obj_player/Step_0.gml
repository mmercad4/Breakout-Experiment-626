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

//Shooting
if (mouse_check_button_pressed(mb_left)) { 
	if gun_accel_x < 5 { gun_accel_x -= lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y)) } //Horizontal acceleration from shooting is ADDITIVE, but capped lower than vertical acceleration
	if gun_accel_y < 10 { gun_accel_y -= lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y)) } 
	}


acceleration = input_accel + gun_accel_x //Acceleration is determined by both player left/right inputs, as well as the horizontal accel. from shooting.
if (abs(move_speed) > max_input_move) { acceleration -= sign(move_speed) } //Decellerate the player if they go beyond the max move speed.

move_speed += acceleration //Add acceleration to move_speed
move_speed = clamp(move_speed, -max_move, max_move) //Cap horizontal movement speed
input_accel = clamp(input_accel, -2, 2) //Cap input acceleration


if (!place_meeting(x,y+1,obj_block)) { jump_speed += 1	} //If the player is not standing on the ground, accelerate them downwards

//Jumping
if (keyboard_check(vk_space)) {
	if (instance_place(x,y+1,obj_block)) { jump_speed = jump_height }
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

//Change x and y by their respective movement variables. Effectively the same as using hspeed/vspeed
x += move_speed 
y += jump_speed
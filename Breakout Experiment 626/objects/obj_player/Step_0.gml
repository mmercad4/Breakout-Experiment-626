// Step Event for obj_player

// Step Event for obj_player

// Knockback handling
if (is_knockback) {
    knockback_timer--;
    // Constrain the player's x position
    x = clamp(x, sprite_width / 2, room_width - (sprite_width / 2));
    // Constrain the player's y position
    y = clamp(y, sprite_height / 2, room_height - (sprite_height / 2));

    // Reset the state after the timer ends
    if (knockback_timer <= 0) {
        is_knockback = false; // Reset the knockback state
        vspeed = 0; // Stop upward movement
        hspeed = 0; // Stop horizontal movement
    }
}



 if hp <= 0 {
	instance_destroy()
}


if keyboard_check_pressed(ord("H")){
	if hp_packs >0 and hp < 100 {
		hp_packs -=1
		if (isheal == false){
			isheal = true
			}
		if hp + 50 < 100{
			hp += 50
		}
		else{
			hp = 100
		}
	}
}
if global.load_timer > 0 { global.load_timer-- } //Timer til player is allowed to leave room
//Switch weapon and bullet type if not reloading
if keyboard_check_pressed(ord("1")) and pistol_unlocked {
	weapon_equipped = true
	canShoot = true
	if instance_exists(weapon) { instance_destroy(weapon) }
	weapon = obj_pistol
	bullet = obj_pistol_bullet
	weapon_stats = switch_weapon(weapon)
	bullets_left = old_clips[0]
	
	//Stop reloading
	alarm[1] = 0
	global.draw_reload = false
}
if keyboard_check_pressed(ord("2")) and shotgun_unlocked {
	weapon_equipped = true
	canShoot = true
	if instance_exists(weapon) { instance_destroy(weapon) }
	weapon = obj_shotgun
	bullet = obj_shotgun_bullet
	weapon_stats = switch_weapon(weapon)
	bullets_left = old_clips[1]
	
	//Stop reloading
	alarm[1] = 0
	global.draw_reload = false
}
if keyboard_check_pressed(ord("3")) and rpg_unlocked {
	weapon_equipped = true
	canShoot = true
	if instance_exists(weapon) { instance_destroy(weapon) }
	weapon = obj_rpg
	bullet = obj_rocket
	weapon_stats = switch_weapon(weapon)
	bullets_left = old_clips[2]
	
	//Stop reloading
	alarm[1] = 0
	global.draw_reload = false
}
if keyboard_check_pressed(ord("0")){
	weapon_equipped = false
	weapon = noone
	canShoot = false
	
	if(instance_exists(obj_pistol)){obj_pistol.visible = false}
	if(instance_exists(obj_shotgun)){obj_shotgun.visible = false}
	if(instance_exists(obj_rpg)){obj_rpg.visible = false}
}

//SET WEAPON STATS BASED ON CURRENT WEAPON
propel = false

//Weapon showing
if weapon == obj_pistol {
	if not instance_exists(obj_pistol){
		weapon_equipped = true
		instance_create_layer(x,y-8,"Instances",obj_pistol)
		obj_pistol.visible = true
	}
}
if weapon == obj_shotgun {
	if not instance_exists(obj_shotgun){
		weapon_equipped = true
		instance_create_layer(x,y-8,"Instances",obj_shotgun)
		obj_shotgun.visible = true
	}
}
if weapon == obj_rpg {
	if not instance_exists(obj_rpg){
		weapon_equipped = true
		instance_create_layer(x,y-8,"Instances",obj_rpg)
		obj_rpg.visible = true
	}
}


if canShoot = true and mouse_check_button(mb_left) and bullets_left > 0 {
		bullets_left -= 1
		if weapon == obj_pistol { old_clips[0] = bullets_left }
		else if weapon == obj_shotgun { old_clips[1] = bullets_left }
		else if weapon == obj_rpg { old_clips[2] = bullets_left }
		
		canShoot = false //Cannot shoot until alarm 0 runs out (time between shots)
		propel = true
		
		if weapon = obj_pistol {
			audio_play_sound(snd_pistol_shot,10,false)
			alarm[0] = game_get_speed(gamespeed_fps)/weapon_stats.time_between_shots //Set alarm for time between shots
			repeat(weapon_stats.num_bullets) { 
				var angle = point_direction(x,y,mouse_x,mouse_y) + random_range(-weapon_stats.spread, weapon_stats.spread)
				instance_create_layer(x+6,y-8,"Instances", bullet, //Create bullet instances
					{
						//Pass in creation variables to bullets
						speed : 8,
						direction : angle,
						image_angle : angle,
						damage : weapon_stats.damage
					}) }
		}
		if weapon = obj_shotgun{
			audio_play_sound(snd_shotgun_shot,10,false)
			alarm[0] = game_get_speed(gamespeed_fps)/weapon_stats.time_between_shots //Set alarm for time between shots
			repeat(weapon_stats.num_bullets) { 
				var angle = point_direction(x,y,mouse_x,mouse_y) + random_range(-weapon_stats.spread, weapon_stats.spread)
				instance_create_layer(x+6,y-8,"Instances", bullet, //Create bullet instances
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
		if weapon = obj_rpg{
			audio_play_sound(snd_rpg_shot,10,false)
			alarm[0] = game_get_speed(gamespeed_fps)/weapon_stats.time_between_shots //Set alarm for time between shots
			repeat(weapon_stats.num_bullets) { 
				var angle = point_direction(x,y,mouse_x,mouse_y) + random_range(-weapon_stats.spread, weapon_stats.spread)
				instance_create_layer(x+6,y-8,"Instances", bullet, //Create bullet instances
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

		if bullets_left == 0 { //No bullets left in clip, reload
			audio_play_sound(snd_shotgun_reload,10,false)
			alarm[1] = weapon_stats.reload_time
			global.draw_reload = true
		}
}

//Reload if out of bullets and mouse pressed
else if mouse_check_button(mb_left) and bullets_left == 0 and weapon != noone and not global.draw_reload { 
	alarm[1] = weapon_stats.reload_time
	global.draw_reload = true 
	}
//Left/right movement handling
//Cast a rectangle collision to the left/right (depending on input direction) pixel of the player. Only accelerate that way if there's no block there.
if (keyboard_check(ord("D")) and !collision_rectangle(self.bbox_left+1, self.bbox_top+sign(jump_speed), self.bbox_right+1, self.bbox_bottom+sign(jump_speed), obj_block, true, true)) {
	if (not isJump and not isMelee) {
		if (weapon_equipped){sprite_index = spr_walk_1_arm}
		else {sprite_index = spr_character_walk}
		//particle
		if instance_exists(obj_Particles){instance_particle_dust.burst(-2);}
	}
	
	if input_accel < 2 { input_accel += 0.5 } //Max acceleration (from player input) is 2
	if abs(move_speed+input_accel) > max_input_move { input_accel = 0 } //Stop accelerating if the next step forward would cause the player to accelerate beyond their max speed
}

else if (keyboard_check(ord("A")) and !collision_rectangle(self.bbox_left-1, self.bbox_top+sign(jump_speed), self.bbox_right-1, self.bbox_bottom+sign(jump_speed), obj_block, true, true)) { 
	if (not isJump and not isMelee) {
		if (weapon_equipped){sprite_index = spr_walk_1_arm}
		else {sprite_index = spr_character_walk}
		//particle
		if instance_exists(obj_Particles){instance_particle_dust.burst(-2);}
	}
	
	if input_accel > -2 { input_accel -= 0.5 } //Max acceleration (from player input) is 2
	if abs(move_speed+input_accel) > max_input_move { input_accel = 0 } //Stop accelerating if the next step forward would cause the player to accelerate beyond their max speed
}
else { 
	if (not isJump and not isMelee) {
		if (weapon_equipped){sprite_index = spr_idle_1_arm}
		else {sprite_index = spr_character_idle}
	}
	input_accel = 0 
} //No acceleration in either direction if there's no left/right input being made

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


if (!place_meeting(x,y+1,obj_block) and !collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_one_way_plat,true,true)) { jump_speed += 1 } //If the player is not standing on the ground, accelerate them downwards

if (isJump and instance_place(x,y+1,obj_block) or instance_place(x,y+1,obj_one_way_plat) ){
	isJump = false
}


//Jumping //TODO SET Jumping Sprite
if (keyboard_check_pressed(vk_space)) {
	if (instance_place(x,y+1,obj_block) or collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_one_way_plat,true,true)) {
		isJump = true
		if(weapon_equipped){sprite_index = spr_jump_1_arm}
		else{sprite_index = spr_character_jump}
		jump_speed = jump_height
		}
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
if (collision_line(x,bbox_bottom,x+move_speed,bbox_bottom+jump_speed,obj_one_way_plat,true,true) and jump_speed > 0) {
	do {
		y+=sign(jump_speed)
		//x+=sign(move_speed)
		//show_debug_message(string(y))
		}
	until (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_one_way_plat,true,true)) 
	//y-=1
	jump_speed = 0
	gun_accel_y = 0
}


//Change x and y by their respective movement variables. Effectively the same as using hspeed/vspeed
x += move_speed 
y += jump_speed

// Flips sprite based on side the mouse is on
if (mouse_x < x) {
    image_xscale = -1;
	meleeOffset = -15;
} else {
    image_xscale = 1;
	meleeOffset = 15;
}

if (not weapon_equipped and mouse_check_button_pressed(mb_left)){
	audio_play_sound(snd_getting_hurt,1,false)
	isMelee = true
	sprite_index = spr_character_melee
	image_index = 0
	instance_create_layer(x+meleeOffset, y, "Instances", obj_melee_hitbox)
	
}

if(isMelee and image_index >= image_number - 1){ isMelee = false}
	


//shader code

if(ishit){
	hit_timer += 1
	if(hit_timer > hit_release){
		ishit = false
	}
}
else{
	hit_timer = 0
}

if(isheal){
	heal_timer += 1
	if(heal_timer > heal_release){
		isheal = false
	}
}
else{
	heal_timer = 0
}

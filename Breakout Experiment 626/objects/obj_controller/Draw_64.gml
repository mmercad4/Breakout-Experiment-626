// obj_controller Draw GUI Event


//Draw bounding box
draw_set_color(c_black)
draw_set_alpha(0.25)
draw_rectangle(0,0,1920,150,false)
draw_set_alpha(1)

// Define the size and position of the health bar
var bar_x = 20;          // X position on the screen
var bar_y = 20;          // Y position on the screen
var bar_width = 750;     // Width of the health bar
var bar_height = 75;     // Height of the health bar

// Calculate the current width of the health bar based on player health
var current_bar_width = (player_hp / 100) * bar_width;

// Draw the background of the health bar (empty part)
draw_set_color(c_black);
draw_rectangle(bar_x - 2, bar_y - 2, bar_x + bar_width + 2, bar_y + bar_height + 2, false); // Outline

draw_set_color(c_red); // Background color (representing missing health)
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Draw the filled part of the health bar
draw_set_color(c_green); // Foreground color (representing current health)
draw_rectangle(bar_x, bar_y, bar_x + current_bar_width, bar_y + bar_height, false);

// Optionally, draw the numeric value of the player's health
draw_set_color(c_white);
draw_text(bar_x + bar_width + 10, bar_y, string(player_hp) + "/" + string(100));

//Draw gun and label
if obj_player.weapon == obj_pistol {
	var txt = "Pistol"
}
else if obj_player.weapon == obj_shotgun {
	var txt = "Shotgun"
}
if obj_player.weapon != noone {
	draw_sprite_ext(object_get_sprite(obj_player.weapon),0,1700,50,5,5,0,c_white,1)
	draw_set_color(c_white)
	draw_text_ext_transformed(1700,75,txt,5,1000,3,3,0)
}
var xx = 1000
var yy = 50
//Draw reload timer (if reloading)
if global.draw_reload {
	draw_text_ext_transformed(xx,yy,"Reloading",5,1000,3,3,0)
	draw_rectangle(xx+100,yy - 8, xx+0.5*(obj_player.weapon_stats.reload_time)+101, yy - 3,true) //Draw bounding box
	draw_rectangle(xx+100,yy - 8, xx+obj_player.alarm[1]*0.5+100,yy - 3,false)
}

var xx = 1500
var yy = 50
//Draw bullets left in clip
var txt = string(obj_player.bullets_left) + "/" + string(obj_player.weapon_stats.clip_size)
draw_text_ext_transformed(xx,yy+10,txt,5,1000,3,3,0)
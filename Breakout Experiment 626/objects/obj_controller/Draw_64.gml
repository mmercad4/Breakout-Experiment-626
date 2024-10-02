// obj_controller Draw GUI Event

// Define the size and position of the health bar
var bar_x = 20;          // X position on the screen
var bar_y = 20;          // Y position on the screen
var bar_width = 200;     // Width of the health bar
var bar_height = 20;     // Height of the health bar

// Calculate the current width of the health bar based on player health
var current_bar_width = (obj_player.hp / 100) * bar_width;

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
draw_text(bar_x + bar_width + 10, bar_y, string(obj_player.hp) + "/" + string(100));

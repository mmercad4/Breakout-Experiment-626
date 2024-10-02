// obj_humanoid Draw Event

// Call the default draw event (to draw the sprite)
draw_self();

// Define the size and position of the health bar
var bar_width = 50;     // New smaller width of the health bar
var bar_height = 5;     // New smaller height of the health bar

// Calculate the current width of the health bar based on enemy's health
var current_bar_width = (hp / 100) * bar_width;  // Adjust 100 if the max health is different

// Define position for the health bar above the humanoid
var bar_x = x - (bar_width/4); // Center the bar above the enemy
var bar_y = y - 10;  // Adjust height to place it above the humanoid

// Draw the background of the health bar (empty part)
draw_set_color(c_black);
draw_rectangle(bar_x - 2, bar_y - 2, bar_x + bar_width + 2, bar_y + bar_height + 2, false); // Outline

draw_set_color(c_red); // Background color (representing missing health)
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Draw the filled part of the health bar
draw_set_color(c_green); // Foreground color (representing current health)
draw_rectangle(bar_x, bar_y, bar_x + current_bar_width, bar_y + bar_height, false);

/// @description Insert description here
// You can write your code in this editor


x = room_width / 2
y = room_height / 2 + button_y_pos * (sprite_get_height(spr_button) + 10)

show_debug_message(x)
show_debug_message(y)
draw_self()

draw_set_halign(fa_center);

draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_set_font(fnt_button)
draw_text(x,y,button_text)
/// @description Draw Font

//draw_self()

var text_x = room_width / 2;
var text_y = room_height / 2 - 5 * string_height(text);


draw_set_color(c_lime);
draw_set_font(fnt_cyberpunk)
draw_text(text_x,text_y,text)
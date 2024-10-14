/// @description Insert description here
// You can write your code in this editor
if(ishit){
	shader_set(sh_FlashRed)
	
	shader_set_uniform_f(sh_handle_timer, hit_timer)
	draw_self()
	shader_reset()
}
else{
	draw_self()
}

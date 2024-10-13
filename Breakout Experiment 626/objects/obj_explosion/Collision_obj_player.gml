
if not player_affected {
	other.gun_accel_x += lengthdir_x(30,point_direction(x,y,other.x,other.y))
	other.gun_accel_y += lengthdir_y(30,point_direction(x,y,other.x,other.y))
	player_affected = true
}
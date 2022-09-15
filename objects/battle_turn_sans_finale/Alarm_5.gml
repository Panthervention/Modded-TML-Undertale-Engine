var length_start = 600
var length_end = 200
var x_start = (battle_board.x + lengthdir_x(length_start, _dir))
var y_start = (320 + lengthdir_y(length_start, _dir))
var x_target = (battle_board.x + lengthdir_x(length_end, _dir))
var y_target = (320 + lengthdir_y(length_end, _dir))
var angle = point_direction(x_start, y_start, x_target, y_target)

var length_start2 = 600
var length_end2 = 200
var x_start2 = (battle_board.x + lengthdir_x(length_start2, _dir2))
var y_start2 = (320 + lengthdir_y(length_start2, _dir2))
var x_target2 = (battle_board.x + lengthdir_x(length_end2, _dir2))
var y_target2 = (320 + lengthdir_y(length_end2, _dir2))
var angle2 = point_direction(x_start2, y_start2, x_target2, y_target2)

if gb_1 = true
MakeGB(x_start, y_start, x_target, y_target, (angle - (270*dir)), angle, 15, 1, 2, 1, 30, 0)
if gb_2 = true
MakeGB(x_start2, y_start2, x_target2, y_target2, (angle2 - (270*dir)), angle2, 15, 1, 2, 1, 30, 0)
_dir += direc*dir
_dir2 += direc*dir

alarm[5] = delay_gb
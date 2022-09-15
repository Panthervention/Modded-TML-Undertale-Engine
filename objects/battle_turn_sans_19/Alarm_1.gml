var length_start = 600
var length_end = 300
var x_start = (battle_board.x + lengthdir_x(length_start, _dir))
var y_start = (300 + lengthdir_y(length_start, _dir))
var x_target = (battle_board.x + lengthdir_x(length_end, _dir))
var y_target = (300 + lengthdir_y(length_end, _dir))
var angle = point_direction(x_start, y_start, x_target, y_target)

MakeGB(x_start, y_start, x_target, y_target, (angle - 270), angle, 55, 2, 2, 20, 30, 0)

_dir += 9.5

alarm[1] = 10
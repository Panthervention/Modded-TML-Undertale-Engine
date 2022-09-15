/*var length_start = 600
var length_end = 69
var x_start = (battle_board.x + lengthdir_x(length_start, _dir1))
var y_start = (320 + lengthdir_y(length_start, _dir1))
var x_target = (battle_board.x + lengthdir_x(length_end, _dir1))
var y_target = (320 + lengthdir_y(length_end, _dir1))
var angle = (point_direction(x_start, y_start, x_target, y_target) + 180)

var length_start2 = 600
var length_end2 = 69
var x_start2 = (battle_board.x + lengthdir_x(length_start2, _dir2))
var y_start2 = (320 + lengthdir_y(length_start2, _dir2))
var x_target2 = (battle_board.x + lengthdir_x(length_end2, _dir2))
var y_target2 = (320 + lengthdir_y(length_end2, _dir2))
var angle2 = (point_direction(x_start2, y_start2, x_target2, y_target2) + 180)

var length_start3 = 600
var length_end3 = 69
var x_start3 = (battle_board.x + lengthdir_x(length_start3, _dir3))
var y_start3 = (320 + lengthdir_y(length_start3, _dir3))
var x_target3 = (battle_board.x + lengthdir_x(length_end3, _dir3))
var y_target3 = (320 + lengthdir_y(length_end3, _dir3))
var angle3 = (point_direction(x_start3, y_start3, x_target3, y_target3) + 180)

var length_start4 = 600
var length_end4 = 69
var x_start4 = (battle_board.x + lengthdir_x(length_start4, _dir4))
var y_start4 = (320 + lengthdir_y(length_start4, _dir4))
var x_target4 = (battle_board.x + lengthdir_x(length_end4, _dir4))
var y_target4 = (320 + lengthdir_y(length_end4, _dir4))
var angle4 = (point_direction(x_start4, y_start4, x_target4, y_target4) + 180)
_dir1 += 3.25
_dir2 += 3.25
_dir3 += 3.25
_dir4 += 3.25

Player_SetInv(0)
if _timer > 0
{
MakeGB(x_start, y_start, x_target, y_target, (angle - 90), angle + 180, 15, 2, 2, 10, 30, 0)
global.debug = false
}
if _timer > 600
MakeGB(x_start2, y_start2, x_target2, y_target2, (angle2 - 90), angle2 + 180, 15, 2, 2, 10, 30, 0)
if _timer > 1200
MakeGB(x_start3, y_start3, x_target3, y_target3, (angle3 - 90), angle3 + 180, 15, 2, 2, 10, 30, 0)
if _timer > 1800
MakeGB(x_start4, y_start4, x_target4, y_target4, (angle4 - 90), angle4 + 180, 15, 2, 2, 10, 30, 0)
*/

if _timer > 0 and _timer%15 = 0
{
_dir1 += 20
_dir2 += 20
_dir3 += 20
_dir4 += 20

MakeGBCircle(600,200,_dir1,_dir1,15,1.5,2,10,30,0)
MakeGBCircle(600,200,_dir2,_dir2,15,1.5,2,10,30,0)
MakeGBCircle(600,200,_dir3,_dir3,15,1.5,2,10,30,0)
MakeGBCircle(600,200,_dir4,_dir4,15,1.5,2,10,30,0)
}


///@arg length_start
///@arg length_target
///@arg direction_start
///@arg direction_change
///@arg pause
///@arg x_scale
///@arg y_scale
///@arg stay
///@arg duration
///@arg color

function MakeGBCircle()
{
    var LENGTH_START = argument[0]
    var LENGTH_TARGET = argument[1]
    var DIRECTION_START = argument[2]
    var DIRECTION_CHANGE = argument[3]
    var PAUSE = argument[4]
    var X_SCALE = argument[5]
    var Y_SCALE = argument[6]
    var STAY = argument[7]
    var DURATION = argument[8]
    var COLOR = argument[9]
    
    var _dir = DIRECTION_START
    var length_start = LENGTH_START
    var length_end = LENGTH_TARGET
    var x_start = (battle_board.x + lengthdir_x(length_start, _dir))
    var y_start = (320 + lengthdir_y(length_start, _dir))
    var x_target = (battle_board.x + lengthdir_x(length_end, _dir))
    var y_target = (320 + lengthdir_y(length_end, _dir))
    var angle = point_direction(x_start, y_start, x_target, y_target)
    _dir += DIRECTION_CHANGE
    
    MakeGB(x_start, y_start, x_target, y_target, (angle - 270), angle, PAUSE, X_SCALE, Y_SCALE, STAY, DURATION, COLOR)
}
var rng = random(360)
var x_start = battle_soul.x + lengthdir_x(400, rng)
var y_start = battle_soul.y + lengthdir_y(300, rng)
var x_target = (battle_soul.x + lengthdir_x(random_range(200,250), rng))
var y_target = (battle_soul.y + lengthdir_y(random_range(200,250), rng))

if y_target > 420 then y_target = 420
if y_target < 150 then y_target = 150
if x_target > 580 then x_target = 580
if x_target < 60 then x_target = 60

if rng < 180 var rngg = -1
if rng >= 180 var rngg = 1

var angle_target = point_direction(x_target,y_target,battle_soul.x,battle_soul.y)
MakeGB(x_start,y_start,x_target,y_target,angle_target+90*rngg,angle_target,20,2,2,15,30,0)
if global.difficulty != 1 alarm[0] = 30
else alarm[0] = 25
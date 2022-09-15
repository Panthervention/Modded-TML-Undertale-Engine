_case = irandom_range(1,4)
switch _case
{
	case 1:
	Battle_SlamDown()
	break;
	
	case 2:
	Battle_SlamUp()
	break;
	
	case 3:
	Battle_SlamLeft()
	break;
	
	case 4:
	Battle_SlamRight()
	break;
}

if _timer < 5800
{
	global.slam_power = 30
	global.slam_damage = true
    alarm[6] = 5
	alarm[7] = 5
}
else if _timer >= 5800 and _timer < 6100
{
	global.slam_power = 20
	global.slam_damage = true
    alarm[6] = 10
	alarm[7] = 10
}
else if _timer >= 6100 and _timer < 6400
{
	global.slam_power = 15
	global.slam_damage = true
    alarm[6] = 20
	battle_enemy_sans._head_image = 0
}
else if _timer >= 6400 and _timer < 6700
{
	global.slam_power = 10
	global.slam_damage = true
    alarm[6] = 30
	battle_enemy_sans._head_image = 2
}
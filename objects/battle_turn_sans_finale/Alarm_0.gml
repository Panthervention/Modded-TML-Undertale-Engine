if _slam < 8
{
	_case = irandom_range(1,4)
	alarm[1] = 10
	_slam++
}
else 
{
	alarm[0] = -1
	alarm[1] = -1
	Battle_SetSoul(battle_soul_red)
	Battle_SoulEffect(battle_soul_red)
	alarm[2] = 40
}
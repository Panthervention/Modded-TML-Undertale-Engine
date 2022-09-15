if _timer = 1
{
    battle_enemy_sans._head_image = 0
	battle_enemy_sans.action = 0
}
if _timer = 40
{
	Battle_SlamDown()
	Battle_SoulEffect(battle_soul_blue)
}

if _timer >= 40 and _gap < _gap_end
{
	if _gap_end = 16 and _timer%25=0
	{
		MakeBoneGapV(160,360,4,16,1,0)
		MakeBoneGapV(480,360,-4,16,1,0)
		_gap++
	}
	if _gap_end = 8 and _timer%30=0
	{
		MakeBoneGapV(160,360,3,16,1,0)
		MakeBoneGapV(480,360,-3,16,1,0)
		_gap++
	}
}

if _delay_end = 150
    Battle_EndTurn()


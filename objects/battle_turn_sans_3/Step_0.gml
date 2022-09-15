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

if _timer >= 40 and _timer%85=0 and _gap < _gap_end
{    
	var rng = random_range(0,48)
	MakeBoneGapV(160,360-rng,3,22,1,0)
	MakeBoneGapV(480,360-rng,-3,22,1,0)
	if global.difficulty != 1
	{
		MakeBoneGapV(148,360-rng,3.5,22,1,0)
		MakeBoneGapV(136,360-rng,4,22,1,0)
		MakeBoneGapV(124,360-rng,4.5,22,1,0)
		MakeBoneGapV(492,360-rng,-3.5,22,1,0)
		MakeBoneGapV(504,360-rng,-4,22,1,0)
		MakeBoneGapV(516,360-rng,-4.5,22,1,0)
	}
	_gap++
}

if _delay_end = 60
	Battle_SetBoardSizeCubic(65,65,65,65,20)

if _delay_end = 120
    Battle_EndTurn()


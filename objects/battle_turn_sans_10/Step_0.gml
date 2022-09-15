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

if _timer >= 40 and _timer%_delay=0 and _gap < _gap_end
{
	MakeBoneGapV(160,360,6-noob,16,1,0)
	MakeBoneGapV(480,360,-6+noob,16,1,0)
	_gap++
}

if _delay_end = 150
    Battle_EndTurn()


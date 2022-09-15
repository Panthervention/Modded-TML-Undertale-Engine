if _sequence = 1
{
	var space = 0
	repeat(3)
	{
		var yy = battle_board.y-battle_board.up+45/2+5
		bone_top = MakeBoneV(650+space,yy,45,-10,0,0,0,0,0,400)
		Anim_Create(bone_top,"hspeed",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,-10,20,240,55)
		space+=12
	}
	_sequence = 2
}
else if _sequence = 2
{
	var space = 0
	repeat(3)
	{
		var yy = battle_board.y+battle_board.down-45/2-5
		bone_bottom = MakeBoneV(650+space,yy,45,-10,0,0,0,0,0,400)
		Anim_Create(bone_bottom,"hspeed",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,-10,20,240,55)
		space+=12
	}
	_sequence = 1
}

alarm[4] = 20
_exclamation = choose(1,2)
if _exclamation = 1
{
	a = instance_create_depth(280, 310, 0, battle_bone_stab_exclaimation)
	a.duration = 80
	a.x1 = battle_board.x - battle_board.left + 2
	a.y1 = battle_board.y - battle_board.up + 2
	a.x2 = battle_board.x 
	a.y2 = battle_board.y + battle_board.down - 3
    a.x3 = battle_board.x - battle_board.left + 2
	a.y3 = battle_board.y - battle_board.up + 2
	a.xscale = 158
	a.yscale = 148
}
else if _exclamation = 2
{
	a = instance_create_depth(360, 310, 0, battle_bone_stab_exclaimation)
	a.duration = 80
	a.x1 = battle_board.x + battle_board.right - 2
	a.y1 = battle_board.y - battle_board.up + 2
	a.x2 = battle_board.x 
	a.y2 = battle_board.y + battle_board.down - 3
	a.x3 = battle_board.x + 2
	a.y3 = battle_board.y - battle_board.up + 2
	a.xscale = 158
	a.yscale = 148
}
alarm[1] = 80
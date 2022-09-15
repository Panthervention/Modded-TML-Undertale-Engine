if battle_soul.x > battle_board.x - battle_board.left + battle_board.thickness_frame + 2 and battle_soul.x < battle_board.x - battle_board.left + battle_board.thickness_frame + 4 and battle_board.x > 85
	battle_board.x -= 0.25
else if battle_board.x = 85
    _x = "done"
	
if battle_soul.y >= battle_board.y + 55 and battle_board.y != 410 and _x = "done"
    battle_board.y += 0.25
	
alarm[8] = 1
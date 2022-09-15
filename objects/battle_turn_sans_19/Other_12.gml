///@desc Turn Start
alarm[0] = 20
if global.difficulty != 1
	alarm[1] = 1
_dir = DIR.UP
_dir2 = _dir + 90
Battle_SetTurnTime(1200)
Battle_SetBoardSizeCubic(135,65,283,283)

if Player_GetHp() + Player_GetKR() >= Player_GetHpMax()
	Player_SetKR(Player_GetHpMax() - Player_GetHp())
	
if global.phase = 1
window_set_caption("Snas Idot Simulator by Panthervention")
else if global.phase = 2
window_set_caption("Fandumb Snas Beliek:")

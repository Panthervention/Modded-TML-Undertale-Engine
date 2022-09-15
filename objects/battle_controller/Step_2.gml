if Player_GetHp() + Player_GetKR() >= Player_GetHpMax()
	Player_SetKR(Player_GetHpMax() - Player_GetHp())
			
if Player_GetKR() > 40
    Player_SetKR(40)

if Player_GetKR() > 0
{
	kr_timer++
		if (
		kr_timer >= 2 and Player_GetKR() >= 40 or
		kr_timer >= 4 and Player_GetKR() >= 30 or 
		kr_timer >= 10 and Player_GetKR() >= 20 or
		kr_timer >= 30 and Player_GetKR() >= 10 or
		kr_timer >= 60)
		{
			kr_timer = 0
			Player_SetKR(Player_GetKR() - 1)
		}
		if Player_GetHp() <= 0
			Player_SetHp(1)
	
}
else kr_timer = 0
///This KR uses Player_Inv to control the speed
function Player_HurtKR() 
{
	if Player_GetHp() > 1
	{
		if Player_GetHp() != KR
		{
			Player_Hurt(KR)
			if Player_GetKR() <= 40
				Player_SetKR(Player_GetKR() + KR)
		}
		else
		{
			Player_Hurt(1)
			Player_SetKR(Player_GetKR() + 1)
		}
	}
	if Player_GetHp() <= 1 and Player_GetKR() != 0
	{
		Player_SetHp(1)
		Player_SetKR(Player_GetKR() - 1)
	}
	else if Player_GetKR() = 0
	{
		if global.deadable = false
			Player_SetHp(1)
		else Player_SetHp(0)
	}
	audio_stop_sound(snd_hurt)
	audio_play_sound(snd_hurt, 0, false)
}

///Menu damage
function Player_HurtKRM() 
{
	if Player_GetHp() > 1
	{
		Player_Hurt(1)
		if Player_GetKR() > 0 and Player_GetKR() < 40
			Player_SetKR(Player_GetKR() + 1)
	}
	if Player_GetHp() <= 1
	{
		Player_SetHp(1)
		if Player_GetKR() != 0
			Player_SetKR(Player_GetKR() - 1)
	}
	audio_stop_sound(snd_hurt)
	audio_play_sound(snd_hurt, 0, false)
}

if _gap = 16
{
	if global.difficulty != 1
	{
		alarm[0]=-1
		alarm[1]=-1
		with battle_bullet_bone
		{
			if tag = 1
				vspeed = -3
			else if tag = 2
				vspeed = 3
			else if tag = 3
				hspeed = -3
			else if tag = 4
				hspeed = 3
		}
		audio_play_sound(snd_ding,0,0)
	}
	else
	{
		alarm[0]=-1
		alarm[1]=-1
		alarm[2]=60
	}
	_gap = 17
}

if _delay_end = 700
    Battle_EndTurn()


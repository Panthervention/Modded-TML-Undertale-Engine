Battle_FlashOn()
audio_stop_sound(snd_gb_charge)
audio_stop_sound(snd_gb_release)


if _attempt < 6
{
	_attack = irandom_range(1,5)
	switch _attack
	{
		case 1:
		alarm[1] = 20
		break;
		
		case 2:
		alarm[2] = 20
		break;
		
		case 3:
		alarm[3] = 20
		break;
		
		case 4:
		alarm[4] = 20
		break;
		
		case 5:
		alarm[5] = 20
		break;
	}
	_attempt++
}

else 
   alarm[6] = 20 
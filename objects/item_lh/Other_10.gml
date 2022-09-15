///@desc Info
if Player_GetHp() >= Player_GetHpMax() - 40
	Dialog_Add("* You ate the Legendary Hero.&{sleep 30}* Your HP was maxed out.");
else if Player_GetHp() < Player_GetHpMax() - 40
	Dialog_Add("* You ate the Legendary Hero.&{sleep 30}* You recovered 40 HP.");
	
Dialog_Start();
Item_Remove(_item_slot)
Player_Heal(40)
audio_play_sound(snd_item_heal,0,false)
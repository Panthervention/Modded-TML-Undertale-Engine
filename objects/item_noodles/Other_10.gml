///@desc Info
if Player_GetHp() >= Player_GetHpMax() - 90
    Dialog_Add("* You ate the Instant Noodles.&{sleep 30}* Your HP was maxed out.");
else if Player_GetHp() < Player_GetHpMax() - 90
	Dialog_Add("* You ate the Instant Noodles.&{sleep 30}* You recovered 90 HP.");
	
Dialog_Start();
Item_Remove(_item_slot)
Player_Heal(90)
audio_play_sound(snd_item_heal,0,false)
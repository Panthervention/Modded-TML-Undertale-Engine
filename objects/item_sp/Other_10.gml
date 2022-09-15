///@desc Info
if Player_GetHp() >= Player_GetHpMax() - 45
	Dialog_Add("* You ate the Snowman Piece.&{sleep 30}* Your HP was maxed out.");
else if Player_GetHp() < Player_GetHpMax() - 45
	Dialog_Add("* You ate the Snowman Piece.&{sleep 30}* You recovered 45 HP.");
	
Dialog_Start();
Item_Remove(_item_slot)
Player_Heal(45)
audio_play_sound(snd_item_heal,0,false)
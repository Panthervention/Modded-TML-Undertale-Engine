///@desc Info
switch global.pie
{
	case 0:
	Dialog_Add("* You ate the first slice of the&  Butterscotch Pie.&{sleep 30}* Your HP was maxed out.");
	Dialog_Start();
	break;
	
	case 1:
	Dialog_Add("* You ate the second slice of the&  Butterscotch Pie.&{sleep 30}* Your HP was maxed out.");
	Dialog_Start();
	break;
	
	case 2:
	Dialog_Add("* You ate the third slice of the&  Butterscotch Pie.&{sleep 30}* Your HP was maxed out.");
	Dialog_Start();
	break;
	
	case 3:
	Dialog_Add("* You ate the fourth slice of the&  Butterscotch Pie.&{sleep 30}* Your HP was maxed out.");
	Dialog_Start();
	break;
	
	case 4:
	Dialog_Add("* You ate the fifth slice of the&  Butterscotch Pie.&{sleep 30}* Your HP was maxed out.");
	Dialog_Start();
	break;
	
	case 5:
	Dialog_Add("* You ate the sixth slice of the&  Butterscotch Pie.&{sleep 30}* Your HP was maxed out.");
	Dialog_Start();
	break;
	
	case 6:
	Dialog_Add("* You ate the seventh slice of the&  Butterscotch Pie.&{sleep 30}* Your HP was maxed out.");
	Dialog_Start();
	break;
	
	case 7:
	Dialog_Add("* You ate the final slice of the&  Butterscotch Pie.&{sleep 30}* Your HP was maxed out.");
	Dialog_Start();
	Item_Remove(_item_slot)
	break;
}
global.pie+=1
Player_Heal(Player_GetHpMax())

audio_play_sound(snd_item_heal,0,false)
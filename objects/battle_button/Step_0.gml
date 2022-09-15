var STATUS=Battle_GetState();
var MENU=Battle_GetMenu();
image_blend = make_color_hsv(0,0,sat);

if(STATUS==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE){
	if(Battle_GetMenuChoiceButton()==_button_slot){
		image_index=1;
		if(MENU==BATTLE_MENU.BUTTON){
			battle_soul.x=x-47;
			battle_soul.y=y;
			if image_xscale < 1.2
				image_xscale += 0.025;
			if image_yscale < 1.2
				image_yscale += 0.025;
			if sat < 255
				sat+=20;
		}
	}else{
		image_index=0;
		_timer=0;
		if image_xscale > 1
			image_xscale -= 0.025;
		if image_yscale > 1
			image_yscale -= 0.025;
		if sat > 105
			sat-=20;
	}
}else{
	image_index=0;
	_timer=0;
	if image_xscale > 1
		image_xscale -= 0.025;
	if image_yscale > 1
		image_yscale -= 0.025;
	if sat > 105
		sat-=20;
}
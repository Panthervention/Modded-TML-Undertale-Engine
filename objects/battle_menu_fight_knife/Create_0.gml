event_inherited();

_dir=choose(DIR.LEFT,DIR.RIGHT);
_input_acceptable=0;
_aim_x=0;
_aim_image=0;
_scale_x=1;
_scale_y=1;
_angle=0;
_alpha=1;
Anim_Create(id,"_input_acceptable",0,0,0,1,20)
//Anim_Create(id,"_angle",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,0,choose(360,-360),90)
if(_dir==DIR.LEFT){
	_aim_x=x+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim)/2;
	Anim_Create(id,"_aim_x",ANIM_TWEEN.QUAD,ANIM_EASE.IN_OUT,_aim_x,-(battle_board.left+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim)),90);
}else{
	_aim_x=x-battle_board.left-sprite_get_width(spr_battle_menu_fight_aim)/2;
	Anim_Create(id,"_aim_x",ANIM_TWEEN.QUAD,ANIM_EASE.IN_OUT,_aim_x,battle_board.left+battle_board.right+sprite_get_width(spr_battle_menu_fight_aim),90);

}
global.menu_hurt="de-activated"
global.deadable = true
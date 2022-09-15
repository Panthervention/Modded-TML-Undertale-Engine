///@desc Anim
if(Battle_GetMenuFightDamage()>=0){
	var ENEMY=Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
	//var X=Battle_GetEnemyCenterPosX(ENEMY);
	var Y=Battle_GetEnemyCenterPosY(ENEMY);
	knife = instance_create_depth(_aim_x,Y,0,battle_menu_fight_anim_knife);
	knife.image_angle = _angle
}
surface_set_target(Battle_GetBoardSurface());{
	draw_self();
	if(image_alpha==1){
		draw_sprite_ext(spr_battle_menu_fight_aim,_aim_image,_aim_x,y,1,1,_angle,c_white,1);
	}
}surface_reset_target();

if _input_acceptable = -1
	if(image_alpha==1)
		draw_sprite_ext(spr_battle_menu_fight_aim,_aim_image,_aim_x,y,_scale_x,_scale_y,_angle,c_white,_alpha)
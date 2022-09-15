var color_shadow = make_color_rgb(19,19,111)
if global.slot < 4
{
	draw_set_font(font_determination_mono)
	draw_text_color(battle_board.x-battle_board.left-5+40+252+1,battle_board.y-battle_board.up-5+36+28*2+1,"    PAGE 1",color_shadow,color_shadow,color_shadow,color_shadow,1)
	draw_text_color(battle_board.x-battle_board.left-5+40+252,battle_board.y-battle_board.up-5+36+28*2,"    PAGE 1",c_white,c_white,c_white,c_white,1)
}
else if global.slot >= 4 and global.slot < 8
{
	draw_set_font(font_determination_mono)
	draw_text_color(battle_board.x-battle_board.left-5+40+252+1,battle_board.y-battle_board.up-5+36+28*2+1,"    PAGE 2",color_shadow,color_shadow,color_shadow,color_shadow,1)
	draw_text_color(battle_board.x-battle_board.left-5+40+252,battle_board.y-battle_board.up-5+36+28*2,"    PAGE 2",c_white,c_white,c_white,c_white,1)
}
else if global.slot >= 8 and global.slot < 12
{
	draw_set_font(font_determination_mono)
	draw_text_color(battle_board.x-battle_board.left-5+40+252+1,battle_board.y-battle_board.up-5+36+28*2+1,"    PAGE 3",color_shadow,color_shadow,color_shadow,color_shadow,1)
	draw_text_color(battle_board.x-battle_board.left-5+40+252,battle_board.y-battle_board.up-5+36+28*2,"    PAGE 3",c_white,c_white,c_white,c_white,1)
}
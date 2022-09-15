draw_sprite_ext(spr_logo,0,320,240,2,2,0,c_white,1);
if(_hint = 1)
{
	draw_set_font(font_crypt_of_tomorrow);
	draw_set_halign(fa_middle);
	draw_set_color(c_white);
	draw_text_ext_transformed(320,360,"[Thanks for playing]",9,-1,3,3,0);
	draw_set_halign(fa_left);
}
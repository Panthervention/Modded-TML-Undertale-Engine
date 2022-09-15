if global.debug = true
{
	draw_set_font(font_mars_needs_cunnilingus)
	draw_text_ext_transformed_color(480,0,string(_timer),-1,-1,2,2,0,c_white,c_white,c_white,c_white,1)
	draw_text_ext_transformed_color(480,40,string(_gap),-1,-1,2,2,0,c_white,c_white,c_white,c_white,1)
	draw_text_ext_transformed_color(480,80,string(_gap_end),-1,-1,2,2,0,c_white,c_white,c_white,c_white,1)
	draw_text_ext_transformed_color(480,120,string(_delay_end),-1,-1,2,2,0,c_white,c_white,c_white,c_white,1)
}
draw_set_color(color)
surface_set_target(Battle_GetBoardSurface());{
	draw_set_alpha(1)
	draw_rectangle(x1,y1,x2,y2,true);
	draw_set_alpha(alpha)
	draw_rectangle(x1,y1,x2,y2,false);
	draw_set_alpha(1)
}surface_reset_target();
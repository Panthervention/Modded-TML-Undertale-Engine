ca++;
RGB = make_color_hsv(ca % 255, 255, 255);

var color = c_white
var kr_space = ""
var hp_max_col =  make_color_rgb(192, 0, 0)
var hp_col = make_color_rgb(255, 255, 0)
var kr_col = make_color_rgb(255, 0, 255)

switch difficulty{
	case 0:
		var color = c_white;
		break;
	case 1:
		var color = RGB;
		break;
	case 2:
		var color = c_red;
		break;
}

draw_set_font(font_mars_needs_cunnilingus)
draw_set_color(color)
draw_set_alpha(image_alpha)
draw_text_color(x, y, Player_GetName(), color, color, color, color, image_alpha)
draw_text_color(x + string_width(Player_GetName()), y,"   LV ", c_white, c_white, c_white, c_white, image_alpha)
draw_text_color(x + string_width(Player_GetName() +"   LV "), y, string(Player_GetLv()), c_white, c_white, c_white, c_white, image_alpha)
draw_sprite_ext(spr_battle_ui_hp, 0, (x + 225), (y + 9), 1, 1, 0, c_white, image_alpha)

if difficulty = 1{
	x1 = ((sin(degtorad(ca)) * 15))
	y1 = ((cos(degtorad(ca)) * 15))
	x2 = ((sin(degtorad((ca + 120))) * 15))
	y2 = ((cos(degtorad((ca + 120))) * 15))
	x3 = ((sin(degtorad((ca + 240))) * 15))
	y3 = ((cos(degtorad((ca + 240))) * 15))
	col1 = make_color_rgb(255, 0, 0)
	col2 = make_color_rgb(0, 255, 0)
	col3 = make_color_rgb(0, 0, 255)
	gpu_set_blendmode(bm_add)
	draw_text_color(x+x1, y+y1, Player_GetName(),RGB,col1,col1,col1,image_alpha)
	draw_text_color(x+x2, y+y2, Player_GetName(),RGB,col2,col2,col2,image_alpha)
	draw_text_color(x+x3, y+y3, Player_GetName(),RGB,col3,col3,col3,image_alpha)
	gpu_set_blendmode(bm_normal)
}

draw_rectangle_color((x + 245), (y - 1), (x + 245) + hp_max * 1.2, y + 20, hp_max_col, hp_max_col, hp_max_col, hp_max_col, false)
draw_rectangle_color((x + 245) + (hp * 1.2), (y - 1), (((x + 245) + (hp * 1.2)) + (kr * 1.2)), y + 20, kr_col, kr_col, kr_col, kr_col, false)
draw_rectangle_color((x + 245), (y - 1), (x + 245) + hp * 1.2, y + 20, hp_col, hp_col, hp_col, hp_col, false)

if (Player_GetKR() > 0)
	var color = kr_col
else color = c_white

draw_set_color(color)
if global.kr_activation = true{
	draw_sprite_ext(spr_battle_ui_kr, 0, (((x + 256) + (Player_GetHpMax() * 1.2)) + 10), (y + 9), 1, 1, 0, color, image_alpha)
	kr_space = "    "
}

var para_x = (x + 245) + (Player_GetHpMax() * 1.2) + 14
if (round(hp+kr)) > 9
	draw_text_ext_transformed_color(para_x, y, kr_space + string(round(hp+kr)) + " / ", -1, -1, 1, 1, 0, color, color, color, color, image_alpha)
else if (round(hp+kr)) <= 9
	draw_text_ext_transformed_color(para_x, y, kr_space + "0" + string(round(hp+kr)) + " / ", -1, -1, 1, 1, 0, color, color, color, color, image_alpha)


if (round(hp_max)) > 9
	draw_text_ext_transformed_color(para_x + string_width(kr_space + "       "), y, string(round(hp_max)), -1, -1, 1, 1, 0, color, color, color, color, image_alpha)
else if (round(hp_max)) <= 9
	draw_text_ext_transformed_color(para_x + string_width(kr_space + "       "), y, "0" + string(round(hp_max)), -1, -1, 1, 1, 0, color, color, color, color, image_alpha)

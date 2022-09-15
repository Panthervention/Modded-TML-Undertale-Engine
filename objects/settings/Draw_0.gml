draw_set_font(font_mars_needs_cunnilingus);
ca++;
RGB = make_color_hsv(ca % 255, 255, 255);
if RNG_Logo != 10
draw_text_ext_color(x+162.5,y+40,"Sans by Panthervention",-1,-1,RGB,RGB,RGB,RGB,alpha);
else
draw_text_ext_color(x+162.5,y+40,"Snas by Pantherpenis",-1,-1,RGB,RGB,RGB,RGB,alpha);

draw_sprite_ext(menu_sans,0,x+320,y+240,3,3,angle,c_white,1);
gpu_set_blendmode(bm_add);
xx1 = x + 320 + ((sin(degtorad(ca)) * 120));
yy1 = y + 240 + ((cos(degtorad(ca)) * 120));
xx2 = x + 320 + ((sin(degtorad((ca + 120))) * 120));
yy2 = y + 240 + ((cos(degtorad((ca + 120))) * 120));
xx3 = x + 320 + ((sin(degtorad((ca + 240))) * 120));
yy3 = y + 240 + ((cos(degtorad((ca + 240))) * 120));
draw_sprite_ext(menu_sans,0,xx1,yy1,3,3,-angle,RGB,0.4);
draw_sprite_ext(menu_sans,0,xx2,yy2,3,3,-angle,RGB,0.4);
draw_sprite_ext(menu_sans,0,xx3,yy3,3,3,-angle,RGB,0.4);
gpu_set_blendmode(bm_normal);
draw_set_halign(fa_left);
draw_text_ext_color(x+3,y,string(Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.ATTEMPT_COUNT)) + " Attempt",-1,-1,attempt_col,attempt_col,attempt_col,attempt_col,alpha);
draw_text_ext_color(x+640-string_width(string(Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DEATH_COUNT)) + " Death"),y,string(Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DEATH_COUNT)) + " Death",-1,-1,death_col,death_col,death_col,death_col,alpha);

//Main Menu
draw_set_font(font_determination_mono);
draw_text_ext_color(x+190,y+80,"Select your snas!",-1,-1,RGB,RGB,RGB,RGB,alpha);
draw_set_font(font_determination_sans);
draw_text_ext_color(x+221,y+140,"Start at Phase 1",-1,-1,_menu_col_1,_menu_col_1,_menu_col_1,_menu_col_1,alpha);
draw_text_ext_color(x+221,y+180,"Start at Phase 2",-1,-1,_menu_col_2,_menu_col_2,_menu_col_2,_menu_col_2,alpha);
draw_text_ext_color(x+221,y+220,"Settings",-1,-1,_menu_col_3,_menu_col_3,_menu_col_3,_menu_col_3,alpha);
draw_text_ext_color(x+221,y+260,"Credits",-1,-1,_menu_col_4,_menu_col_4,_menu_col_4,_menu_col_4,alpha);
draw_set_font(font_crypt_of_tomorrow);
draw_text_ext_transformed_color(x+10,y+445,"Engine ver 0.6",-1,-1,2,2,0,c_gray,c_gray,c_white,c_white,alpha);
draw_text_ext_transformed_color(x+10,y+460,"Game ver 1.1.5 and this is not a mod you little...",-1,-1,2,2,0,c_gray,c_gray,c_white,c_white,alpha);
x1 = 450 + ((sin(degtorad(ca)) * 20));
y1 = 400 + ((cos(degtorad(ca)) * 20));
x2 = 390 + ((sin(degtorad((ca + 120))) * 20));
y2 = 400 + ((cos(degtorad((ca + 120))) * 20));
x3 = 450 + ((sin(degtorad((ca + 240))) * 20));
y3 = 400 + ((cos(degtorad((ca + 240))) * 20));
gpu_set_blendmode(bm_add);
col1 = make_color_rgb(255, 0, 0);
col2 = make_color_rgb(0, 255, 0);
col3 = make_color_rgb(0, 0, 255);
draw_set_font(font_mars_needs_cunnilingus);
draw_text_ext_transformed_color(x+420,y+400,"SNAS CONTENT",-1,-1,1,1,0,RGB,RGB,RGB,RGB,alpha);
draw_text_ext_transformed_color(x+x1,y+y1,"RNG ALERT",-1,-1,1,1,0,RGB,col1,col1,RGB,alpha);
draw_text_ext_transformed_color(x+x2,y+y2,"OVERUSED CONTENT",-1,-1,1,1,0,col2,RGB,col2,RGB,alpha);
draw_text_ext_transformed_color(x+x3,y+y3,"GAEMING",-1,-1,1,1,0,RGB,col3,RGB,col3,alpha);
gpu_set_blendmode(bm_normal);

//Settings
draw_set_font(font_mars_needs_cunnilingus);
draw_text_ext_transformed_color(x+830,y+40,"Segtings",-1,-1,2,2,0,RGB,RGB,RGB,RGB,alpha);
draw_set_font(font_determination_sans);
draw_text_ext_color(x+740,y+140,"Control Scheme",-1,-1,_setting_col_1,_setting_col_1,_setting_col_1,_setting_col_1,alpha);
draw_text_ext_color(x+740,y+180,"Difficulty",-1,-1,_setting_col_2,_setting_col_2,_setting_col_2,_setting_col_2,alpha);
draw_text_ext_color(x+740,y+220,"Border",-1,-1,_setting_col_3,_setting_col_3,_setting_col_3,_setting_col_3,alpha);
draw_text_ext_color(x+740,y+260,"Volume",-1,-1,_setting_col_4,_setting_col_4,_setting_col_4,_setting_col_4,alpha);
draw_text_ext_color(x+740,y+300,"BGM",-1,-1,_setting_col_5,_setting_col_5,_setting_col_5,_setting_col_5,alpha);
draw_text_ext_color(x+740,y+340,"Blurring Blaster",-1,-1,_setting_col_6,_setting_col_6,_setting_col_6,_setting_col_6,alpha);
draw_text_ext_color(x+740,y+380,"Go back",-1,-1,_setting_col_7,_setting_col_7,_setting_col_7,_setting_col_7,alpha);

draw_text_ext_color(x+990,y+140,"< "+string(control)+" >",-1,-1,_opt_col_1,_opt_col_1,_opt_col_1,_opt_col_1,alpha);
draw_text_ext_color(x+990,y+180,"< "+string(noob)+" >",-1,-1,_opt_col_2,_opt_col_2,_opt_col_2,_opt_col_2,alpha);
draw_text_ext_color(x+990,y+220,"< "+string(border_mode)+" >",-1,-1,_opt_col_3,_opt_col_3,_opt_col_3,_opt_col_3,alpha);

draw_rectangle_color(x+990,y+265,x+1090,y+286,c_red,c_red,c_red,c_red,false);
if volume > 0
	draw_rectangle_color(x+990,y+265,x+990+(volume*100),y+286,c_yellow,c_yellow,c_yellow,c_yellow,false);
draw_set_font(font_mars_needs_cunnilingus);
draw_text_ext_color(x+1120,y+266,string(round(volume*100)),-1,-1,_opt_col_4,_opt_col_4,_opt_col_4,_opt_col_4,alpha);

draw_set_font(font_determination_sans);
draw_text_ext_color(x+990,y+300,"< "+string(megalo)+" >",-1,-1,_opt_col_5,_opt_col_5,_opt_col_5,_opt_col_5,alpha);
draw_text_ext_color(x+990,y+340,"< "+string(blurring)+" >",-1,-1,_opt_col_6,_opt_col_6,_opt_col_6,_opt_col_6,alpha);

draw_sprite_ext(spr_battle_soul_red,0,_soul_x,_soul_y,1,1,0,c_white,_soul_alpha);

switch border_mode
{
	case "Corridor":
		if S00T_Alpha < 1
			S00T_Alpha += 0.05
		break;
	default:
		if S00T_Alpha > 0
			S00T_Alpha -= 0.05
		break;
}
draw_set_font(font_crypt_of_tomorrow);
draw_text_ext_transformed_color(x+650,10,"Credit to S00T for the border!",-1,-1,2,2,0,RGB,RGB,c_white,c_white,S00T_Alpha);

draw_text_ext_transformed_color(x+650,420,"[Z] / [Enter] to choose",-1,-1,2,2,0,RGB,RGB,c_white,c_white,alpha);
draw_text_ext_transformed_color(x+650,440,"Left / [A] - Right / [D] to change settings",-1,-1,2,2,0,RGB,RGB,c_white,c_white,alpha);
draw_text_ext_transformed_color(x+650,460,"[X] / [Shift] to leave the choice",-1,-1,2,2,0,RGB,RGB,c_white,c_white,alpha);

//Credits
draw_set_font(font_mars_needs_cunnilingus);
draw_text_ext_transformed_color(x+150,y+520,"Epic Creditos",-1,-1,2,2,0,RGB,RGB,c_white,c_white,alpha);

draw_set_font(font_determination_sans);
draw_text_ext_transformed_color(x+60,y+620,"Engine by ",-1,-1,1,1,0,c_white,c_white,c_white,c_white,alpha);
draw_text_ext_transformed_color(x+60+string_width("Engine by "),y+620,"TML",-1,-1,1,1,0,RGB,RGB,c_white,c_white,alpha);

draw_text_ext_transformed_color(x+60,y+660,"UNDERTALE by ",-1,-1,1,1,0,c_white,c_white,c_white,c_white,alpha);
draw_text_ext_transformed_color(x+60+string_width("UNDERTALE by "),y+660,"Toby Fox",-1,-1,1,1,0,RGB,RGB,c_white,c_white,alpha);

draw_text_ext_transformed_color(x+60,y+700,"Tears in the Rain v3 by ",-1,-1,1,1,0,c_white,c_white,c_white,c_white,alpha);
draw_text_ext_transformed_color(x+60+string_width("Tears in the Rain v3 by "),y+700,"DropLikeAnECake",-1,-1,1,1,0,RGB,RGB,c_white,c_white,alpha);

draw_text_ext_transformed_color(x+60,y+740,"Megalovania (Original and SSB) by ",-1,-1,1,1,0,c_white,c_white,c_white,c_white,alpha);
draw_text_ext_transformed_color(x+60+string_width("Megalovania (Original and SSB) by "),y+740,"Toby Fox",-1,-1,1,1,0,RGB,RGB,c_white,c_white,alpha);

draw_text_ext_transformed_color(x+60,y+780,"Corridor Border by ",-1,-1,1,1,0,c_white,c_white,c_white,c_white,alpha);
draw_text_ext_transformed_color(x+60+string_width("Corridor Border by "),y+780,"S00T! (Skyblue#0053)",-1,-1,1,1,0,RGB,RGB,c_white,c_white,alpha);

draw_text_ext_transformed_color(x+60,y+820,"Game by ",-1,-1,1,1,0,c_white,c_white,c_white,c_white,alpha);
draw_text_ext_transformed_color(x+60+string_width("Game by "),y+820,"Panthervention",-1,-1,1,1,0,RGB,RGB,c_white,c_white,alpha);
draw_text_ext_transformed_color(x+60+string_width("Game by Panthervention "),y+820,"lmao XD",-1,-1,1,1,0,c_white,c_white,c_white,c_white,alpha);

draw_text_ext_transformed_color(x+60,y+860,"Haha RGB spam go brrrrrrrrrr",-1,-1,1,1,0,RGB,RGB,RGB,RGB,alpha/10);

draw_text_ext_transformed_color(x+60,y+900,"Credit to Keane Duda for made fun of me lmao =((",-1,-1,1,1,0,RGB,RGB,RGB,RGB,alpha/25);

draw_set_font(font_crypt_of_tomorrow);
draw_text_ext_transformed_color(x+10,y+940,"[X] / [SHIFT] to go back",-1,-1,2,2,0,RGB,RGB,c_white,c_white,alpha_credits);
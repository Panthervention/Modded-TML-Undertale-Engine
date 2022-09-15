///@arg soul_object
///@arg *angle
function Battle_SoulEffect() {
	var SOUL = argument[0]
	var X = battle_soul.x
	var Y = battle_soul.y
	var ANGLE = DIR.DOWN

	if(argument_count >= 2){
		ANGLE = argument[1];
	}
	switch SOUL
	{
	     case battle_soul_red:
		      red = instance_create_depth(X,Y,0,battle_soul_effect)
			  red.soul = spr_battle_soul_red
			  red.dir = ANGLE
			  break;
		  
		 case battle_soul_blue:
		      blue = instance_create_depth(X,Y,0,battle_soul_effect)
			  blue.soul = spr_battle_soul_blue
			  blue.dir = ANGLE
			  break;
	}


}

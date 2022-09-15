///@arg pause
///@arg length
///@arg duration
///@arg color
///@arg *anim_time
function MakeBoneWallRight() {


	var PAUSE = argument[0]
	var LENGTH = argument[1]
	var DURATION = argument[2]
	var COLOR = argument[3]
	var ANIM = 5
	if argument_count > 4
	    ANIM = argument[4]

	var ii = 0
	for (i = 0; i < ((battle_board.up + battle_board.down) + 10); i += 10)
	{
	    ii += 1
	    b[ii] = MakeBoneH((((battle_board.x + battle_board.right) + (LENGTH / 2))+6), ((battle_board.y - battle_board.up) + i), LENGTH - 6, 0, 0, COLOR, 0, 0, 0, ((DURATION + (PAUSE * 2)) + 10 + ANIM))
	    with (b[ii])
	    {
	        Anim_Create(id, "x", 0, 0, x, (-LENGTH), ANIM, PAUSE)
	        Anim_Create(id, "x", 0, 0, (x - LENGTH), (LENGTH * 2), ANIM, ((5 + PAUSE) + DURATION))
	        a = instance_create_depth(0, 0, 0, shaker)
	        a.target = id
	        a.var_name = "y"
	        a.shake_distance = 2
	        a.shake_speed = 1
	        a.shake_random = 0
	        a.shake_decrease = 1
	        a.delay = (PAUSE + 5)
	    }
	}
	a = instance_create_depth(0,0,0,battle_bone_stab_alert);
	a.duration = PAUSE;
	a.x1 = battle_board.x+battle_board.right-2;
	a.y1 = battle_board.y-battle_board.up+1;
	a.x2 = battle_board.x+battle_board.right-LENGTH;
	a.y2 = battle_board.y+battle_board.down-2;
	audio_play_sound(snd_exclamation,0,0);

}

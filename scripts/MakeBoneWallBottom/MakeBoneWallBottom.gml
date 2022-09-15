///@arg pause
///@arg length
///@arg duration
///@arg color
///@arg *anim_time
function MakeBoneWallBottom() {

	var PAUSE = argument[0]
	var LENGTH = argument[1]
	var DURATION = argument[2]
	var COLOR = argument[3]
	var ANIM = 5
	if argument_count > 4
	    ANIM = argument[4]

	var ii = 0
	for (i = -3; i < ((battle_board.left + battle_board.right) + 10); i += 10)
	{
	    ii += 1
	    b[ii] = MakeBoneV(((battle_board.x - battle_board.left) + i), (((battle_board.y + battle_board.down) + (LENGTH / 2)) +6), LENGTH -6, 0, 0, COLOR, 0, 0, 0, ((DURATION + (PAUSE * 2)) + 10 + ANIM))
	    with (b[ii])
	    {
	        Anim_Create(id, "y", 0, 0, y, (-LENGTH), ANIM, PAUSE)
	        Anim_Create(id, "y", 0, 0, (y - LENGTH), (LENGTH * 2), ANIM, ((5 + PAUSE) + DURATION))
	        a = instance_create_depth(0, 0, 0, shaker)
	        a.target = id
	        a.var_name = "x"
	        a.shake_distance = 2
	        a.shake_speed = 1
	        a.shake_random = 0
	        a.shake_decrease = 1
	        a.delay = (PAUSE + 5)
	    }
	}
	a = instance_create_depth(0,0,0,battle_bone_stab_alert);
	a.duration = PAUSE;
	a.x1 = battle_board.x-battle_board.left+1;
	a.y1 = battle_board.y+battle_board.down-LENGTH;
	a.x2 = battle_board.x+battle_board.right-2;
	a.y2 = battle_board.y+battle_board.down-2;
	audio_play_sound(snd_exclamation,0,0);
}

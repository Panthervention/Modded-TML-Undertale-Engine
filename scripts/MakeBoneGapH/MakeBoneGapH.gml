///@arg x
///@arg y
///@arg vspeed
///@arg gap
///@arg auto_destroy
///@arg color
///@arg *duration
function MakeBoneGapH() {
	var X = argument[0];
	var Y = argument[1];
	var VSPEED = argument[2];
	var GAP = argument[3];
	var DESTROY = argument[4];
	var COLOR = argument[5]
	var DURATION = -1;
	if(argument_count >= 7){
		DURATION = argument[6];
	}

	MakeBoneLeft(Y,X-battle_board.x+battle_board.left-GAP,VSPEED,COLOR,0,0,DESTROY,DURATION)
	MakeBoneRight(Y,battle_board.x+battle_board.right-GAP-X,VSPEED,COLOR,0,0,DESTROY,DURATION)


}

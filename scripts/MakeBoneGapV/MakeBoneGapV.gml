///@arg x
///@arg y
///@arg hspeed
///@arg gap
///@arg auto_destroy
///@arg color
///@arg *duration
function MakeBoneGapV() {
	var X = argument[0];
	var Y = argument[1];
	var HSPEED = argument[2];
	var GAP = argument[3];
	var DESTROY = argument[4];
	var COLOR = argument[5]
	var DURATION = -1;
	if(argument_count >= 7){
		DURATION = argument[6];
	}

	MakeBoneTop(X,Y-battle_board.y+battle_board.up-GAP,HSPEED,COLOR,0,0,DESTROY,DURATION)
	MakeBoneBottom(X,battle_board.y+battle_board.down-GAP-Y,HSPEED,COLOR,0,0,DESTROY,DURATION)


}

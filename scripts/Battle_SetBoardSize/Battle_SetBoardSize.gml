///@arg up
///@arg down
///@arg left
///@arg right
///@arg time*
function Battle_SetBoardSizeCubic(U,D,L,R) 
{
	var TIME=25;
	if(argument_count>=5){
		TIME=argument[4];
	}

	if(is_real(U)){
		if(TIME==0){
			battle_board.up=U;
		}else{
			Anim_Create(battle_board,"up",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,battle_board.up,U-battle_board.up,TIME);
		}
	}
	if(is_real(D)){
		if(TIME==0){
			battle_board.down=D;
		}else{
			Anim_Create(battle_board,"down",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,battle_board.down,D-battle_board.down,TIME);
		}
	}
	if(is_real(L)){
		if(TIME==0){
			battle_board.left=L;
		}else{
			Anim_Create(battle_board,"left",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,battle_board.left,L-battle_board.left,TIME);
		}
	}
	if(is_real(R)){
		if(TIME==0){
			battle_board.right=R;
		}else{
			Anim_Create(battle_board,"right",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,battle_board.right,R-battle_board.right,TIME);
		}
	}

	Console_OutputLine("Called an obsolete function: Battle_SetBoardSizeCubic! Go fuck zhazha.")
	return true;
}



///@arg up
///@arg down
///@arg left
///@arg right
///@arg time*
function Battle_SetBoardSize(U,D,L,R) 
{
	var TIME=25;
	if(argument_count>=5){
		TIME=argument[4];
	}

	if(is_real(U)){
		if(TIME==0){
			battle_board.up=U;
		}else{
			Anim_Create(battle_board,"up",0,0,battle_board.up,U-battle_board.up,TIME);
		}
	}
	if(is_real(D)){
		if(TIME==0){
			battle_board.down=D;
		}else{
			Anim_Create(battle_board,"down",0,0,battle_board.down,D-battle_board.down,TIME);
		}
	}
	if(is_real(L)){
		if(TIME==0){
			battle_board.left=L;
		}else{
			Anim_Create(battle_board,"left",0,0,battle_board.left,L-battle_board.left,TIME);
		}
	}
	if(is_real(R)){
		if(TIME==0){
			battle_board.right=R;
		}else{
			Anim_Create(battle_board,"right",0,0,battle_board.right,R-battle_board.right,TIME);
		}
	}

	Console_OutputLine("Called an obsolete function: Battle_SetBoardSize! Go fuck zhazha.")
	return true;
}
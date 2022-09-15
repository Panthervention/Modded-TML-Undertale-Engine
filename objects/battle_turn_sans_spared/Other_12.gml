///@desc Turn Start
var space = 0
var delay = 0
repeat(7)
{
	die1=MakeBoneH(120,255+space,120,0,0,3,0,0,0)
	die2=MakeBoneH(520,385-space,120,0,0,3,0,0,0)
	die3=MakeBoneV(385-space,120,120,0,0,3,0,0,0)
	die4=MakeBoneV(255+space,520,120,0,0,3,0,0,0)
	Anim_Create(die1,"x",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,120,200,60,delay)
	Anim_Create(die2,"x",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,520,-200,60,delay)
	Anim_Create(die3,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,120,200,60,delay)
	Anim_Create(die4,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,520,-200,60,delay)
	space+=10
	delay+=60
}
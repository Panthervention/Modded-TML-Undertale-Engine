///@arg x
///@arg y
///@arg length
///@arg hspeed
///@arg vspeed
///@arg color
///@arg out
///@arg rot
///@arg auto_destroy
///@arg *duration
///@arg **tag
function MakeBoneV() {
	var X = argument[0];
	var Y = argument[1];
	var LENGTH = argument[2];
	var HSPEED = argument[3];
	var VSPEED = argument[4];
	var COLOR = argument[5];
	var OUT = argument[6];
	var ROT = argument[7];
	var DESTROY = argument[8];
	var DURATION = -1;
	var TAG = 0;
	if(argument_count >= 10){
		DURATION = argument[9];
	}
	if(argument_count >= 11){
		TAG = argument[10];
	}


	bone = instance_create_depth(X,Y,0,battle_bullet_bone)
	bone.length = LENGTH
	bone.hspeed = HSPEED
	bone.vspeed = VSPEED
	bone.color = COLOR
	bone.out = OUT
	bone.rotate = ROT
	bone.auto_destroy = DESTROY
	bone.angle = BONE.VERTICAL
	bone.duration = DURATION
	bone.tag = TAG

	return bone;


}

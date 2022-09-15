///@arg x
///@arg y
///@arg width
///@arg hspeed
///@arg vspeed
///@arg sticky
///@arg angle
///@arg *xbounce
///@arg *ybounce
function MakePlatform() {
	var X = argument[0];
	var Y = argument[1];
	var WIDTH = argument[2];
	var MOVEX = argument[3];
	var MOVEY = argument[4];
	var STICKY = argument[5];
	var ANGLE = argument[6];
	var xbounce = false
	var ybounce = false
	if(argument_count >= 8){
	    var xbounce = argument[7];
	}
	if(argument_count >= 9){
	    var ybounce = argument[8];
	}

	platform = instance_create_depth(X,Y,0,battle_platform)
	platform.width=WIDTH;
	platform.sticky=STICKY;
	platform.angle=ANGLE;
	platform.move_x=MOVEX;
	platform.move_y=MOVEY;
	platform.bounce_x=xbounce;
	platform.bounce_y=ybounce;
	return platform;


}

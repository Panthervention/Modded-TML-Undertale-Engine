image_xscale += 0.15
image_yscale += 0.15
image_alpha -= 0.035
if (image_alpha <= 0)
    instance_destroy()
	
if(dir==DIR.DOWN){
	image_angle=0;
}else if(dir==DIR.UP){
	image_angle=180;
}else if(dir==DIR.LEFT){
	image_angle=-90;
}else if(dir==DIR.RIGHT){
	image_angle=90;
}
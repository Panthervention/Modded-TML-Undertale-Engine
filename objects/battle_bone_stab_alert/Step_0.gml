duration -= 1
if(duration <= 0){
	audio_play_sound(snd_bonewall,0,0);
	instance_destroy();
}
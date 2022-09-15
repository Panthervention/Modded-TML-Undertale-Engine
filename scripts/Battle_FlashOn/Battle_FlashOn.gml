function Battle_FlashOn() {
	fader.color = 0;
	fader.alpha = 1;
	audio_pause_all();
	audio_play_sound(snd_noise, 1, false);
	instance_destroy(battle_bullet);
	instance_destroy(battle_platform);
	instance_destroy(blur_shader);
}

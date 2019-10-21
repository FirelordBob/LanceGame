with other {
	global.cash += other.treasurevalue;
}
instance_destroy();
audio_play_sound(snd_coin,0,0)
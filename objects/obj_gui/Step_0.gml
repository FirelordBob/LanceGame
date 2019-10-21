/// @description Insert description here
if(!audio_is_playing(ds_list_find_value(song_list,currentSong)))
{
	currentSong++
	if(currentSong >= ds_list_size(song_list))
		currentSong = 0
	audio_play_sound(ds_list_find_value(song_list,currentSong),0,0)
}


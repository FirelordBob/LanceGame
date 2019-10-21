/// @description Insert description here
// You can write your code in this editor
song_list = ds_list_create()
ds_list_add(song_list,sound0)
ds_list_add(song_list,sound1)
ds_list_add(song_list,sound2)
ds_list_add(song_list,sound3)
ds_list_add(song_list,sound4)
ds_list_add(song_list,sound5)
ds_list_add(song_list,sound6)
ds_list_shuffle(song_list)

currentSong = 0

audio_play_sound(sound0,0,0)




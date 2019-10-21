/// @description Insert description here
// You can write your code in this editor
if(sprite_index== spr_wallCrawler)
{
mode = "hunt"
targetPointX = myplayer.x
targetPointY = myplayer.y
alarm_set(1,hunttime)
sprite_index = spr_wallCrawlerAttack
}
if(sprite_index == spr_wallCrawlerReturn)
{
	sprite_index= spr_wallCrawler	
	image_speed = 0
}
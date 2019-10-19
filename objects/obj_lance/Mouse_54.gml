/// @description Insert description here
// You can write your code in this editor
if(!attached && !tp && !cooldown)
{
	alarm_set(2,tpDelay)
	with(lanceEffect)
	{
	alarm_set(0,other.tpDelay*2)
	if(lance != noone && !lance.attached && !lance.tp)
		{
			lance.tp = 1
			lanceStartX = lance.player.x
			lanceStartY = lance.player.y
			alarm_set(0,lance.tpDelay)
			part_type_speed(tpPartType, .1, 1, 0, 0);
			part_type_direction(tpPartType, 0, 360, 0, 2);	
			part_particles_create(tpParticles, lance.player.x, lance.player.y, tpPartType, 40);
			lance.player.image_alpha = 0
		}
	}
	
}
/// @description Insert description here
// You can write your code in this editor
if(lance.tp)
{
	dist = point_distance(lanceStartX,lanceStartY,x,y)
	dir = point_direction(lanceStartX,lanceStartY,x,y)
	part_type_speed(tpPartType, 3, 5, -.1, 0);
	part_type_direction(tpPartType, dir-30, dir+30, 0, 0);
	part_particles_create(tpParticles, x, y, tpPartType, 40);
	lance.player.image_alpha = 1	
}
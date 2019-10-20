/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_monster) && invulnerable <= 0)
{
	var enemy = instance_place(x,y,obj_monster)
	hsp = sign(x-enemy.x)*hMax
	vsp = -vMax
	x = currentX
	y = currentY
	invulnerable = invulnerableTime
	image_alpha = .5
	health--
}

if(place_meeting(x,y,obj_spikes)&& invulnerable <= 0)
{
	var enemy = instance_place(x,y,obj_spikes)
	hsp = sign(x-enemy.x)*hMax
	vsp = -vMax
	x = currentX
	y = currentY
	invulnerable = invulnerableTime
	image_alpha = .5
	health--
}

if(invulnerable > 0)
	invulnerable--
else if(!death)
	image_alpha = 1

if health = 0
{
	death = 1
	alarm_set(1,150)
		system = part_system_create_layer("Instances", 0);

	type = part_type_create();
	// no blending

	part_type_sprite(type, sprite5, true, false, false);
	part_system_depth(system, -10)
	part_type_speed(type, 3, 5, -.1, 0);

	part_type_direction(type, 0, 360, 0, 0);

	part_type_gravity(type, .2, 270);

	part_type_life(type, 20, 30);
	part_type_size(type,1,3,0,0)
	
}
if(death)
{
	part_particles_create(system, x + 0, y + 0, type, 1);
}
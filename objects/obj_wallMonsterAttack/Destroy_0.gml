parent.attacking = 0
if(timeAlive > 5 && !selfDestruct)
{
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
	part_particles_create(system, x + 0, y + 0, type, 80);
	instance_destroy(parent)
	global.killCount++
	if(global.killCount mod 10 = 0)
		global.hp++
}

/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_monster) && invulnerable == 0 && !death)
{
	var enemy = instance_place(x,y,obj_monster)
	if !(enemy.lanced) {
		hsp = sign(x-enemy.x)*hMax
		vsp = -vMax
		x = currentX
		y = currentY
		invulnerable = 1
		image_alpha = .5
		global.hp--
		alarm_set(0,invulnerableTime)
	}
}

if(place_meeting(x,y,obj_spikes)&& invulnerable == 0 && !death)
{
	var enemy = instance_place(x,y,obj_spikes)
	hsp = sign(x-enemy.x)*hMax
	vsp = -vMax
	x = currentX
	y = currentY
	invulnerable = 1
	image_alpha = .5
	global.hp--
	alarm_set(0,invulnerableTime)
}

if(y > room_height*2)
	global.hp = 0

if global.hp <= 0 && !death
{
	death = 1
	alarm_set(1,40)
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
/// @description Insert description here
// You can write your code in this editor
lance = noone
tpParticles = part_system_create_layer("Instances", 0);

tpPartType = part_type_create();
// no blending
part_system_depth(tpParticles,depth)
part_type_size(tpPartType, 1, 2, 0, 2);

part_type_sprite(tpPartType, sprite3, true, false, false);

part_type_speed(tpPartType, 1, 2, 0, 0);

part_type_direction(tpPartType, 0, 360, 0, 0);

part_type_life(tpPartType, 20, 30);

part_type_orientation(tpPartType,0,360,5,2,0)
lanceStartX = 0
lanceStartY = 0

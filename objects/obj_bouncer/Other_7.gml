/// @description Insert description here
// You can write your code in this editor
if(sprite_index == spr_monsterBounce)
{
	vsp = -vMax
	sprite_index = spr_monsterBounceIdle
}
else if(onGround)
	sprite_index = spr_monsterBounce
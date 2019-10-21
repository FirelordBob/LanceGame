if(!other.attached && !lanced && !other.wallAttach) {
	lanced = true;
	vsp = 0
	grav = 1
	sprite_index = spr_wallCrawlerDeath
	other.y = bbox_top
}
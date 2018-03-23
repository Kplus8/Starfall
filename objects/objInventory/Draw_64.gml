//Keep inventory screen on right side
draw_sprite(sprInventory, 0, display_get_width() - 1024 - 128,  0)
if (global.playerWeapon == "Basic Rifle") {
	draw_sprite(sprBasicRifle, 0, display_get_width() - 1152 + 48, 312)
	//TODO: unhardcode boundaries
}

if (global.invSlots[0] == "Basic Shotgun") {
	draw_sprite(sprBasicShotgun, 0, display_get_width() - 1152 + 32, 512 + 64)
	//TODO: Should iterate over all items in array
}

//Still needs to update to support item swapping, will fix for next deliverable
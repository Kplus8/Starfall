//Keep inventory screen on right side
draw_sprite(sprGrayRectangle, 0, 0, display_get_height() - 128*3)

draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_font(-1);
draw_text(128, display_get_height() - 128*3 -64 - 16, "Weapon: ")

if (global.playerWeapon == "Basic Rifle") {
	draw_sprite(sprBasicRifle, 0, 192, display_get_height() - 128*3 -64)
} else if (global.playerWeapon == "Basic Shotgun") {
	draw_sprite(sprBasicRifle, 0, 192, display_get_height() - 128*3 -64)
}

draw_text(256 + 32, display_get_height() - 128*3 -64 - 16, "Armor: ")
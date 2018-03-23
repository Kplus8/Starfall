game_set_speed(60,gamespeed_fps);

global.invId = instance_create_layer(window_get_width(),0,"lay_inventory", objInventory)

global.playerWeapon = "Basic Rifle"
global.playerArmor = "Empty"
global.playerAbility = "Empty"
global.playerItem = "Empty"

for (var i = 0; i < 8; i++) {
	global.invSlots[i] = "Empty"
}

global.invSlots[0] = "Basic Shotgun"

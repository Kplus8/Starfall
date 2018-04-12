//Equips the weapon, if the player is standing on it
if (collision_rectangle( x, y, x + 64, y + 64, obj_player, false, false ) != noone) {
	global.playerWeapon = type	
	instance_destroy()
	
}

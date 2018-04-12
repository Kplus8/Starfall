//Fire when pressing the left mouse button
if (mouse_check_button(mb_left)) 
{
	//reduce speed to account for recoil
	spd = basespd/2;
	if (cooldown == 0)
	{
		//reduce ammo of special weapon if necessary
		ammo--;
		
		//fire rifle (1 bullet)
		if (global.playerWeapon == "Basic Rifle") {
			weaponspd = 5
			bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet);
		} if (global.playerWeapon == "Basic Shotgun") {
			//fire shotgun (3 bullets split)
			weaponspd = 15
			instance_create_layer(x,y,"lay_bullets",obj_bullet2);
			bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet2);
			with (bullet)
			{
				direction-=10;
			}
			bullet = instance_create_layer(x,y,"lay_bullets",obj_bullet2);
			with (bullet)
			{
				direction+=10;
			}
		}
		//set cooldown to current weaponspeed
		cooldown = weaponspd;
	}
}
else 
{
	//restore speed to default
	spd = basespd; 
}

if (global.playerArmor == "Basic Armor") {
	defense = 1
} else {
	defense = 0	
}

//tick down cooldown every frame
if (cooldown > 0) cooldown--; 

//Move in four directions when pressing arrow keys.
if (keyboard_check(vk_left))	x-= spd;
if (keyboard_check(vk_right))	x+= spd;
if (keyboard_check(vk_up))		y-= spd;
if (keyboard_check(vk_down))	y+= spd;

if (keyboard_check(ord("A")))	x-= spd;
if (keyboard_check(ord("D")))	x+= spd;
if (keyboard_check(ord("W")))	y-= spd;
if (keyboard_check(ord("S")))	y+= spd;


//angle sprite towards mouse cursor
image_angle = point_direction(x,y,mouse_x,mouse_y);

if(hit_cooldown > 0)
{
	hit_cooldown--;
}

if(hp < 0)
{
	game_restart();
}

global.playerHP = hp;
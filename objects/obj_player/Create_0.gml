///Initialize variables

basespd = 5;			//default movement speed
spd = 5;				//current movement speed 
weapon = 0;				//current weapon
weaponspd = 5;			//current shooting speed
ammo = 0;				//when ammo reaches zero, return to default weapon (unlimited ammo)
cooldown = 0;			//able to fire again when cooldown reaches zero (based on weaponspd)
hp = 10;
defense = 0;
max_hp = 14;
hit_cooldown_time = 1.5*room_speed;
hit_cooldown = 0;
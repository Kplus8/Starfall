//Initialize variables
global.hp = 125;			//number of hits the enemy can take
hit = 0;		//whether or not the enemy has been hit this frame
spd = 2.5;		//movement speed
rand = random_range(0.2, 0.8);
vspeed = spd*rand;
hspeed = spd*(1-rand);
shoot_timer = 0.5*room_speed;
alarm[0] = shoot_timer + irandom(1*room_speed);
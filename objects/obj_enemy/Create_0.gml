//Initialize variables
hp = 5;			//number of hits the enemy can take
hit = 0;		//whether or not the enemy has been hit this frame
spd = 2.5;		//movement speed
shoot_timer = 5*room_speed;
alarm[0] = shoot_timer + irandom(1*room_speed);
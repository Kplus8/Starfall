//Initialize variables
timer = 300;		//duration between spawns (frames)
timer_min = 280;	//minimum duration between spawns 
timer_dec = 1;		//amount to reduce from duration each spawn
alarm[0] = timer;	//set alarm to trigger spawn
buffer = 50;		//buffer distance from player
num_enemies_max = 30;
num_enemies_spawned = 0;
global.num_enemies_killed = 0;
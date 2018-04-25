//Create 8 new enemies
if(num_enemies_spawned < num_enemies_max) {
	repeat(5)
	{
		random_x = obj_player.x;
		random_y = obj_player.y;
		while(random_x <= obj_player.x && random_x >= (obj_player.x - buffer)) {
			while(random_x >= obj_player.x && random_x <= (obj_player.x + buffer)) {
				random_x = random(room_width);
				random_y = random(room_height);
			}
		}
		if(instance_exists(obj_player)) {
			randomNumber = random_range(0,1)
			if (randomNumber > .8) {
				instance_create_layer(random_x, random_y,"lay_enemy",obj_enemy2);
			} else instance_create_layer(random_x, random_y,"lay_enemy",obj_enemy);
			num_enemies_spawned++;
		}
		
	}

	//Decrease time between spawns
	timer = max (timer-timer_dec,timer_min);

	//Reset alarm
	alarm[0] = timer;
}

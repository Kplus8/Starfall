//Create 8 new enemies
if(num_enemies_spawned > num_enemies_max) {
	repeat(5)
	{
		instance_create_layer(random(room_width),random(room_height),"lay_enemy",obj_enemy);
		num_enemies_spawned++;
	}

	//Decrease time between spawns
	timer = max (timer-timer_dec,timer_min);

	//Reset alarm
	alarm[0] = timer;
}
if(global.num_enemies_killed >= num_enemies_max) {
	room_goto_next();
	//possibly spawn a boss instead once we get more enemy types
}
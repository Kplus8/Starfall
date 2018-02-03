//Initialize variables
global.gameTimer = 60*room_speed;		//time of game (seconds*room speed to get frames)
alarm[1] = global.gameTimer;	//set alarm to trigger end of game
global.gameTimer = global.gameTimer/room_speed; //set back to seconds for display purposes
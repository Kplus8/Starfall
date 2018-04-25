//Move towards player


//Gradually reduce "just hit" effect
if (hit > 0) hit -= 0.05; else hit = 0;

//Destroy if hp is less than or equal to 0
if (global.hp <= 0) instance_destroy();
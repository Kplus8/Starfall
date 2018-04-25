//Reduce enemy hitpoints on collision
with(other)
{
	global.hp--;
	hit = 1;
}

//destroy the bullet
instance_destroy();
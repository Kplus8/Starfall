//Reduce enemy hitpoints on collision
with(other)
{
	hp--;
}

//destroy the bullet
instance_destroy();
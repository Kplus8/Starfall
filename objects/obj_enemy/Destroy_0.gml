//Create fragments and enemy splatter on death
//repeat(choose(5,8)) instance_create_layer(x,y,"lay_enemy",obj_fragment);
//with (instance_create_layer(x,y,"lay_splatter",obj_splatter)) image_angle = other.direction;

//Increase player score
global.myscore += 1;
global.num_enemies_killed++;

//Play sound
//audio_sound_pitch(snd_death,random_range(0.8,1.2));
//audio_play_sound(snd_death,0,0);

//Screenshake
with (obj_camera) shake = 4;

randomNum = random_range(0, 1);
if(randomNum >= .9)
{
	randomNum = random_range(0, 1);
	if (randomNum > .66) {
		newWeapon = instance_create_layer(x,y,"lay_pickups",objWeapon);
		newWeapon.sprite_index = sprBasicShotgun
		newWeapon.type = "Basic Shotgun"
	} else if (randomNum > .33) {
		newWeapon = instance_create_layer(x,y,"lay_pickups",objWeapon);
		newWeapon.sprite_index = sprBasicRifle
		newWeapon.type = "Basic Rifle"
	} else {
		newArmor = instance_create_layer(x,y,"lay_pickups",objArmor);
		newArmor.sprite_index = sprBasicArmor
		newArmor.type = "Basic Armor"
	}
} else {
	randomNum = random_range(0, 1)

	if(randomNum >= .7) {
		instance_create_layer(x,y,"lay_pickups",objHealth);
	}
}
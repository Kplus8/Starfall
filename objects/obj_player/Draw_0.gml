if(hit_cooldown > 0) {
sprite_index = sprPlayerHit
draw_self();
} else {
	sprite_index = sprPlayer;
	draw_self();
}
//Draw sprite
draw_self();
draw_sprite_ext(robot_head_start, 0, x, y-95, image_xscale*1.5, image_yscale*1.5, image_angle, c_white, 1);
draw_sprite_ext(robot_legs, 0, x, y+49, image_xscale, image_yscale, image_angle, c_white, 1);

//Draw white flash sprite if recently hit (uses "hit" for alpha/transparency)
//draw_sprite_ext(spr_enemy_flash,0,x,y,image_xscale,image_yscale,image_angle,c_white,hit);

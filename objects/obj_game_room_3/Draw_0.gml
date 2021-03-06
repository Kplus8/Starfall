draw_set_halign(fa_center);

//Draw text shadows
draw_set_alpha(0.5);
draw_set_colour(c_black);
draw_set_font(fnt_smaller);
draw_text(
	2+camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
	2+camera_get_view_y(view_camera[0])+16,"Boss health");
	
draw_text(
	2+camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/9,
	2+camera_get_view_y(view_camera[0])+16,"Your Health");

draw_set_font(fnt_score);
draw_text(
	2+camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
	2+camera_get_view_y(view_camera[0])+54,global.hp);



//Draw regular text
draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_font(fnt_smaller);
draw_text(
	camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
	2+camera_get_view_y(view_camera[0])+16,"Boss health");
	
	draw_text(
	camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/9,
	2+camera_get_view_y(view_camera[0])+16,"Your Health");

draw_set_font(fnt_score);
draw_text(
	camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
	2+camera_get_view_y(view_camera[0])+54, global.hp);


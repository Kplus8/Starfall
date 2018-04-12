//slowly decay any applied shake
shake *= 0.9;

//screenshake
var cam = view_camera[0] 
camera_set_view_pos(view_camera[0], obj_player.x  - window_get_width()/2 - 128, obj_player.y - window_get_height()/2 - 128) 
//camera_set_view_pos(cam, centerx, centery - window_get_height()/2) 
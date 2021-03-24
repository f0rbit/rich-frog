/// @description ...
follow = player_frog;
if (follow != noone and instance_exists(follow))
{
	xTo = follow.x
	yTo = follow.y
}

x += (xTo-x);
y += (yTo-y);

x = clamp(x,global.width/2,room_width-(global.width/2));
y = clamp(y,global.height/2,room_height-(global.height/2));


var view_matrix = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(global.camera,view_matrix);
var projection_matrix = matrix_build_projection_ortho(global.width*zoom,global.height*zoom,1,10000);
camera_set_proj_mat(global.camera,projection_matrix);
view_camera[0] = global.camera;
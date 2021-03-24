/// @description init
global.camera = camera_create();
// this new gamemaker shennanigans
var view_matrix = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var projection_matrix = matrix_build_projection_ortho(global.width,global.height,1,10000);

camera_set_view_mat(global.camera,view_matrix);
camera_set_proj_mat(global.camera,projection_matrix);

view_camera[0] = global.camera;

follow = noone;
xTo = x;
yTo = y;

zoom = 1;
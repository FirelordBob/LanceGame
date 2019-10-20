/// @description Insert description here
// You can write your code in this editor

view_visible[0] = true;
view_enabled = true;
view_wport[0] = 1920
view_hport[0] = 1080
view_set_camera(0,0)
camera = camera_create()
camera_set_view_target(camera,id)
camera_set_view_speed(camera,2,2)
camera_set_view_size(camera, 960, 540)
view_set_camera(0,camera)

downCount = 0
dirBonus = 0
upDown = 0
upCount = 0	

view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])
base_view_x = view_x
base_view_y = view_y
shakeX = 0
shakeY = 0
if (cruisecontrol = 0){
if keyboard_check(ord("W")) controlmove="forward";
if keyboard_check(ord("S")) controlmove="backward";
if keyboard_check(ord("A")) controlturn= "left";
if keyboard_check(ord("D")) controlturn= "right";
if keyboard_check_released(vk_space) controlshoot = "normal";
if (mouse_check_button_released(mb_left)
        && mouse_x<x+50
        && mouse_x>x-50
        && mouse_y<y+50
        && mouse_y>y-50) 
            {cruisecontrol = 1;}}
else{
    if (mouse_check_button_released(mb_left)
        && mouse_x<x+50
        && mouse_x>x-50
        && mouse_y<y+50
        && mouse_y>y-50) 
            {cruisecontrol = 0;}}

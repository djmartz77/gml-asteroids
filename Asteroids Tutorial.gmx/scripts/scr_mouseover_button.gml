///change the sprite on mouseover
image_speed = 0;
if (position_meeting(mouse_x, mouse_y, self)){
    image_index = 1;    
} else {
    image_index = 0;
}
/// @description Insert description here
// You can write your code in this editor

if(holder != 3 && bullets != 3){
holder += 1;
obj_bullet.image_index = holder;
alarm[2] = 10;
} else {
bullets = 3;
obj_reload.image_index = 0;
}
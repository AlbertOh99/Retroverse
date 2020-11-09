/// @description Insert description here
// You can write your code in this editor

//decreases your hp by 1 and makes you invincible for a bit indicated by flashing
if (health >= 1 && invincible = 0){
health -= 1;
obj_health.image_index = health;
invincible = 1; 
alarm[1] = 90; //time player is invincible
alarm[0] = 1;
audio_play_sound(snd_axel_hurt2, 1, false); 
state = PLAYERSTATE.DEAD
}

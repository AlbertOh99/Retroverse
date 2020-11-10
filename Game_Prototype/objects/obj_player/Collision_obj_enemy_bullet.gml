/// @description Insert description here
// You can write your code in this editor
if(sprite_index = spr_axel_melee){
	instance_destroy(other)
} else if (health >= 1 && invincible = 0){
health -= 1;
obj_health.image_index = health;
invincible = 1;
alarm[1] = 90; //time player is invincible
alarm[0] = 1;
audio_play_sound(snd_axel_hurt, 1, false);
instance_destroy(other);
state = PLAYERSTATE.DEAD

}
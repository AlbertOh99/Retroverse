// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Shoot(){
	//shoot animation
	alarm[0] = 200;
if(sprite_index != spr_enemy_shoot){
	audio_play_sound(snd_enemy_shoot, 1, false); 
	sprite_index = spr_enemy_shoot;
	image_index = 0;
	if(image_index = 6){
	instance_create_layer(x, y-50, "Bullet", obj_enemy_bullet)
	}
}
	if(image_index = 7){
	instance_create_layer(x, y, "Bullet", obj_enemy_bullet)
	audio_play_sound(snd_enemy_shoot, 1, false); 
	}
	if (animation_end()){
		sprite_index = spr_enemy;
		enemy_state = ENEMYSTATE.FREE;
	}
}
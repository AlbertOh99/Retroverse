// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Shoot(){
	//shoot animation
if(sprite_index != spr_enemy_shoot){
	audio_play_sound(snd_enemy_shoot, 1, false); 
	sprite_index = spr_enemy_shoot;
	image_index = 0;
	instance_create_layer(x, y-100, "Bullet", obj_enemy_bullet)
}
	
	if (animation_end()){
		sprite_index = spr_enemy;
		enemy_state = ENEMYSTATE.FREE;
	}
}
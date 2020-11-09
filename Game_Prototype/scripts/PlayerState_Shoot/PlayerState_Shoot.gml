// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Shoot(){
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x, y + 1, obj_platform)) && (key_jump)
{
	vsp = -jumpsp;
}

//Horizontal collision
if (place_meeting(x + hsp, y, obj_platform)){
	while(!place_meeting(x + sign(hsp), y, obj_platform)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Vertical Collision
if (place_meeting(x, y + vsp, obj_platform)){
	while(!place_meeting(x , y + sign(vsp), obj_platform)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;



//shoot animation
if(sprite_index != spr_axel_shoot && bullets > 0){
	bullets -= 1;
	obj_bullet.image_index = bullets;
	audio_play_sound(snd_axel_shoot, 1, false); 
	sprite_index = spr_axel_shoot;
	image_index = 0;
	instance_create_layer(x, y-100, "Bullet", obj_axel_bullet)
} else
	cooldown = 0;
	
	if (animation_end()){
		sprite_index = spr_axel;
		state = PLAYERSTATE.FREE;
	}
}
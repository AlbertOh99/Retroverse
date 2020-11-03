/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);


var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x, y + 1, obj_invisiableWall)) && (key_jump)
{
	vsp = -jumpsp;
}

//Horizontal collision
if (place_meeting(x + hsp, y, obj_invisiableWall)){
	while(!place_meeting(x + sign(hsp), y, obj_invisiableWall)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Vertical Collision
if (place_meeting(x, y + vsp, obj_invisiableWall)){
	while(!place_meeting(x , y + sign(vsp), obj_invisiableWall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


//Animation
if (!place_meeting(x, y + 1, obj_invisiableWall)){
	//sprite_index = spr_playerJump;
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
} else {
	image_speed = 1;
	//if(hsp == 0)sprite_index = spr_player; else	sprite_index = spr_playerRun;
}
if (hsp != 0){
	image_xscale = sign(hsp);
}

//bullet
if (keyboard_check_pressed(ord("Z")) && cooldown >= 20){
	instance_create_depth(x, y, 1, obj_bullet);
	cooldown = 0;
}
cooldown += 1;

if (keyboard_check(ord("X"))){
	sprite_index = spr_melee;
}



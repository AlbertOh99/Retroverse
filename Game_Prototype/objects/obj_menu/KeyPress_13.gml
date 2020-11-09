if(room = Menu){
	room_goto(Directions);
	audio_stop_sound(snd_main_menu)

} else if(room = Directions){
	room_goto(Room1);
	audio_stop_sound(snd_main_menu)
}
else if (room = GameOver){
	room_goto(Menu);
	if (audio_exists(snd_main_menu)){
	audio_stop_sound(snd_main_menu)
	}
} else if (room = Victory){
	game_restart();
}
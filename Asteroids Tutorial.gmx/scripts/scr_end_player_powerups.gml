global.player_ram = false;

if(instance_exists(obj_player)){
    obj_player.image_speed = 0;
    obj_player.sprite_index = spr_player;
}

if(instance_exists(obj_player_2)){
    obj_player_2.image_speed = 0;
    obj_player_2.sprite_index = spr_player;
}

audio_play_sound(snd_pu_over, 0, false);


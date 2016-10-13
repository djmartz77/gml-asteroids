if(!instance_exists(obj_laser)){
    instance_create(x,y, obj_laser);
    audio_play_sound(snd_laser_beam, 0 , false);
} else {
    audio_resume_sound(snd_laser_beam);
    obj_laser.laser_power -= 0.25;
    obj_laser.visible = true;
    obj_laser.image_speed = 1;
}


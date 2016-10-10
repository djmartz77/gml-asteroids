if(obj_enemy_spawner.alarm[0] > 0){
    scr_set_second_enemy_spawn();
} else {
    obj_enemy_spawner.alarm[0] = (irandom(30) + 15 - global.level) * 60; 
    if(obj_enemy_spawner.alarm[0] < 600) {
        obj_enemy_spawner.alarm[0] = 540 + irandom(120);
    }
}


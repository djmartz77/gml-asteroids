obj_enemy_spawner.alarm[argument0] = (irandom(30) + 20 - (global.level-5)) * 60; 
    if(obj_enemy_spawner.alarm[argument0] < 600) {
      obj_enemy_spawner.alarm[argument0] = 540 + irandom(120);
    };

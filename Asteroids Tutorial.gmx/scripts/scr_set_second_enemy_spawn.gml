obj_enemy_spawner.alarm[1] = (irandom(30) + 15 - (global.level-10)) * 60; 
if(obj_enemy_spawner.alarm[1] < 600) {
  obj_enemy_spawner.alarm[1] = 540 + irandom(120);
}



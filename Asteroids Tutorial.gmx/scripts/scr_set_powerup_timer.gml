obj_powerup_spawner.alarm[0] = 20*60 + 60*irandom(30);
//obj_powerup_spawner.alarm[0] = 180;

//power ups 2X as often in two player mode
if(global.two_player_mode){
    obj_powerup_spawner.alarm[0] = obj_powerup_spawner.alarm[0]/2
}

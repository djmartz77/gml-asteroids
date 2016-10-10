var xpos_enemy = random(room_width);
var ypos_enemy = random(room_height);
var enemy_direction = 0;
if(xpos_enemy >= ypos_enemy) {
    if(xpos_enemy > room_width/2){
        xpos_enemy = room_width;
        if (ypos_enemy > room_height/2){    
            enemy_direction = 180 - random(60);
        } else {
            enemy_direction = 180 + random(60);
        }

    } else {
        xpos_enemy = 0;
        if (ypos_enemy > room_height/2){    
            enemy_direction = 0 + random(60);
        } else {
            enemy_direction = 0 - random(60);
        }
    }
} else {
    if(ypos_enemy > room_height/2){
        ypos_enemy = room_height;
        if (xpos_enemy > room_width/2){    
            enemy_direction = 90 + random(60);
        } else {
            enemy_direction = 90 - random(60);
        }

    } else {
        ypos_enemy = 0;
        if (xpos_enemy > room_width/2){    
            enemy_direction = 270 - random(60);
        } else {
            enemy_direction = 270 + random(60);
        }
    }
}

enemy_ship = instance_create(xpos_enemy, ypos_enemy, obj_enemy);
enemy_ship.speed = 1 * (random(2) + 0.75); 
enemy_ship.rotation_speed = (random(8) - 4);
enemy_ship.rotation_speed = enemy_ship.rotation_speed + 3 * sign(enemy_ship.rotation_speed);
enemy_ship.direction = enemy_direction;

/*if( abs(speed * cos(direction)) > 4 || abs(speed * sin(direction)) > 4 ){
//speed based screen wrap in both directions
    if(x + (cos(direction) * speed) < 0){
        x = room_width + (cos(direction) * speed);
    } else if (x + (cos(direction) * speed) > room_width) {
        x = 0 + (cos(direction) * speed);
    }

    if(y + (sin(direction) * speed) < 0){
        y = room_height + (sin(direction) * speed);
    } else if (y + (sin(direction) * speed) > room_height) {
        y = 0 + (sin(direction) * speed);
    }
    
} else {*/
//simple wrap. Doesn't account for speed.    
    if(x < 0) {
        x = room_width;   
    } else if (x > room_width){
        x = 0;
    }
    
    if (y < -2) {
        y = room_height;
    } else if(y > room_height + 2){
        y = 0;
    }
    
//}

switch(self.state ){
    
    case state.invincible:
        if(self.player1){
            sprite_index = spr_player_inv;
        } else if(self.player2){
            sprite_index = spr_player_2_inv;
        } else {
            //This should never happen
        }
        image_speed = 1/3;
        alarm[0] = 240;
    break;

    case state.normal:
        if(instance_exists(obj_laser)){
            with(obj_laser){
                if(self.shooter == other){
                    instance_destroy();
                }
            }
        }     
                
        //Detect if this is player 1 or player 2 and set the sprite back to normal accordingly
        if(self.player1){
            sprite_index = spr_player;
        } else if(self.player2){
            sprite_index = spr_player_2;
        } else {
            //This should never happen
        }
        
        if(alarm[0] != -1){
            alarm[0] = -1;
        }

        if(alarm[1] != -1){
            alarm[1] = -1;
        }
        if(alarm[2] != -1){
            alarm[2] = -1;
        }
                 
        break;
    
    case state.laser:
        //Detect if this is player 1 or player 2 and set the sprite back to normal accordingly
        scr_start_laser();
        scr_stop_laser();        
        audio_play_sound(snd_powerup,0,false);
        break;
    
    case state.ram:
        //change to the ram sprite and set the powerup timer
        image_speed = 0;
        sprite_index = spr_player_ram;
        image_index = 0;
        alarm[1] = 10 * 60;
        alarm[2] = 8 * 60;//start the transition image
        //play a sound
        audio_play_sound(snd_powerup,0,false);
        break;
    
    default:
    
}

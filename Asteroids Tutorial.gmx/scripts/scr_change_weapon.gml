switch(self.weapon){
    
    case weapon.unarmed:
        if(instance_exists(obj_laser)){
            with(obj_laser){
                if(self.shooter == other){
                    instance_destroy();
                }
            }
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

    case weapon.normal:
        if(instance_exists(obj_laser)){
            with(obj_laser){
                if(self.shooter == other){
                    instance_destroy();
                }
            }
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
    
    case weapon.laser:
        //Detect if this is player 1 or player 2 and set the sprite back to normal accordingly
        scr_start_laser();
        scr_stop_laser();        
        audio_play_sound(snd_powerup,0,false);
        break;
    
    case weapon.penetrating:
        break;
    
    case weapon.infinite_penetration:
        break;    
    
    case weapon.persistent_shot:
        break;
            
    default:
    
}

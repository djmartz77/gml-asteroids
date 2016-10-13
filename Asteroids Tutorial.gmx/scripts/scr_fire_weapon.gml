/*
The intent here is to have state based weapon fire. This will likely involve:
1)creating an enum called weapon that has all the weapons in it
2)creating a player var called weapon that holds the enumerated weapon value in it
3)moving all the laser stuff out of the current scr_do_player_state script
4)updating or replacing all of the player action scripts related to shooting weapons
5)testing testing testing
*/

/*switch(self.weapon ){
    
    case weapon.unarmed

    break;

    case weapon.normal:
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
    
    case weapon.laser:
        //Detect if this is player 1 or player 2 and set the sprite back to normal accordingly
        scr_start_laser();
        scr_stop_laser();        
        audio_play_sound(snd_powerup,0,false);
        break;
    
    default:
    
}

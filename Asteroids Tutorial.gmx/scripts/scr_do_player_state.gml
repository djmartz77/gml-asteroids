switch(self.state ){
    
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
            sprite_index = spr_player_2
        } else {
            //This should never happen
        }
                 
        break;
    
    case state.laser:
        break;
    
    case state.ram:
        break;
    
    case state.penetrating:
        break;
    
    case state.infinite_penetration:
        break;    
    
    case state.persistent_shot:
        break;
    
    default:
    
}

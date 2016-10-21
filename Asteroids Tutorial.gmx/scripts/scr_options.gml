switch (obj_options_screen.opt_pos) {

    case options.starting_lives:
        //cycle up through the number of lives
        global.starting_lives += 1;
        if(global.starting_lives > 5) {
            global.starting_lives = 1;
        }
        break;

    case options.level_cycle:
        //cycle up through number of levels between each speed increase
        global.level_cycle += 1;
        if(global.level_cycle > 5) {
            global.level_cycle = 2;
        }
        break;

    case options.quiet_thrusters:
        //toggle whether the thrusters make a sound or not
        if(global.quiet_thrusters) {
            global.quiet_thrusters = false;
        } else {
            global.quiet_thrusters = true;
        }
        break;
        
    case options.powerups:
        //toggle whether there are in-game powerups
        if(global.in_game_powerups) {
            global.in_game_powerups = false;
        } else {
            global.in_game_powerups = true;
        }
        break;
    
    case options.persistent_shot:
        //toggle whether the player's shots persist for a period of time
        //instead of stopping at the edge of the screen
        if(global.persistent_shot) {
            global.persistent_shot = false;
        } else {
            global.persistent_shot = true;
        }
        break;
    
        
    case options.penetrating_shot:
        //toggle whether the player's shots penetrate a small asteroid
        if(global.penetrating_shot) {
            global.penetrating_shot = false;
        } else {
            global.penetrating_shot = true;
        }
        break;
        
    case options.infinite_penetration:
        //toggle whether the player's shots penetrate all asteroids
        if(global.infinite_penetration) {
            global.infinite_penetration = false;
        } else {
            global.infinite_penetration = true;
        }
        break;
        
    case options.room_bounce:
        //toggle whether asteroids bounce off each other or not
        if(global.room_bounce) {
            global.room_bounce = false;
        } else {
            global.room_bounce = true;
        }
        break;

    /*case options.asteroid_bounce:
        //toggle whether asteroids bounce off each other or not
        if(global.asteroid_bounce) {
            global.asteroid_bounce = false;
        } else {
            global.asteroid_bounce = true;
        }
        break;*/

    case options.reset_hs:
        //set the flag to reset the high score
        if(obj_reset_hs.reset_hs = true) {
            obj_reset_hs.reset_hs = false;
        } else {
            obj_reset_hs.reset_hs = true;
        }
        break;
        
    case options.save:
        //reset high score if checked and save options
        if(obj_reset_hs.reset_hs) global.high_score = 0;
        scr_save();
        room_goto(rm_menu);
        break;
        
    case options.cancel:
        //reload original globals and return to the menu screen
        scr_load();
        room_goto(rm_menu);
        break;
      
    default:
}    


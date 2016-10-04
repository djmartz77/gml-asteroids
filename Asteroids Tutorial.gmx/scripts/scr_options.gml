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

    case options.room_bounce:
        //toggle whether asteroids bounce off of the room boundary or not
        if(global.room_bounce) {
            global.room_bounce = false;
        } else {
            global.room_bounce = true;
        }
        break;
        
    case options.asteroid_bounce:
        //toggle whether asteroids bounce off each other or not
        if(global.asteroid_bounce) {
            global.asteroid_bounce = false;
        } else {
            global.asteroid_bounce = true;
        }
        break;
        
    case options.save:
        //save the options, load them back in and return to the menu screen
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


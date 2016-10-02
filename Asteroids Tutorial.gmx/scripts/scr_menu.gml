switch (obj_menu.mpos) {
    case menu_options.start:
        //Start the game
        room_goto_next();    
        break;
        
    case menu_options.options:
        //Display the game options screen
        room_goto(rm_options);
        break;
        
    case menu_options.controls:
        //Display the key bindings
        break;
        
    case menu_options.quit:
        game_end();
        break;   
    default:
}    


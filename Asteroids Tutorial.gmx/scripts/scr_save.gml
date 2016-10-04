//read in or default the values from the ini file
ini_open("ast_tut.ini");
ini_write_real("Scoring", "High Score", global.high_score);

//set asteroid attributes
ini_write_real("Asteroid", "Base Speed", global.asteroid_base_speed);
ini_write_real("Asteroid", "Base Number", global.asteroid_base_num);//how many to spawn at the beginning of each level cycle

//Game Preferences
ini_write_real("Preferences", "Lives", global.starting_lives);
ini_write_real("Preferences", "Level Cycle", global.level_cycle); //how many levels before the levels repeat
ini_write_real("Preferences", "Room Bounce", global.room_bounce);
ini_write_real("Preferences", "Asteroid Bounce", global.asteroid_bounce);
ini_write_real("Preferences", "Quiet Thrusters", global.quiet_thrusters);

//Read in Power Ups
ini_write_real("Power Ups", "Player Ram", global.player_ram);
ini_write_real("Power Ups", "Piercing Shot", global.penetrating_shot);
ini_write_real("Power Ups", "Infinite Penetration", global.infinite_penetration);
ini_write_real("Power Ups", "In Game Power Ups", global.in_game_powerups);

//reset the number of extra lives in case it changed
global.lives = global.starting_lives - 1;

ini_close();

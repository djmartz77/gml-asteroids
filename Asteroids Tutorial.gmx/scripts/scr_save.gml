
ini_open("ast_tut.ini");
ini_write_real("Scoring", "High Score", global.high_score);

//read in or default the values from the ini file
ini_open("ast_tut.ini");
ini_write_real("Scoring", "High Score", global.high_score);

//set asteroid attributes
ini_write_real("Asteroid", "Base Speed", global.asteroid_base_speed);
ini_write_real("Asteroid", "Base Number", global.asteroid_base_num);//how many to spawn at the beginning of each level cycle

//Game Preferences
ini_write_real("Preferences", "Lives", global.lives);
ini_write_real("Preferences", "Level Cycle", global.level_cycle); //how many levels before the levels repeat
ini_write_real("Preferences", "Room Bounce", global.room_bounce);
ini_write_real("Preferences", "Asteroid Bounce", global.asteroid_bounce);

//Read in Power Ups
ini_write_real("Power Ups", "Player Ram", global.player_ram);
ini_write_real("Power Ups", "Piercing Shot", global.piercing_shot);
ini_write_real("Power Ups", "Infinite Penetration", global.infinite_piercing_shot);

ini_close();

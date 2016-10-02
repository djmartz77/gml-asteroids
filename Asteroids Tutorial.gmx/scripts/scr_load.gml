//read in or default the values from the ini file
ini_open("ast_tut.ini");
global.high_score = ini_read_real("Scoring", "High Score", 0);

//set asteroid attributes
global.asteroid_base_speed = ini_read_real("Asteroid", "Base Speed", 0.5);
global.asteroid_base_num = ini_read_real("Asteroid", "Base Number", 5);//how many to spawn at the beginning of each level cycle

//set player attributes
global.max_speed = ini_read_real("Player", "Max Speed", 5);

//Game Preferences
global.lives = ini_read_real("Preferences", "Lives", 2);
global.level_cycle = ini_read_real("Preferences", "Level Cycle", 4); //how many levels before the levels repeat
global.room_bounce = ini_read_real("Preferences", "Room Bounce", true);
global.asteroid_bounce = ini_read_real("Preferences", "Asteroid Bounce", true);

//Read in Power Ups
global.player_ram = ini_read_real("Power Ups", "Player Ram", false);
global.piercing_shot = ini_read_real("Power Ups", "Piercing Shot", true);
global.infinite_piercing_shot = ini_read_real("Power Ups", "Infinite Penetration", false);

scr_save();

//Set values not in the ini file
global.points = 0;
global.level = 0;

//set player attributes
global.rotation_speed = 2.5;
global.thrust_power = 0.2;
global.speed_decay = 0.01;
global.bullet_speed = global.max_speed * 3;






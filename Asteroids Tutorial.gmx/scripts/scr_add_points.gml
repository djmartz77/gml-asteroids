//the argument passed in is the number of points to add to the global score
var mod_before = global.points mod global.extra_life_points
global.points += argument0;
var mod_after = global.points mod global.extra_life_points

if(mod_after < mod_before){
//we've earned an extra life
    var i = 0;
    var edge_offset = sprite_get_width(spr_1up);
    instance_create(edge_offset + random(room_width - 2*edge_offset), edge_offset + random(room_height - 2*edge_offset), obj_extra_life);
}

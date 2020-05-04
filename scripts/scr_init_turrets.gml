#define scr_init_turrets
///scr_init_turrets(turrets, turretobject, team, findrange, shootdelay, clipsize, clipreloaddelay, turretrotspd, scanwidth, bullettype, bulletlife, bulletspeed, shipid);

var a;
for (a = 0; a < argument0; a++){
  turret[a, 0] = instance_create(x,y,argument1); //inst
  turret[a, 1] = 0; //direction
  turret[a, 2] = 0; //distance
  
  turret[a, 0].team = argument2;
  turret[a, 0].range = argument3;
  turret[a, 0].shootdelay = argument4;
  turret[a, 0].clipsize = argument5;
  turret[a, 0].clipreloaddelay = argument6;
  turret[a, 0].turretrotspd = argument7;
  turret[a, 0].scanwidth = argument8;
  turret[a, 0].type = argument9;
  turret[a, 0].bulletlife = argument10;
  turret[a, 0].bulletspeed = argument11;
  
  turret[a, 0].turretscreated = argument0;
  turret[a, 0].shipid = argument12;
}

#define scr_update_turrets
///scr_update_turrets(turrets, ship_speed, ship_direction, ship_x, ship_y);

var a;
for (a = 0; a < argument0; a++){
  turret[a, 0].x = argument3 + lengthdir_x(turret[a, 2],turret[a, 1] + argument2);
  turret[a, 0].y = argument4 + lengthdir_y(turret[a, 2],turret[a, 1] + argument2);
  turret[a, 0].speed = argument1;
  turret[a, 0].direction = argument2;
}
#define scr_init_engines
///scr_init_engines(engines, engineobject, team);

var a;
for (a = 0; a < argument0; a++){
  engine[a, 0] = instance_create(x,y,argument1); //inst
  engine[a, 1] = 0; //direction
  engine[a, 2] = 0; //distance
  
  engine[a, 0].team = argument2;
  engine[a, 0].ship = id;
}

#define scr_update_engines
///scr_update_engines(engines, ship_speed, ship_direction, ship_x, ship_y);

var a;
for (a = 0; a < argument0; a++){
  engine[a, 0].x = argument3 + lengthdir_x(engine[a, 2],engine[a, 1] + argument2);
  engine[a, 0].y = argument4 + lengthdir_y(engine[a, 2],engine[a, 1] + argument2);
  engine[a, 0].speed = argument1;
  engine[a, 0].direction = argument2;
  engine[a, 0].image_angle = argument2;
}
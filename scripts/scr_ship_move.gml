#define scr_ship_move
///scr_ship_move()

if (instance_exists(movetarget)){
  direction +=   sin(degtorad(point_direction(x,y,movetarget.x,movetarget.y) - direction)) * maxturnspeed;
  image_angle += sin(degtorad(point_direction(x,y,movetarget.x,movetarget.y) - image_angle)) * maxturnspeed;
  image_speed = 0.5;
  motion_add(direction,moveacc);
  
  if (distance_to_object(movetarget) < 100){
    speed = max(speed - 0.05, 0)
  }
  
  if (distance_to_object(movetarget) < 50){
    image_speed = 0;
    image_index = 0;
    with(movetarget) instance_destroy();
    state = 'idle';
  }
}

#define scr_ship_alert
///scr_ship_alert()

if (instance_exists(par_ship)){
  for (var i = 0, n = instance_number(par_ship); i < n; i += 1){
    target = instance_find(par_ship,i)
    if (distance_to_object(target) < findrange && target.team != team){
      direction +=   sin(degtorad(point_direction(x,y,target.x,target.y) - direction)) * maxturnspeed;
      image_angle += sin(degtorad(point_direction(x,y,target.x,target.y) - image_angle)) * maxturnspeed;
      image_speed = 0.5;
      motion_add(direction,moveacc);
    } else {
      image_speed = 0;
      image_index = 0;
    }
  }
}

#define scr_ship_idle
///scr_ship_idle()
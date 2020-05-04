///scr_turret_shoot()

shoot++
if (shoot > shootdelay){
  clipsizecounter++;
  if (clipsizecounter > clipsize){
    clipsizecounter = 0;
    shoot = clipreloaddelay
  } else {
    shoot = 0
  }
  bullet = instance_create(x + lengthdir_x(2,image_angle),y + lengthdir_y(2,image_angle),bullettype)
  bullet.team = team
  bullet.type = type
  if (team == 1) bullet.image_blend = c_aqua;
  if (team == 2) bullet.image_blend = c_red;
  bullet.direction = image_angle
  bullet.image_angle = image_angle
  bullet.speed = shipid.speed + (bulletspeed / (1 + random(1)))
  bullet.life = bulletlife / (1 + random(1))
}

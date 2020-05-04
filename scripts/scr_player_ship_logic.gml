///scr_player_ship_logic()

left = max (keyboard_check(ord("A")),keyboard_check(vk_left))
right = max (keyboard_check(ord("D")),keyboard_check(vk_right))
up = max (keyboard_check(ord("W")), keyboard_check(vk_up))
down = max (keyboard_check(ord("S")), keyboard_check(vk_down))

if (turningleft){
  image_angle += turn
  direction += turn
} else {
  image_angle -= turn
  direction -= turn
}

if (left){
  turningleft = true
  turn += turnacc
}

if (right){
  turningleft = false
  turn += turnacc
}

if (up){
  image_speed = 0.5
  motion_add(direction,moveacc)
} else {
  image_speed = 0
  image_index = 0
}

if (down){
  speed = max(speed - movefriction,0)
}

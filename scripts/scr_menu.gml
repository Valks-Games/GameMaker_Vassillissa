#define scr_menu
///scr_menu()

switch(mpos)
{
    case 0:{
      room_goto(rm_space);
      break;
    }
    case 1:{
      game_end();
      break;
    }
    default: break;
}

#define scr_menu_pause
///scr_menu_pause()

switch(mpos)
{
    case 0:{
      global.pause = 0;
      break;
    }
    case 1:{
      instance_create(x,y-200,obj_menu_controls)
      break;
    }
    case 2:{
      room_goto(rm_menu);
      break;
    }
    default: break;
}

#define scr_menu_turret
///scr_menu_turret()

switch(mpos)
{
    case 0:{
      with (shipid){
        for (var i = 0; i < turretslots; i += 1){
          if (turret[i,0].turretmenucreated){
            with(turret[i,0]){
              instance_change(obj_turret_slot,false);
            }
          }
        }
      }
      break;
    }
    case 1:{
      with (shipid){
        for (var i = 0; i < turretslots; i += 1){
          if (turret[i,0].turretmenucreated){
            with(turret[i,0]){
              instance_change(obj_turret_1,false);
            }
          }
        }
      }
      break;
    }
    case 2:{
      with (shipid){
        for (var i = 0; i < turretslots; i += 1){
          if (turret[i,0].turretmenucreated){
            with(turret[i,0]){
              instance_change(obj_turret_2,false);
            }
          }
        }
      }
      break;
    }
    default: break;
}
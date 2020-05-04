if (file_exists("Save.sav")){
  ini_open("Save.sav");
  global.graphics = ini_read_real("Graphics","graphics",global.graphics);
  ini_close();
}

if (file_exists("Save.sav")) file_delete("Save.sav");
ini_open("Save.sav");
ini_write_real("Graphics","graphics",global.graphics);
ini_close();

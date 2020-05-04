#define scr_select
///scr_toggle_select(press_x,press_y,release_x,release_y)

// press
var px = argument0;
var py = argument1;

// release
var rx = argument2;
var ry = argument3;

// case
var tlbr = (x>px && x<rx && y>py && y<ry);
var bltr = (x>px && x<rx && y<py && y>ry);
var brtl = (x<px && x>rx && y<py && y>ry);
var trbl = (x<px && x>rx && y>py && y<ry);

if (tlbr || bltr || brtl || trbl) {
  selected = true;
} else {
  selected = false;
}

#define scr_radar
///scr_radar(press_x,press_y,release_x,release_y,radius)

// press
var px = argument0;
var py = argument1;

// release
var rx = argument2;
var ry = argument3;

var rad = argument4;

if (point_in_circle(px,py,rx,ry,rad)){
  radarfound = true;
} else {
  radarfound = false;
}
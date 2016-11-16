///og2_start
///start
gamemode = 0; //0=setup 1=place 2=fight 3=restart
turn = 1;
///steps
if (gamemode = 0){
var i;
for (i=64;i<320;i+=32){
  var j;
  for (j=96;j<352;j+=32){
  instance_create(i,j,og2_vak);
}}}

///og2_vak
///start
globg2 = instance_place(10,10,og2_start)
team = 0;
nothing = 1;
///steps
if (glob2.gamemode = 1){
if mouse_check_button_released(mb_left){
  if (mouse_x>x-10&&mouse_x<x+10&&mouse_y>y-10&&mouse_y<y+10){
    team = globg2.turn
    
}}}

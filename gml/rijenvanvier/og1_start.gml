/*
Information about object: og1_start
Sprite: sprite1
Solid: false
Visible: true
Depth: -100
Persistent: false
Parent: 
Children: 
Mask: 

No Physics Object
*/

Create Event:

execute code:

  ///setting vars
  move = 1;
  pointp1 = 0;
  pointp2 = 0;

execute code:

  ///generating field
  var i;
  for (i = 32; i<= 864; i+=64){
  var j;
  for (j = 32; j<= 864; j+=64){
    instance_create(i,j,og1_vak);
  }}
  var k;
  for (k = 224; k <= 608; k+=64){
  instance_create(k,224,og1_gravity1);
  instance_create(k,608,og1_gravity1);
  instance_create(224,k,og1_gravity2);
  instance_create(608,k,og1_gravity2);
  }

Draw Event:

execute code:

  draw_self();
  draw_text(128,160,"Player1");
  draw_text(640,160,"Player2");
  draw_text(132,170,pointp1);
  draw_text(644,170,pointp2);
  if keyboard_check(ord("R")){
  room_restart()
  }


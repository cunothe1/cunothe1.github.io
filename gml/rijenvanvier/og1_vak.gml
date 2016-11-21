/*
Information about object: og1_vak
Sprite: spr_vak
Solid: false
Visible: true
Depth: 500
Persistent: false
Parent: 
Children: 
Mask: 

No Physics Object
*/
Create Event:

execute code:

  ///setting vars
  glob = instance_place(10,10,og1_start);
  team = 0;
  image_speed = 0;
  PW = 0;
  select = 0;
  strike = 0;
  streak_up = 0;
  streak_down = 0;
  streak_left = 0;
  streak_right = 0;
  streak_north = 0;
  streak_east = 0;
  streak_south = 0;
  streak_west = 0;
  varified = 0;

Step Event:

execute code:

  ///LMB
  image_index = team;
  
  if mouse_check_button_released(mb_left){
  if (mouse_x < x+30 && mouse_x > x-30 && mouse_y > y-30 && mouse_y < y+30){
  if (team=0){
      if place_meeting(x,y,og1_gravity1){
          varified = 1}
      if place_meeting(x,y,og1_gravity2){
          varified = 1}}
  if (varified = 1){
      team = glob.move;
      select = 1;
      }
  if (team=glob.move){select = 1}
  
  }}

execute code:

  ///selecting
  //num1-9    strike 3
  //numa-g    strike 2
  //nam1-9    strike 4
  //nama-g    strike 1
  if (select = 1){
  num1 = instance_place(x-192,y,og1_vak);
  num2 = instance_place(x-128,y,og1_vak);
  num3 = instance_place(x-64,y,og1_vak);
  num5 = instance_place(x+64,y,og1_vak);
  num6 = instance_place(x+128,y,og1_vak);
  num7 = instance_place(x+192,y,og1_vak);
  
  numa = instance_place(x-192,y-192,og1_vak);
  numb = instance_place(x-128,y-128,og1_vak);
  numc = instance_place(x-64,y-64,og1_vak);
  nume = instance_place(x+64,y+64,og1_vak);
  numf = instance_place(x+128,y+128,og1_vak);
  numg = instance_place(x+192,y+192,og1_vak);
  
  nam1 = instance_place(x-192,y+192,og1_vak);
  nam2 = instance_place(x-128,y+128,og1_vak);
  nam3 = instance_place(x-64,y+64,og1_vak);
  nam5 = instance_place(x+64,y-64,og1_vak);
  nam6 = instance_place(x+128,y-128,og1_vak);
  nam7 = instance_place(x+192,y-192,og1_vak);
  
  nama = instance_place(x,y-192,og1_vak);
  namb = instance_place(x,y-128,og1_vak);
  namc = instance_place(x,y-64,og1_vak);
  name = instance_place(x,y+64,og1_vak);
  namf = instance_place(x,y+128,og1_vak);
  namg = instance_place(x,y+192,og1_vak);
  }

execute code:

  ///pointcheck
  if (select=1){
      if (num3.team=glob.move){streak_left = 1;
      if (num2.team=glob.move){streak_left = 2;
      if (num1.team=glob.move){streak_left = 3;
  }}}
      if (num5.team=glob.move){streak_right = 1;
      if (num6.team=glob.move){streak_right = 2;
      if (num7.team=glob.move){streak_right = 3;
  }}}
      if (numc.team=glob.move){streak_west = 1;
      if (numb.team=glob.move){streak_west = 2;
      if (numa.team=glob.move){streak_west = 3;
  }}}
      if (nume.team=glob.move){streak_east = 1;
      if (numf.team=glob.move){streak_east = 2;
      if (numg.team=glob.move){streak_east = 3;
  }}}
      if (nam3.team=glob.move){streak_south = 1;
      if (nam2.team=glob.move){streak_south = 2;
      if (nam1.team=glob.move){streak_south = 3;
  }}}
      if (nam5.team=glob.move){streak_north = 1;
      if (nam6.team=glob.move){streak_north = 2;
      if (nam7.team=glob.move){streak_north = 3;
  }}}
      if (namc.team=glob.move){streak_up = 1;
      if (namb.team=glob.move){streak_up = 2;
      if (nama.team=glob.move){streak_up = 3;
  }}}
      if (name.team=glob.move){streak_down = 1;
      if (namf.team=glob.move){streak_down = 2;
      if (namg.team=glob.move){streak_down = 3;
  }}}
  //      STREAKSUM
  if (streak_up+streak_down+1>=4)PW+=1;
  if (streak_west+streak_east+1>=4)PW+=2;
  if (streak_left+streak_right+1>=4)PW+=4;
  if (streak_south+streak_north+1>=4)PW+=8;
  if (PW=0) {select=0;
      streak_north= 0;
      streak_right= 0;
      streak_east = 0;
      streak_down = 0;
      streak_south= 0;
      streak_left = 0;
      streak_west = 0;
  }
  
  }

execute code:

///setting strikes
if place_meeting(x,y,og1_strike1){}
else{if (strike = 1) {instance_create(x,y,og1_strike1);strike=0}}
if place_meeting(x,y,og1_strike2){}
else{if (strike = 2) {instance_create(x,y,og1_strike2);strike=0}}
if place_meeting(x,y,og1_strike3){}
else{if (strike = 3) {instance_create(x,y,og1_strike3);strike=0}}
if place_meeting(x,y,og1_strike4){}
else{if (strike = 4) {instance_create(x,y,og1_strike4);strike=0}}

if (PW - 8 >= 0){//southnorth nam17
if (streak_south=3){streak_south-=1;nam1.strike=4};
if (streak_south=2){streak_south-=1;nam2.strike=4};
if (streak_south=1){streak_south-=1;nam3.strike=4};
if (streak_north=3){streak_north-=1;nam7.strike=4};
if (streak_north=2){streak_north-=1;nam6.strike=4};
if (streak_north=1){streak_north-=1;nam5.strike=4};
if (streak_south+streak_north=0) {
    piet4=instance_create(x,y,og1_strike4);
    if (piet4.image_index>4)piet4.image_index-=4;
    else piet4.image_index+=4;
    strike=0;
    if (glob.move=1){glob.pointp1+=1;glob.pointp2-=1}
    else {glob.pointp2+=1;glob.pointp1-=1}
    }
PW-=8;
}
if (PW - 4 >= 0){//leftright num17
if (streak_left=3){streak_left-=1;num1.strike=3};
if (streak_left=2){streak_left-=1;num2.strike=3};
if (streak_left=1){streak_left-=1;num3.strike=3};
if (streak_right=3){streak_right-=1;num7.strike=3};
if (streak_right=2){streak_right-=1;num6.strike=3};
if (streak_right=1){streak_right-=1;num5.strike=3};
if (streak_left+streak_right=0){
    piet3=instance_create(x,y,og1_strike3);
    if (piet3.image_index>4)piet3.image_index-=4;
    else piet3.image_index+=4;
    strike=0;
    if (glob.move=1){glob.pointp1+=1;glob.pointp2-=1}
    else {glob.pointp2+=1;glob.pointp1-=1}}
PW-=4;
}
if (PW -2 >= 0){//westeast numAG
if (streak_west=3){streak_west-=1;numa.strike=2};
if (streak_west=2){streak_west-=1;numb.strike=2};
if (streak_west=1){streak_west-=1;numc.strike=2};
if (streak_east=3){streak_east-=1;numg.strike=2};
if (streak_east=2){streak_east-=1;numf.strike=2};
if (streak_east=1){streak_east-=1;nume.strike=2};
if (streak_west+streak_east=0) {
    piet2=instance_create(x,y,og1_strike2);
    if (piet2.image_index>4)piet2.image_index-=4;
    else piet2.image_index+=4;
    strike=0;
    if (glob.move=1){glob.pointp1+=1;glob.pointp2-=1}
    else {glob.pointp2+=1;glob.pointp1-=1}}
PW-=2;
}

if (PW - 1 >= 0){//updown namAG
if (streak_up=3){streak_up-=1;nama.strike=1};
if (streak_up=2){streak_up-=1;namb.strike=1};
if (streak_up=1){streak_up-=1;namc.strike=1};
if (streak_down=3){streak_down-=1;namg.strike=1};
if (streak_down=2){streak_down-=1;namf.strike=1};
if (streak_down=1){streak_down-=1;name.strike=1};
if (streak_up+streak_down=0) {
    piet1=instance_create(x,y,og1_strike1);
    if (piet1.image_index>4)piet1.image_index-=4;
    else piet1.image_index+=4;
    strike=0;
    if (glob.move=1){glob.pointp1+=1;glob.pointp2-=1}
    else {glob.pointp2+=1;glob.pointp1-=1}}
PW -= 1;
}
select=0;
    streak_north= 0;
    streak_right= 0;
    streak_east = 0;
    streak_down = 0;
    streak_south= 0;
    streak_left = 0;
    streak_west = 0;

execute code:

///endturn
if (varified = 1){
    varified = 0;
    if (glob.move = 1) glob.move = 2;
    else glob.move = 1;}


Information about object: oBkin
Sprite: sBkin
Solid: false
Visible: true
Depth: 0
Persistent: false
Parent: 
Children: 
Mask: 

No Physics Object
Create Event:

execute code:

/*I should get
speed
damage
range
direction
not1
not2
not3
not4



*/
team = 0;
hp = 0;
speed = 0;
dmg = 0;
range = 20;
not1 = 0;
not2 = 0;
not3 = 0;
not4 = 0;
traveled = 0;
team = 0;
hp = 0;

Step Event:

execute code:

range -= 1;
move_wrap(true,true,3);
traveled += 1;
if (range = 0)instance_destroy();
image_index = round(direction/8);
speed = speed*0.99;
dmg = dmg*0.99
//hit
if (place_meeting(x,y,all)&&traveled > 5){
hit = instance_place(x,y,all);
if (hit.team = 1 && not1 = 0){hit.hp -= dmg*moddmg;instance_destroy();}
if (hit.team = 1 && not1 = 1){hit.hp -= dmg*modteamdmg;instance_destroy();}
if (hit.team = 2 && not1 = 0){hit.hp -= dmg*moddmg;instance_destroy();}
if (hit.team = 2 && not1 = 1){hit.hp -= dmg*modteamdmg;instance_destroy();}
if (hit.team = 3 && not1 = 0){hit.hp -= dmg*moddmg;instance_destroy();}
if (hit.team = 3 && not1 = 1){hit.hp -= dmg*modteamdmg;instance_destroy();}
if (hit.team = 4 && not1 = 0){hit.hp -= dmg*moddmg;instance_destroy();}
if (hit.team = 4 && not1 = 1){hit.hp -= dmg*modteamdmg;instance_destroy();}}


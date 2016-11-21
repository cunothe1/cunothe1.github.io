Information about object: og1_strike1
Sprite: spr_strike
Solid: false
Visible: true
Depth: -1
Persistent: false
Parent: 
Children: 
Mask: 

No Physics Object
Create Event:

execute code:

glob = instance_place(10,10,og1_start);
image_index = 1+((glob.move-1)*4);
image_speed = 0;
if (image_index <= 4)glob.pointp2 +=1 ;
else glob.pointp1 +=1;



Information about object: og1_strike2
Sprite: spr_strike
Solid: false
Visible: true
Depth: -1
Persistent: false
Parent: 
Children: 
Mask: 

No Physics Object
Create Event:

execute code:

glob = instance_place(10,10,og1_start);
image_index = 2+((glob.move-1)*4);
image_speed = 0;
if (image_index <= 4)glob.pointp2 +=1 ;
else glob.pointp1 +=1;


Information about object: og1_strike3
Sprite: spr_strike
Solid: false
Visible: true
Depth: -1
Persistent: false
Parent: 
Children: 
Mask: 

No Physics Object
Create Event:

execute code:

glob = instance_place(10,10,og1_start);
image_index = 3+((glob.move-1)*4);
image_speed = 0;
if (image_index <= 4)glob.pointp2 +=1 ;
else glob.pointp1 +=1;



Information about object: og1_strike4
Sprite: spr_strike
Solid: false
Visible: true
Depth: -1
Persistent: false
Parent: 
Children: 
Mask: 

No Physics Object
Create Event:

execute code:

glob = instance_place(10,10,og1_start);
image_index = 4+((glob.move-1)*4);
image_speed = 0;
if (image_index <= 4)glob.pointp2 +=1 ;
else glob.pointp1 +=1;

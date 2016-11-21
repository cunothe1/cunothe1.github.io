Information about object: og1_gravity1
Sprite: sprite3
Solid: false
Visible: true
Depth: 0
Persistent: false
Parent: 
Children: 
Mask: 

No Physics Object
Step Event:

execute code:

here = instance_place(x,y,og1_vak);
if (here.team > 0){
    if place_meeting(x,y-64,og1_gravity1){}
    else instance_create(x,y-64,og1_gravity1);
    if place_meeting(x,y+64,og1_gravity1){}
    else instance_create(x,y+64,og1_gravity1);
}





Information about object: og1_gravity2
Sprite: sprite3
Solid: false
Visible: true
Depth: 0
Persistent: false
Parent: 
Children: 
Mask: 

No Physics Object
Step Event:

execute code:

here = instance_place(x,y,og1_vak);
if (here.team > 0){
    if place_meeting(x-64,y,og1_gravity2){}
    else instance_create(x-64,y,og1_gravity2);
    if place_meeting(x+64,y,og1_gravity2){}
    else instance_create(x+64,y,og1_gravity2);
}


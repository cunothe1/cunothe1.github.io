Information about object: ostart
Sprite: 
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

globalvar team1ships;
globalvar team2ships;
globalvar team3ships;
globalvar team4ships;
team1ships = 0;
team2ships = 0;
team3ships = 0;
team4ships = 0;



//moddifiers
globalvar moddmg;
globalvar modteamdmg;

moddmg = 1;
modteamdmg = 0.1;

execute code:

///notes
/*
depth
500-300 warships
250-100 frigates
150-50 corvettes
0--300 ships








*/

Step Event:

execute code:

///in case of exit
if keyboard_check_released(vk_escape){









room_restart();
}

execute code:

///battle support


Draw Event:

execute code:



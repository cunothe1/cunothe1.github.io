Information about object: oEinterceptor
Sprite: sEinterceptor
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

//info
class = "interceptor";
team = 1;
enemy = 2+4+8;

//movement
move = 5;
maxmove = 10;
minmove = 3;
turn = 3.5;
acceleration = 0.3;
deacceleration = 0.3;

//shooting
shootrange = 75
shootrof = 2/30
shootdmg = 10
shootspeed = 20
controlshoot = "none"

//targetting
protx = x;
proty = y;
range = 250;

//hp
hpmax = 20;
hpstripe = 5;

hpprefix = '[';
hpsuffix = ']';
hp = hpmax;
target = 0;
controlmove = "";
controlturn = "";
image_speed = 0
to = instance_create(x,y,oto);
cruisecontrol = 1;
shootsequence = shootrof;

Step Event:

execute code:

///control
script_execute(scrip_input);
if (cruisecontrol = 1){
//targets
target = instance_nearest(x,y,oOinterceptor)}
//targetting
if (cruisecontrol = 1){
if instance_exists(target){
if (point_distance(protx,proty,target.x,target.y)<range)controlmove="forward";}}
//movement interceptor
script_execute(scrip_movinginterceptor);

execute code:

///shooting
if (controlshoot = "normal"){
shootsequence -= 1/30
if (shootsequence = 0){
    shot = instance_create(x,y,oBemp);
    script_execute(scrip_shooting);
    controlshoot="none";
    shootsequence=shootrof
}}

if (cruisecontrol = 1){
if instance_exists(target){
if (point_direction(x,y,target.to.x,target.to.y)-direction < 2){
if (point_distance(x,y,target.to.x,target.to.y)<range*0.75) controlshoot="normal";}
else{ if (point_direction(x,y,target.to.x,target.to.y)-direction > 358){
if (point_distance(x,y,target.to.x,target.to.y)<range*0.75) controlshoot="normal";}}}}

Draw Event:

execute code:

draw_self()
hpbar = "";

var i;
for (i=1; i<=hpstripe; i+=1){ 
if (hp > hpmax/hpstripe*i)hpbar += "I";}
draw_text(x-10,y-30,hpprefix+hpbar+hpsuffix);


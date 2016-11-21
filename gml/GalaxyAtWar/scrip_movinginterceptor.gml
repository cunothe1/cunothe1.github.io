if (hp < 0) instance_destroy()
if (direction <= 0) direction = 359;


if (controlmove = "forward") {move += acceleration;controlmove = ""}
if (controlmove = "backward") {move -= deacceleration;controlmove = ""}
if (controlturn = "left") {direction += turn;controlturn = ""}
if (controlturn = "right") {direction -= turn;controlturn = ""}

image_index = direction/4
move = move*0.99;
if (move > maxmove)move = maxmove;
if (move < minmove)move = minmove;
if (cruisecontrol = 1){if (move > maxmove*0.75) move = maxmove*0.75}
speed = move;
move_wrap(true,true,20)

if (cruisecontrol = 1){
//protect
protx = x;
proty = y;
if instance_exists(target){
if (point_distance(protx,proty,target.x,target.y)<range)controlmove="forward";

//moving
if (point_direction(x,y,target.to.x,target.to.y)-direction < 0) controlturn = "right";
if (point_direction(x,y,target.to.x,target.to.y)-direction > 0) controlturn = "left";
//to
}}
to.x = x+60*cos(pi/180*-direction)
to.y = y+60*sin(pi/180*-direction)
if (cruisecontrol=1)move_towards_point(to.x,to.y,move);

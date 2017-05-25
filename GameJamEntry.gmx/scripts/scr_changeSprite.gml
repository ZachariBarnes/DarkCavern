//Setup Variables
from_sprite = argument0;
to_sprite = argument1;
var height1 = sprite_get_height(from_sprite);
var height2 = sprite_get_height(to_sprite);
var width1 = sprite_get_height(from_sprite);
var width2 = sprite_get_height(to_sprite);
x1offset = sprite_get_xoffset(from_sprite);
y1offset = sprite_get_yoffset(from_sprite);
x2offset = sprite_get_xoffset(to_sprite);
y2offset = sprite_get_yoffset(to_sprite);
change = true;


//Detect if new shape will be collidiing with walls
/*if(width2>width1){tempXSize = width2;}
else{tempXSize = width1;}
if(height2>height1){tempYSize = height2;}
else{tempYSize = height1;}
*/
if(x2offset>x1offset){tempX = x2offset;}
else{tempX = x1offset;}
if(y2offset>y1offset){tempY = y2offset;}
else{tempY = y1offset;}

if(place_meeting(x+tempX,y-tempY,obj_wall) or place_meeting(x-tempX,y-tempY,obj_wall)){
change = false;
}

if(change){
    if(place_meeting(x,y+1,obj_wall)){

    var diff = height2-height1;
//        if(diff<0){
//            diff=-diff;
//            }
    diff-=8;
    y-=diff;
    sprite_index = spr_normal;
    fromState=noone;
    }
}

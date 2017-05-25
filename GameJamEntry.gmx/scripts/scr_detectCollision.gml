if (place_meeting(x+hsp,y,obj_wall)){ //Check for Horizontal collision with a wall
    yplus = 0;
    while(place_meeting(x+hsp, y-yplus, obj_wall) && yplus <= abs(2*hsp)) yplus += 1;        
    if place_meeting(x+hsp, y-yplus, obj_wall) {
        while(!place_meeting(x+sign(hsp),y,obj_wall)){
            x += sign(hsp);
            }
        hsp = 0;
    }
    else
    {
     y -= yplus;    
    }
}


if (place_meeting(x,y+vsp,obj_wall)){ //Check for Veritcal collision with a wall
    while(!place_meeting(x,y+sign(vsp),obj_wall)){
        y += sign(vsp);
        }
    vsp = 0;
    }



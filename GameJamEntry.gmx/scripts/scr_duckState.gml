//Get Inputs
sprite_index = spr_duck;
scr_getInputs();
//Determine if movement keys are pressed
global.move = key_left+key_right;
if(global.move!=0){image_xscale = global.move;}

hsp = global.move * movespeed; // Move the Character

if(vsp < 10){ 
    vsp += grav;
    }

if(place_meeting(x,y+1,obj_wall)){ // Jump if on ground
    vsp = key_up *-jumpspeed;
    }

scr_detectCollision();    
    
x += hsp;
y += vsp;

if(key_down!=1){
    state = states.normal;
    fromState=states.duck;
        }




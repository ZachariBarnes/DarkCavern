//Update Sprites
if(fromState = states.duck){
scr_changeSprite(spr_duck,spr_normal);
}

//hello change jeremy
//Get Inputs
scr_getInputs();
//Determine if movement keys are pressed
global.move = key_left+key_right;
if(global.move!=0){image_xscale = global.move;}


var aimGun = 0;

if (arrow_up = 1) {
    obj_gun.sprite_index = spr_upgun;
    aimGun = 1;
} else if (arrow_down = 1) {
    obj_gun.sprite_index = spr_downgun;
   aimGun = 2;
} else if (global.move > 0 ) {
    obj_gun.sprite_index = spr_gun;
    aimGun = 3;
} else if (global.move < 0 ) {
    obj_gun.sprite_index = spr_gun;
    aimGun = 4;
} else {
    obj_gun.sprite_index = spr_gun;
    }


hsp = (global.move * movespeed) + (boost); // Move the Character

if(place_meeting(x,y+1,obj_wall)){ // Jump if on ground
    if (key_up = 1) {
        vsp = (key_up + vboost) * -jumpspeed;
    } else {
        vsp = (key_up*-jumpspeed);
    }
}

if (space = 1) {

    if(canShoot) { 
        scr_shoot(aimGun);  
    } 
}

if (!canShoot) {
    if (count > 45) {
        canShoot = true;
        boost = 0;
        vboost = 0;
        count = 0;
    }
    count++;
}

if(vsp < 10){ 
    vsp += grav;
    }



scr_detectCollision();    
    
x += hsp;
y += vsp;

if(key_down=1){
    state = states.duck;
    fromState=states.normal;
    }



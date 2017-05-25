if(fromState=states.normal){
    audio_play_sound(snd_dead,0,false);
    fromState=states.dead;
}

image_angle=90;

if(vsp < 10){ 
    vsp += grav;
    }
    
scr_detectCollision();    
    
x += hsp;
y += vsp;

deadcount ++;
if (deadcount >= 100){
instance_destroy();
room_goto(rm_gameOver);
}

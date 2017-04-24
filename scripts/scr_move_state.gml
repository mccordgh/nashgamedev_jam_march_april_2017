///scr_move_state()

move = 0;
//React to inputs
if (obj_input_manager.x_axis > 0.5)
{
    move = 1;
}
if (obj_input_manager.x_axis < -0.5)
{
    move = -1;
}
//move = key_left + key_right;
hspd = move * movespeed;
if (vspd < 10) vspd += grav;

if (place_meeting(x,y+1,obj_block_parent))
{
    vspd = obj_input_manager.key_jump * -jumpspeed
}

//Horizontal Collision
if (place_meeting(x+hspd,y,obj_block_parent))
{
    while(!place_meeting(x+sign(hspd),y,obj_block_parent))
    {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

//Vertical Collision
if (place_meeting(x,y+vspd,obj_block_parent))
{
    while(!place_meeting(x,y+sign(vspd),obj_block_parent))
    {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;

if (obj_input_manager.spell_key && obj_player.growth > 0)
{
    obj_player.growth -= 1;
    scr_grow_player();
}

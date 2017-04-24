///scr_grow_player()

//grow player and stats
with (obj_player)
{
    image_xscale += 0.3;
    image_yscale += 0.3;
    jumpspeed += 1.1;
    movespeed += 1;    


/*    if (place_meeting(x - 5, y, obj_block_parent)
        or place_meeting(x + 37, y, obj_block_parent)
        or place_meeting(x, y - 5, obj_block_parent)
        or place_meeting(x, y + 37, obj_block_parent))
    {
        with (obj_block_parent)
        {
            instance_destroy();
        }
    }
*/
}



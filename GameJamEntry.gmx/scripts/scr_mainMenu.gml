count = 0;
switch (mpos)
{
    case 0://Start New Game
    {
        room_goto(rm_lvl_one);
        break;
    }
    case 1://Credits
    {
        room_goto(rm_credits);
        break;
    }
    case 2://Options
    {
  
        instance_create(x,y , obj_aww)
        break;
    }
        case 3://Options
    {
        room_goto(rm_menu);
        break;
    }
    default:
    {
        break;
    }

}

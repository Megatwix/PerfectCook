if place_meeting(x,y,obj_player) && input_check_pressed(INPUTS.up)
{
scr_sound(sfx_computerswitch,false)
menu += 1
}
if menu >= 2
menu = 0
switch menu
{
	case 0:
	text = $"\Toppins: {toppin} out of {all_toppin}"
	sub_text = $"\Secrets: {s_count} out of {all_secret}"
	sub_text2 = $"\Treasure: {treasure} out of {all_treasure}"
	break
	case 1:
	text = $"\Achievements: {ach} out of {all_ach}"
	sub_text = $"\Clothes: {clth} out of {all_clth}"
	sub_text2 = $"\Damage: {dmg}"
break
}
switch (state)
{
	case 0:
		internal_y = max(internal_y - 5, -bubble.h - padding);
		if (obj_player.state != states.backtohub && place_meeting(x, y, obj_player))
		{
			state = 1
			vsp = 0
		}
		break;
	case 1:
		internal_y += vsp;
		if vsp < 20
			vsp += 0.5
		if internal_y > padding
			state = 2
		break;
	case 2:
		internal_y = max(internal_y - 2, padding)
		if !place_meeting(x, y, obj_player)
			state = 0
		break;
}

bg_pos.x-=0.5
bg_pos.y-=0.5

wave_timer += 20

bubble.x = padding + wave(-5, 5, 2, 10, wave_timer)
bubble.y = internal_y + wave(-1, 1, 4, 0, wave_timer)

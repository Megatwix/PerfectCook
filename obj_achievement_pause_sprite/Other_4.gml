switch global.level_data.level_name
{
	case "Entrance":
	switch achievement_number
	{
		case 1:
		sprite_index = spr_achievement_gutted
		achievement = "entrance1"
		break
		case 2:
		sprite_index = spr_achievement_quick
		achievement = "entrance2"
		break
		case 3:
		sprite_index = spr_achievement_rage
		achievement = "entrance3"
		break
	}
	break
	case "Test":
	switch achievement_number
	{
		case 1:
		achievement = "Test 3"
		break
		case 2:
		achievement = "Test 4"
		break
		case 3:
		achievement = ""
		break
	}
	break
}

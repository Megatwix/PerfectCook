yoffset--
move = input_check_pressed(INPUTS.left) + input_check_pressed(INPUTS.right)

if (move != 0)
{
    achievement += move
    achievement = clamp(achievement, -1, array_length(achievements) - 1)
}

if (achievement == -1 && input_check_pressed(INPUTS.down))

	achievement = 0

if (obj_achievement_pause_sprite.selected <= 0)

    achievement = -1 //that shit drove me crazy :sob:

if (input_check_pressed(INPUTS.up))

    achievement = -1

if (input_check_pressed(INPUTS.ui_back))
{
	alarm[0] = 1
    achievement = -1
}

if (achievement == -1 && input_check_pressed(INPUTS.jump))

	alarm[0] = 1


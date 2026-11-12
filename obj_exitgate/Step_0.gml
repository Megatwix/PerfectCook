with instance_place(x, y, obj_player)
{
	if (!global.panic.active && anim_ended() && sprite_index == spr_player_walkfront && !global.panic.active)
	{
		shake_camera()
		reset_anim(spr_player_timesup)
		other.image_index = 1
		scr_sound_3d(sfx_groundpound, x, y)
		global.doorshut = true
	}
	else if (global.panic.active && input_direction_check(INPUTS.up) && grounded && scr_can_enter_door(state))
	{
		global.panic.active = false
		hsp = 0
		movespeed = 0
		state = states.actor
		reset_anim(spr_player_lookdoor)
		
		var s = round(global.score + obj_levelcontroller.combo_score)
		
		var _rank_ix = "D"
		var _rank_real = 0
		var ranks = [
			global.rank_milestones.c,
			global.rank_milestones.b,
			global.rank_milestones.a,
			global.rank_milestones.s
		]
		if s >= global.rank_milestones.s && check_p_rank()
			{
			_rank_ix = "P"
			_rank_real = 5
			}
		else
			{
			_rank_ix = "S"
			_rank_real = 4
			}
		if _rank_ix = "S" && check_p_rank()
			_rank_ix = "P"
		if s >= global.rank_milestones.a && s < global.rank_milestones.s
		{
			_rank_ix = "A"
				_rank_real = 3
			}
		else if s >= global.rank_milestones.b && s < global.rank_milestones.s
		{
		_rank_ix = "B"
			_rank_real = 2
			}
		else if s >= global.rank_milestones.c && s < global.rank_milestones.s
			{
			_rank_ix = "C"
			_rank_real = 1
			}
		else if s < global.rank_milestones.c
		{
			_rank_ix = "D"
			_rank_real = 0
			}
		with instance_create(0, 0, obj_rank)
		{
		rank_ix = 0
		if _rank_ix = "P"
			rank_ix = 5
	    else if _rank_ix = "S"
			rank_ix = 4
		else if _rank_ix = "A"
			rank_ix = 3
		else if _rank_ix = "B"
			rank_ix = 2
		else if _rank_ix = "C"
			rank_ix = 1
			rank_score = s
			results[0][1] = s
			results[1][1] = string_convert_seconds_to_timer(obj_timer.level_timer, false, true)
			results[2][1] = global.hurtcounter
			results[3][1] = global.combo.record
		}
		
		ini_open(global.savestring)
		
		var lvl_name = global.level_data.level_name
		var lvl_toppins = global.level_data.toppins
		
		if s > ini_read_real(lvl_name, "score", 0)
			ini_write_real(lvl_name, "score", s)
		
		if !ini_read_real(lvl_name, "treasure", 0)
			ini_write_real(lvl_name, "treasure", global.level_data.treasure)
		
		if global.level_data.secret_count > ini_read_real(lvl_name, "secret_count", 0)
			ini_write_real(lvl_name, "secret_count", global.level_data.secret_count)
		
		if !ini_read_real(lvl_name,"beaten",0)
		ini_write_real(lvl_name,"beaten",1)
		
		if _rank_real > ini_read_real(lvl_name, "rank real", 0)
		{
			ini_write_real(lvl_name, "rank real", _rank_real)
			ini_write_string(lvl_name, "rank", _rank_ix)
	}
		
		if !ini_read_real(lvl_name, "shroom", 0)
			ini_write_real(lvl_name, "shroom", lvl_toppins.shroom)
		if !ini_read_real(lvl_name, "cheese", 0)
			ini_write_real(lvl_name, "cheese", lvl_toppins.cheese)
		if !ini_read_real(lvl_name, "tomato", 0)
			ini_write_real(lvl_name, "tomato", lvl_toppins.tomato)
		if !ini_read_real(lvl_name, "sausage", 0)
			ini_write_real(lvl_name, "sausage", lvl_toppins.sausage)
		if !ini_read_real(lvl_name, "pineapple", 0)
			ini_write_real(lvl_name, "pineapple", lvl_toppins.pineapple)
		
		ini_close()
	}
}
if global.doorshut && !global.panic.active
	image_index = 1
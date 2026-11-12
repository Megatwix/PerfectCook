if global.level_data.level_name = "Entrance"
{
	if global.combo.count >= 86
	unlock_achievement(spr_achievement_rage,"Achievements","entrance1",1)
	if room == rank_room && obj_timer.level_timer < 120
	unlock_achievement(spr_achievement_quick,"Achievements","entrance2",1)
}
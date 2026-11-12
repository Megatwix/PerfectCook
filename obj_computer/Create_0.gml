state = 0
menu = 0
talking = false
text_wave_y = 0
text_wave_x = 0
text_xscale = (960 - 64) / sprite_get_width(spr_computerbubble)
text_yscale = 2
text_y = -(sprite_get_height(spr_computerbubble) * text_yscale)
text_sprite_height = sprite_get_height(spr_computerbubble)
text_xpad = 0
text_ystart = 16
text_vsp = 0
padding = 30
text_padding = 20
text_width = 15
text_height = 30
depth = 0
vsp = 0

align = {
	h: fa_center,
	v: fa_middle
}
dir = 1
show = false

wave_timer = 0

bubble = {
	x: padding,
	y: -screen_h,
	w: screen_w - (padding * 2),
	h: text_height + padding
}

var h_start = bubble.h

state = 0

internal_y = bubble.y
s_count = 0
treasure = 0
toppin = 0
ach = 0
clth = 1
dmg = 69
var xx = 0
var prev_i = 1
var level = ["Entrance"] //level list
var achievement_list = ["entrance1","entrance2","entrance3"] //achievement list
var clothes_list = ["unfunny","money"] //add the clothes string here
var lvl_name,i_other,i_ach,lvl_ach,clth_unlck,i_clth
  ini_open(global.savestring)
	for (i_other = 0; i_other < array_length(level); i_other++)
{
	lvl_name = level[i_other]
  t_shroom = ini_read_real(lvl_name,"shroom",false)
  t_cheese = ini_read_real(lvl_name,"cheese",false)
  t_tomato = ini_read_real(lvl_name,"tomato",false)
  t_sausage = ini_read_real(lvl_name,"sausage",false)
  t_pineapple = ini_read_real(lvl_name,"pineapple",false)
  lvl_secret = ini_read_real(lvl_name,"secret_count",false)
  lvl_treasure = ini_read_real(lvl_name,"treasure",false)
  dmg = ini_read_real("General","hurt",false)
  all_toppin = array_length(level) * 5
  all_secret = array_length(level) * 3
  all_treasure = array_length(level)
  s_count += lvl_secret
  treasure += lvl_treasure
  toppin += t_shroom + t_cheese + t_tomato + t_sausage + t_pineapple
}
	for (i_ach = 0; i_ach < array_length(achievement_list); i_ach++)
{
	lvl_ach = achievement_list[i_ach]
lvls_ach = ini_read_real("Achievements",lvl_ach,false)
all_ach = array_length(achievement_list)
ach += lvls_ach
}
ini_close()
ini_open("globalsave.ini")
	for (i_clth = 0; i_clth < array_length(clothes_list); i_clth++)
{
	clth_unlck = clothes_list[i_clth]
clth_unlo = ini_read_real("Clothes",clth_unlck,false)
all_clth = array_length(clothes_list) + 1
clth += clth_unlo
}
str_arr = []
text = $"\Toppins: {toppin} out of {all_toppin}                                                                "// this is long as fuck because the border would be short for some reason
sub_text = $"\Secrets: {s_count} out of {all_secret}"
sub_text2 = $"\Treasure: {treasure} out of {all_treasure}" //this shit made me fucking crazy i swear
iwassofuckingpissedatthisshittbh = "i was so fucking pissed at this shit tbh"
for (var i = 1; i <= string_length(text); i++) 
{
	xx += string_width(string_char_at(text, i))
	if (xx >= bubble.w - text_padding - padding || i == string_length(text))
	{
		xx = 0
		bubble.h += text_height
		var count = i - prev_i
		
		if i == string_length(text)
			count ++
		
		array_push(str_arr, string_copy(text, prev_i, count))
		prev_i = i
	}
}

bg_pos = {
	x: 0,
	y: 0
}
depth = 50
bubble_surf = noone

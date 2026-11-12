if bubble.y <= -bubble.h
	exit;
if !surface_exists(bubble_surf)
	bubble_surf = surface_create(bubble.w, bubble.h)
else
{
	surface_set_target(bubble_surf)
	
	draw_clear(c_black)	
	draw_sprite_tiled(spr_computerbackground, 0, bg_pos.x, bg_pos.y)
	gpu_set_blendmode(bm_subtract)
	draw_sprite_stretched(spr_tutorialbubble, 1, 0,0, bubble.w, bubble.h)
	gpu_set_blendmode_normal_fixed()
	surface_reset_target()
	
	draw_surface(bubble_surf, bubble.x, bubble.y)
}

draw_sprite_stretched(spr_computerbubble, 0, bubble.x, bubble.y, bubble.w, bubble.h)

draw_set_font(global.tutorialfont)
draw_set_align(fa_left, fa_top, c_black)
draw_set_colour(make_color_rgb(171, 255, 0))

for (var i = 0; i < array_length(str_arr); i++) 
{
	var xx = bubble.x + text_padding
	var xx2 = bubble.x + text_padding
	var xx3 = bubble.x + text_padding
	for (var j = 1; j <= string_length(str_arr[i]); j++) 
	{
		var d = (j % 2) == 0 ? -1 : 1;
		var y_o = wave(-1, 1, 0.1, 0) * d
		var cur_char = string_char_at(text, j)
		var sub_cur_char = string_char_at(sub_text, j)
		var sub_cur_char2 = string_char_at(sub_text2, j)
		draw_text(xx, bubble.y + text_padding + y_o - 5, cur_char)
		draw_text(xx2, bubble.y + text_padding + y_o + 40, sub_cur_char)
		draw_text(xx3, bubble.y + text_padding + y_o + 85, sub_cur_char2)
		xx += string_width(cur_char)
		xx2 += string_width(sub_cur_char)
		xx3 += string_width(sub_cur_char2)
	}
}
//most of that shit is from cc tutorial book (aka obj_pizzagranny for the none modder of pt)
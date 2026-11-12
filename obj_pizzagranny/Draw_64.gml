if bubble.y <= -bubble.h
	exit;
var _x = bubble.x 
draw_sprite(spr_tutorialbubble_rope, 0, bubble.x + padding, bubble.y)
draw_sprite(spr_tutorialbubble_rope, 0, bubble.x + bubble.w - padding, bubble.y)

if !surface_exists(bubble_surf)
	bubble_surf = surface_create(bubble.w, bubble.h)
else
{
	surface_set_target(bubble_surf)
	
	draw_clear(c_black)
	
	draw_sprite_tiled(spr_tutorialbubble_bg, 0, bg_pos.x, bg_pos.y)
	
	gpu_set_blendmode(bm_subtract)
	draw_sprite_stretched(spr_tutorialbubble, 1, 0, 0, bubble.w, bubble.h)
	gpu_set_blendmode_normal_fixed()
	
	surface_reset_target()
	
	draw_surface(bubble_surf, bubble.x, bubble.y)
}

draw_sprite_stretched(spr_tutorialbubble, 0, bubble.x, bubble.y, bubble.w, bubble.h)

draw_set_font(global.tutorialfont)
draw_set_align(fa_left, fa_top, c_black)

for (var i = 0; i < array_length(str_arr); i++) 
{
	var xx = bubble.x + text_padding
	draw_set_colour(c_black)
	for (var j = 1; j <= string_length(str_arr[i]); j++) 
	{
		var d = (j % 2) == 0 ? -1 : 1;
		var y_o = wave(-1, 1, 0.1, 0) * d
		var cur_char = string_char_at(str_arr[i], j)
		xx += string_width(cur_char)
	}
	compile_icon_text("{u}" + str_arr[i],bubble.x + text_padding, bubble.y + text_padding + (text_height * i),false,c_black)
}
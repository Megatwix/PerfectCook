if ds_list_find_index(global.ds_saveroom, id) == -1
{
create_effect(x,y - 50,spr_teleporteffect)
scr_sound_3d(sfx_teleportenter, x, y)
ds_list_add(global.ds_saveroom, id)
}
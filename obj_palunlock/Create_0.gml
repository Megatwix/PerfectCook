var b

x = 960 - 120
y = 540 + 200
image_alpha = 0
finish = false
palette = 1
pattern = spr_null
movespeed = 5
depth = -600
previousID = -4

if (instance_number(obj_palunlock) > 1)
{
    b = instance_find(obj_palunlock, instance_number(obj_palunlock) - 2)
    
    if (instance_exists(b))
    {
        previousID = b
    }
}

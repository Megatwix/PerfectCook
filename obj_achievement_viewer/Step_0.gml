var d

d = distance_to_object(obj_player)

with (obj_achievement_viewer)
{
    if id != other.id && collision && distance_to_object(obj_player) <= d
        other.collision = false
}

if collision
alpha = approach(alpha, 1, 0.1)
else
alpha = approach(alpha, 0, 0.1)

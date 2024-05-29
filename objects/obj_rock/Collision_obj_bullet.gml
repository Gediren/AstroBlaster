/// @description Rock got got.
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);
audio_play_sound(snd_rockdestroy, 0, false, random_range(0.9, 1.1), 0, random_range(0.3, 1));

direction = random(360);

if (obj_game.powerup_time < 0)
{
	var _obj = choose(obj_powerup_spread, obj_powerup_ghost, obj_powerup_shield);
	instance_create_layer(x, y, "Instances", _obj);
	obj_game.powerup_time = 20;
}

if sprite_index == spr_rock_big
{
    sprite_index = spr_rock_small;
    instance_copy(true);
}
else if instance_number(obj_rock) < 12
{
    sprite_index = spr_rock_big;
    x = -100;
}
else
{
	instance_destroy();
}

obj_game.points += 50;
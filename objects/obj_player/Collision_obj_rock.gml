/// @description You suck at driving.
if (powerup == 2) exit;
if (shield == 1)
{
	shield = 0;
	image_blend = c_white;
	instance_destroy(other);
	exit;
}

effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();
obj_game.alarm[0] = 120;
audio_play_sound(snd_lose, 0, false);
/// @description Control your spaceship.
// Basic movement.
if keyboard_check (vk_up)
{motion_add(image_angle, 0.1)}

if keyboard_check(vk_down)
{motion_add(image_angle, -0.1)}

if keyboard_check(vk_left)
{image_angle += 4;}

if keyboard_check(vk_right)
{image_angle -= 4;}

// Don't get lost when you hit the side of the map.
move_wrap(true, true, 0)

// Shoot stuff when the spacebar is pressed.
if keyboard_check_pressed(vk_space)
{
	instance_create_layer(x, y, "Instances", obj_bullet)
	
	//Plays a sound when the player shoots.
	//The pitch and volume will be slightly randomized.
	audio_play_sound(snd_shoot, 0, false, random_range(0.9, 1.1), 0, random_range(0.5, 1.5))
	
	//If the Spread powerup is enabled, create two additional bullet instances
	//on slightly different trajectories.
	if (powerup == 1)
	{
		var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction += 10;
		_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction -= 10;
	}
}
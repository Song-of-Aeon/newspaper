if(state == true)
	{
		state = false;
		sprite_index = spr_lo_off;
	}
else
	{
		state = true;
		sprite_index = spr_lo_on;
	}

// Ensuring the modulo is always positive.
lo_left_index = (lo_id - 1) % global.lightsout_size
if (lo_left_index < 0)
	{
	lo_left_index += global.lightsout_size
	}

// Set the left obj light.
if (global.lightsout_container[lo_left_index].state == true)
	{
		global.lightsout_container[lo_left_index].state = false;
		global.lightsout_container[lo_left_index].sprite_index = spr_lo_off;
	}
else
	{
		global.lightsout_container[lo_left_index].state = true;
		global.lightsout_container[lo_left_index].sprite_index = spr_lo_on;
	}

// Set the right obj light.
lo_right_index = (lo_id + 1) % global.lightsout_size
if (global.lightsout_container[lo_right_index].state == true)
	{
		global.lightsout_container[lo_right_index].state = false;
		global.lightsout_container[lo_right_index].sprite_index = spr_lo_off;
	}
else
	{
		global.lightsout_container[lo_right_index].state = true;
		global.lightsout_container[lo_right_index].sprite_index = spr_lo_on;
	}
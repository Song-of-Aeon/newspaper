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
lo_left_index = (lo_id - 1) % 5
if (lo_left_index < 0)
	{
	lo_left_index += 5
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
show_debug_message((lo_id + 1) % 5)
if (global.lightsout_container[(lo_id + 1) % 5].state == true)
	{
		global.lightsout_container[(lo_id + 1) % 5].state = false;
		global.lightsout_container[(lo_id + 1) % 5].sprite_index = spr_lo_off;
	}
else
	{
		global.lightsout_container[(lo_id + 1) % 5].state = true;
		global.lightsout_container[(lo_id + 1) % 5].sprite_index = spr_lo_on;
	}

for (var i = 0; i < 5; i += 1)
{
	//show_debug_message(global.lightsout_container[i].state)
}
//show_debug_message("==========")
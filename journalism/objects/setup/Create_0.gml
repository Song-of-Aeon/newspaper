global.lightsout_container = []

for (var i = 0; i < 5; i += 1)
{
	temp_obj = instance_create_layer(100 * i, 0, "Instances", lo_obj)
	temp_obj.state = false
	temp_obj.lo_id = i
	array_push(global.lightsout_container, temp_obj)
}

instance_destroy();
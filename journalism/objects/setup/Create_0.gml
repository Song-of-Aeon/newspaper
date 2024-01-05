global.lightsout_container = []
global.lightsout_size = 30

circle_radius = 200
circle_mid_pos = [400,400]


for (var i = 0; i < global.lightsout_size; i += 1)
{
	n_x = circle_mid_pos[0] + (circle_radius * cos(degtorad(((360/global.lightsout_size) * i) - 90)));
	n_y = circle_mid_pos[1] + (circle_radius * sin(degtorad(((360/global.lightsout_size) * i) - 90)));
	temp_obj = instance_create_layer(n_x, n_y, "Instances", lo_obj)
	temp_obj.state = false
	temp_obj.lo_id = i
	array_push(global.lightsout_container, temp_obj)
}

instance_destroy();
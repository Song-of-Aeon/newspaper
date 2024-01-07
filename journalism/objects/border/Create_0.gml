function get_empty_tile_adj()
{
	var adjacentTile = [
						[2,5],
						[1,3,6],
						[2,4,7],
						[3,8],
						[1,6,9],
						[2,5,7,10],
						[3,6,8,11],
						[4,7,12],
						[5,10,13],
						[6,9,11,14],
						[7,10,12,15],
						[8,11,16],
						[9,14],
						[10,13,15],
						[11,14,16],
						[12,15]
						]
						
	var currentCondition = [1,2,3,4,
							5,6,7,8,
							9,10,11,12,
							13,14,15,16]
						
	for (var i = 0; i < 200; i++)
	{	
		var targetTile = array_get_index(currentCondition, 16)
		var adjTile = adjacentTile[targetTile]
		var randTile = adjTile[irandom(array_length(adjTile) - 1)]
		
		currentCondition[targetTile] = currentCondition[randTile - 1]
		currentCondition[randTile - 1] = 16
	}
	//show_debug_message([currentCondition[0],currentCondition[1],currentCondition[2],currentCondition[3]])
	//show_debug_message([currentCondition[4],currentCondition[5],currentCondition[6],currentCondition[7]])
	//show_debug_message([currentCondition[8],currentCondition[9],currentCondition[10],currentCondition[11]])
	//show_debug_message([currentCondition[12],currentCondition[13],currentCondition[14],currentCondition[15]])
	//show_debug_message("==========")
	return(currentCondition)
}
{
	var value = 1
	var insCollection = []
	for (var j = 0; j < 4; j++)
	{
		for (var i = 0; i < 4; i++)
		{
			if (value != 16)
			{
				var ins = instance_create_layer(x + i * sprite_get_width(tile_spr),y + j * sprite_get_height(tile_spr), "instances", tile)
				ins.value = value
				array_push(insCollection, ins)
				++value
			}
		}
	}
	
	//Get scrambled position that can be solved.
	var initPos = get_empty_tile_adj()
	
	//Rearrange square position.
	var value = 0
	for (var j = 0; j < 4; j++)
	{
		for (var i = 0; i < 4; i++)
		{
			if ((initPos[value] - 1) != 15)
			{
				insCollection[initPos[value] - 1].x = x + i * sprite_get_width(tile_spr)
				insCollection[initPos[value] - 1].y = y + j * sprite_get_height(tile_spr)
			}
			++value
		}
	}
	
}
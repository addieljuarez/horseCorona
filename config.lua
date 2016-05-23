application =
{

	content =
	{
		width = 320,
		height = 480, 
		scale = "letterBox",
		fps = 60,
		-- xAlign = "center",
		-- yAlign = "center",
		
		
		imageSuffix =
		{
			    ["@2x"] = 2,
			    ["@4x"] = 4.0,
 		},
		
	},

	--[[
	-- Push notifications
	notification =
	{
		iphone =
		{
			types =
			{
				"badge", "sound", "alert", "newsstand"
			}
		}
	},
	--]]    
}

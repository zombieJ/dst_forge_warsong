local descList =
{
"(DEV MODE)",
	"Provide auto boardcast function",
	"在熔炉中提供自动播报功能",

	"\nView Steam workshop for more info",
	"游览Steam创意工坊查看更多信息",

	"\n新浪微博：@二货爱吃白萝卜",
}

local function joinArray(arr, spliter)
	local strs = ""
	for i = 1, #arr do
		if i ~= 1 then
			strs = strs..spliter
		end
		strs = strs..arr[i]
	end
	return strs
end

name = "Forge Warsong DEV"
description = joinArray(descList, "\n")
author = "ZombieJ"
version = "0.0.1"
forumthread = "http://steamcommunity.com/sharedfiles/filedetails/?id=1085586145"
icon_atlas = "modicon.xml"
icon = "modicon.tex"
priority = 0
dst_compatible = true
client_only_mod = true
all_clients_require_mod = false

api_version = 10

configuration_options =
{
	--[[{
		name = "additional_weapon",
		label = "Weapon Recipes",
		options =
		{
			{description = "Open", data = "open"},
			{description = "Close", data = "close"},
		},
		default = "open",
	},]]
	{
		name = "dev_mode",
		label = "Dev Mod(DONT OPEN!)",
		hover = "This is only for dev and fail track. Please never enable it.",
		options =
		{
			{description = "Enabled", data = "enabled"},
			{description = "Disabled", data = "disabled"},
		},
		default = "disabled",
	},
}

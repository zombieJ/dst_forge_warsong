local require = GLOBAL.require
local TheNet = GLOBAL.TheNet

AddPrefabPostInit("world", LALALALA)

-- 忽略非熔炉世界
if TheNet:GetServerGameMode() ~= "lavaarena" then
	return
end

function AddWarsong(inst)
	-- 忽略非熔炉世界（双保险）
	if not inst:HasTag("lavaarena") then
		return
	end

	-- 定时器检查世界状态
	inst:DoPeriodicTask(1, function()
		--TheNet:Say('Hello world!')
	end)
end

AddPrefabPostInit("world", AddWarsong)
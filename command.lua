local function core()
	if Game.Player.InCombat then
		Game.SendChat("/battlemode on")
	elseif Game.Player.WeaponDrawn then
		if Game.Player.Moving or not Game.Player.HasEmote("sheathe") then
			Game.SendChat("/battlemode off")
		else
			Game.SendChat("/sheathe motion")
		end
	elseif Game.Player.Moving or not Game.Player.HasEmote("draw") then
		Game.SendChat("/battlemode on")
	else
		Game.SendChat("/draw motion")
	end
end

local function check()
	if Game.Player.Mounted then
		Game.Toast.Error("You can't draw your weapon while mounted.")
		return
	elseif Game.Player.InCombat and Game.Dalamud.HasPlugin("Reset-dummy-enmity-command") then
		Game.SendChat("/resetenmityall")
		Script.QueueDelay(1000)
		Script.QueueAction(core)
	end
	core()
end

Script(check)

  local noclipplayer = game:GetService("Players").LocalPlayer
	local noclipmouse = noclipplayer:GetMouse()
	local donoclip = false
	local noclip = false
	function b_noclip(key)
		if (key == "b") then
			if noclip == false then
				donoclip = true
				noclip = true
			elseif noclip == true then
				donoclip = false
				noclip = false
			end
		end
	end
	noclipmouse.KeyDown:connect(b_noclip)
	game:GetService("Players").LocalPlayer.Character.Head.Touched:connect(function(obj)
		if obj ~= workspace.Terrain then
			if donoclip == true then
				obj.CanCollide = false
			else
				obj.CanCollide = true
			end
		end
	end)

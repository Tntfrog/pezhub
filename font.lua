local player = game.Players.LocalPlayer
local font = Font.new("rbxassetid://12187375716")

local function apply(obj)
	if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
		obj.FontFace = font
	end
end

local function scanUI()
	local gui = player:WaitForChild("PlayerGui")
	for _, obj in ipairs(gui:GetDescendants()) do
		apply(obj)
	end
end

scanUI()

player.PlayerGui.DescendantAdded:Connect(apply)
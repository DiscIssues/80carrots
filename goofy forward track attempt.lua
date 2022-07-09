local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

for i,v in pairs(Players:GetChildren()) do
	if v:FindFirstChild("Humanoid") then
		local Cloned = v.Character.HumanoidRootPart:Clone()	
    wait()
		Cloned.Position = v.Character.HumanoidRootPart.Position + v.Character.HumanoidRootPart.Velocity * 500
		Cloned.OldPosition = v.Parent.HumanoidRootPart.OldValue + v.Parent.HumanoidRootPart.Velocity * 500
	end
end

for _,Player in pairs(Players:GetChildren()) do
	Args[1] = Player.Character.HumanoidRootPart
	Args[2] = Player.Character.HumanoidRootPart.Position
end 

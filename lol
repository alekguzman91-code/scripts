local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local hum = char:FindFirstChildOfClass("Humanoid")
local rut = char.HumanoidRootPart
local h = char.Head
local rem = char:WaitForChild("SprintEvent")
local mouse = plr:GetMouse()
mouse.KeyDown:Connect(function(key)
	if key == "z" then
		rem:FireServer("sit")
	end
	if key == "x" then
		rem:FireServer("lie")
	end
	if key == "f" then
		rem:FireServer("jumpHug")
	end
	if key == "t" then
		rem:FireServer("owo")
	end
	if key == "p" then
		rem:FireServer("jump")
	end
	if key == "p" then
		rem:FireServer("aww")
	end
end)
local v3 = Vector3.new
local cf = CFrame.new

local RS = game:GetService("RunService").RenderStepped

while true do
	hum.CameraOffset = hum.CameraOffset:Lerp((rut.CFrame*CFrame.new(0,1.5,0)):PointToObjectSpace(h.Position),.1)
	RS:Wait()
end

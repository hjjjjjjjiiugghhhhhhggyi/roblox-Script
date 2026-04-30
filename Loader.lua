local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "LoaderUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
frame.BorderSizePixel = 0
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1,0,1,0)
status.BackgroundTransparency = 1
status.Text = "Loading..."
status.TextColor3 = Color3.fromRGB(180,180,180)
status.Font = Enum.Font.Gotham
status.TextSize = 16
status.Parent = frame

local dots = 0
local running = true

task.spawn(function()
	while running do
		dots = (dots + 1) % 4
		status.Text = "Loading" .. string.rep(".", dots)
		task.wait(0.5)
	end
end)

task.wait(2)

status.Text = "Welcome to use this script"

task.wait(1)

local scriptUrl = "https://raw.githubusercontent.com/hjjjjjjjiiugghhhhhhggyi/roblox-Script/refs/heads/main/%E7%BB%BF.lua"

pcall(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/hjjjjjjjiiugghhhhhhggyi/roblox-Script/refs/heads/main/%E7%BB%BF.lua"))()
end)

running = false
gui:Destroy()

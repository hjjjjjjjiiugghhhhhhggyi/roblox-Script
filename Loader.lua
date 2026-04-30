local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- 创建UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LoadingUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local image = Instance.new("ImageLabel")
image.Size = UDim2.new(0, 150, 0, 150)
image.Position = UDim2.new(0.5, 0, 0.5, 0)
image.AnchorPoint = Vector2.new(0.5, 0.5)
image.BackgroundTransparency = 1
image.Image = "rbxassetid://116544501716299" -- 换成你的图片ID
image.Parent = screenGui

-- 旋转动画（2秒）
local tweenInfo = TweenInfo.new(
    2, -- 时间
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out
)

local goal = {Rotation = 360}

local tween = TweenService:Create(image, tweenInfo, goal)
tween:Play()

-- 2秒后执行加载逻辑
task.delay(2, function()
    screenGui:Destroy()

    -- 👉 在这里放你的脚本加载内容
    -- 示例1：执行函数
    print("加载完成，执行脚本")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hjjjjjjjiiugghhhhhhggyi/roblox-Script/refs/heads/main/%E7%BB%BF.lua"))()
end)

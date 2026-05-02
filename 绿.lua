local Players = game:GetService("Players")
local player = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DisabledNotice"
ScreenGui.Parent = player:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "Script Disabled"
Title.TextColor3 = Color3.fromRGB(255, 80, 80)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.Parent = Frame

local Text = Instance.new("TextLabel")
Text.Size = UDim2.new(1, -20, 0, 60)
Text.Position = UDim2.new(0, 10, 0, 45)
Text.BackgroundTransparency = 1
Text.Text = "该脚本已停用"
Text.TextColor3 = Color3.fromRGB(200, 200, 200)
Text.TextScaled = true
Text.Font = Enum.Font.Gotham
Text.Parent = Frame

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0.6, 0, 0, 35)
Button.Position = UDim2.new(0.2, 0, 1, -45)
Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Button.Text = "关闭"
Button.TextColor3 = Color3.fromRGB(255,255,255)
Button.TextScaled = true
Button.Font = Enum.Font.GothamBold
Button.Parent = Frame

Button.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

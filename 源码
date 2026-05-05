--不可执行,仅为标签页和部分功能
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local HttpService = game:GetService("HttpService")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

if not isfolder("XA-Hub") then makefolder("XA-Hub") end
if not isfolder("XA-Hub/Music") then makefolder("XA-Hub/Music") end

local Success_ESP, ESPLibrary = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunUWU/Script/refs/heads/main/ESPLibrary.lua"))()
end)

if not Success_ESP then warn("ESP Library failed to load") end

local Success_Notify, NotifyLib = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunUWU/Script/refs/heads/main/Library/Notification.lua"))()
end)

local Library = loadstring(game:HttpGet("https://raw.githubsercontent.con/XiaoYunUWU/Script/reds/heads/main/Library/Lua_Ware"))()
local Window = Library:new("XA Hub")  
local MainTab = Window:Tab("通用", 4370341699)  

local SectionInfo = MainTab:Section("信息")
local SectionTarget = MainTab:Section("目标玩家")
local SectionLocal = MainTab:Section("本地玩家")
local SectionUtility = MainTab:Section("实用")
local SectionTrigger = MainTab:Section("触发类")
local SectionCustom = MainTab:Section("自定义位置")

local ESPTab = Window:Tab("透视")
local SectionPlayerESP = ESPTab:Section("玩家透视")
local SectionNPcESP = ESPTab:Section("NPC透视")
local SectionOtherESP = ESPTab:Section("其他")

local AimbotTab = Window:Tab("自瞄") 
local SectionAimbot = AimbotTab:Section("Aimbot")
local SectionBulletTrack = AimbotTab:Section("子弹追踪")
local SectionFOV = AimbotTab:Section("FOV")
local SectionTriggerBot = AimbotTab:Section("Trigger Bot")
local SectionAimDirection = AimbotTab:Section("朝向系统")
local SectionOtherAim = AimbotTab:Section("其他")

local RangeTab = Window:Tab("范围")
local SectionRange = RangeTab:Section("范围")

local ObjectTab = Window:Tab("网络所有权")
local SectionUnanchorControl = ObjectTab:Section("未锚固物体控制")
local SectionTeleportUnanchor = ObjectTab:Section("传送未锚固物体")
local SectionOrbit = ObjectTab:Section("物体环绕")
local SectionNpcControl = ObjectTab:Section("NPC控制")

local CNScriptTab = Window:Tab("国内脚本")
local SectionCNScript = CNScriptTab:Section("国内脚本")

local OtherTab = Window:Tab("其他")
local SectionXABranch = OtherTab:Section("XA分支")
local SectionFEScripts = OtherTab:Section("FE脚本")
local SectionFreePass = OtherTab:Section("免费通行证")
local SectionReach = OtherTab:Section("Reach")
local SectionAutoClicker = OtherTab:Section("连点器")
local SectionTranslation = OtherTab:Section("翻译/Translation")

local AnimationTab = Window:Tab("动画")
local SectionAnimPack = AnimationTab:Section("动画包")
local SectionAnimEmotes = AnimationTab:Section("动画Emotes")
local SectionGameAnim = AnimationTab:Section("游戏中动画")
local SectionPlayingAnim = AnimationTab:Section("正在播放的动画")

local MusicTab = Window:Tab("音乐区")
local SectionMusicZone = MusicTab:Section("音乐区")
local SectionLocalMusic = MusicTab:Section("本地音乐")
local SectionMusicSettings = MusicTab:Section("设置")

local SettingsTab = Window:Tab("设置")
local SectionUISettings = SettingsTab:Section("UI设置")
local SectionDevTools = SettingsTab:Section("开发工具")

local AboutTab = Window:Tab("关于")
local SectionAbout = AboutTab:Section("关于")

print("XA-Hub Restored Successfully")

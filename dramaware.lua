local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = player.PlayerGui

local snd = Instance.new("Sound")
snd.SoundId = "rbxassetid://139310882854462"
snd.Volume = 10
snd.RollOffMaxDistance = math.huge
snd.Looped = true
snd.Parent = workspace
snd:Play()

local sg = Instance.new("ScreenGui")
sg.IgnoreGuiInset = true
sg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
sg.ResetOnSpawn = false
sg.Parent = gui

local bg = Instance.new("Frame")
bg.Size = UDim2.new(1, 0, 1, 0)
bg.Position = UDim2.new(0, 0, 0, 0)
bg.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
bg.BorderSizePixel = 0
bg.ZIndex = 1
bg.Parent = sg

local imgs = {
	"rbxassetid://6182991646",
	"rbxassetid://3557977631"
}

local function spawnImg()
	local img = Instance.new("ImageLabel")
	img.Size = UDim2.new(math.random(15, 40) / 100, 0, math.random(15, 40) / 100, 0)
	img.Position = UDim2.new(math.random(0, 90) / 100, 0, math.random(0, 90) / 100, 0)
	img.Image = imgs[math.random(1, #imgs)]
	img.ScaleType = Enum.ScaleType.Stretch
	img.BackgroundTransparency = 1
	img.ZIndex = math.random(2, 999)
	img.Parent = sg
end

local function spawnText()
	local lbl = Instance.new("TextLabel")
	lbl.Size = UDim2.new(math.random(10, 35) / 100, 0, math.random(5, 15) / 100, 0)
	lbl.Position = UDim2.new(math.random(0, 80) / 100, 0, math.random(0, 90) / 100, 0)
	lbl.Text = "USE DRAMAWARE"
	lbl.TextColor3 = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
	lbl.TextScaled = true
	lbl.Font = Enum.Font.GothamBold
	lbl.BackgroundTransparency = 1
	lbl.ZIndex = 1000
	lbl.Parent = sg
end

while true do
	spawnImg()
	if math.random(1, 5) == 1 then
		spawnText()
	end
	task.wait(0.03)
end

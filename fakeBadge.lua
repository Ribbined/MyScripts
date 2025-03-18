--[[
How to use:
1. Don't remove the credit print message 🙏🙏🙏
2. put this code at the start of your script:

local fakeBadge = loadstring(game:httpget("https://raw.githubusercontent.com/CorpseCMD/MyScripts/refs/heads/main/fakeBadge.lua"))()

3. at any point in your code you want a "badge" to appear, do this:

fakeBadge("Badge Name")

4. dont remove credits pls 😭
]]


local creatorname = ""
if game.CreatorType == Enum.CreatorType.Group then
	local GroupService = game:GetService("GroupService")
	creatorname = GroupService:GetGroupInfoAsync(game.CreatorId).Name

else
	creatorname = game.Players:GetNameFromUserIdAsync(game.CreatorId)
end

local function fakeBadge(badgename)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Badge Awarded",
		Text = game.Players.LocalPlayer.Name.." won "..creatorname.."'s \""..badgename.."\" award!",
		Duration = 5,
		Icon = "rbxassetid://7023744594"
	})
end

print("BadgeDisplay System made by @Ribbined has loaded successfully, use fakeBadge(<Badge name>) to display a fake badge")

return fakeBadge

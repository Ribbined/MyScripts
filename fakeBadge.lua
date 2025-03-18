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

print("BadgeDisplay System made by @Ribbined")

return fakeBadge

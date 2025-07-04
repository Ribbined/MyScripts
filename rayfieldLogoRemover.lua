-- probably won't work for Gen2 but ok
-- uh i only made this cuz someone wanted it, nothing against rayfield
local parent = gethui ~= nil and gethui() or game:FindService("CoreGui") or game:GetService("CoreGui") or game:FindFirstChild("CoreGui")
local function check(c)
    if c.Name == "Rayfield" and c:FindFirstChild("Loading") then
        c.Loading.Banner.ImageTransparency = 1
    end
end
parent.ChildAdded:Connect(check)
for _,c in parent:GetChildren() do check(c) end

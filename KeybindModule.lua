--[[
for anyone other than me reading this since this is public on my github
this is how you use it. You can use string or KeyCode

KeybindModule.Bind("E", function()
	print("E was pressed")
end)

KeybindModule.Bind(Enum.KeyCode.F, function()
	print("F was pressed")
end)

]]

local UserInputService = game:GetService("UserInputService")

local KeybindModule = {}

local bindings = {}

local function toKeyCode(input)
	if typeof(input) == "EnumItem" and input.EnumType == Enum.KeyCode then
		return input
	elseif typeof(input) == "string" then
		return Enum.KeyCode[input:upper()]
	end
	return nil
end

function KeybindModule.Bind(key, callback)
	local keyCode = toKeyCode(key)
	if not keyCode then
		warn("Invalid key: " .. tostring(key))
		return
	end
	bindings[keyCode] = callback
end

function KeybindModule.Unbind(key)
	local keyCode = toKeyCode(key)
	if keyCode then
		bindings[keyCode] = nil
	end
end

UserInputService.InputBegan:Connect(function(inp, gp)
	if gp then return end
	local callback = bindings[inp.KeyCode]
	if callback then
		callback()
	end
end)

return KeybindModule

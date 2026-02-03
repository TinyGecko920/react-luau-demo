local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Menu = require(script.Parent.Menu)
local React = require(ReplicatedStorage.Packages.React)

local function RootUI()
	return React.createElement(Menu, {
		Color = Color3.fromRGB(255, 0, 0),
		Text = "Custom Menu!",
	})
end

return RootUI

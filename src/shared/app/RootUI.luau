local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Menu = require(script.Parent.Menu)
local React = require(ReplicatedStorage.Packages.React)

local function RootUI()
	return React.createElement(Menu)
end

return RootUI

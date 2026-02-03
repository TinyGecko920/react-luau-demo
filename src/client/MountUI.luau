local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local React = require(ReplicatedStorage.Packages.React)
local ReactRoblox = require(ReplicatedStorage.Packages.ReactRoblox)

return function()
	local player = Players.LocalPlayer
	local playerGui = player.PlayerGui

	local container = Instance.new("ScreenGui")
	container.Name = "React"
	container.ClipToDeviceSafeArea = false
	container.IgnoreGuiInset = false
	container.ResetOnSpawn = false
	container.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	container.Parent = playerGui

	local root = ReactRoblox.createRoot(container)
	local app = React.createElement(...)
	root:render(app)
end

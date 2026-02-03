local ReplicatedStorage = game:GetService("ReplicatedStorage")

local React = require(ReplicatedStorage.Packages.React)
local e = React.createElement

type MenuProps = {
	Color: Color3,
	Text: string,
}

local function Menu(props: MenuProps)
	return e("Frame", {
		BackgroundColor3 = props.Color,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromScale(0.5, 0.5),
	}, {
		Stroke = e("UIStroke", {
			Thickness = 4,
		}),
		Text = e("TextLabel", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromScale(1, 0.25),
			Text = props.Text,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextScaled = true,
		}),
		UICorner = e("UICorner", {
			CornerRadius = UDim.new(0, 10),
		}),
	})
end

return Menu

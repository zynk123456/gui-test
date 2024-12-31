-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create the main frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 300)  -- Size of the frame
frame.Position = UDim2.new(0.5, -200, 0.5, -150)  -- Center position
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- White background
frame.BorderSizePixel = 2  -- Border size
frame.Parent = screenGui

-- Create title label
local title = Instance.new("TextLabel")
title.Size = UDim2.new(0, 400, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "zynk gui"  -- Title text
title.TextSize = 24
title.TextColor3 = Color3.fromRGB(0, 0, 0)  -- Black text color
title.BackgroundColor3 = Color3.fromRGB(200, 200, 200)  -- Background color for the title
title.Parent = frame

-- Create Button 1
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0, 150, 0, 50)
button1.Position = UDim2.new(0.1, 0, 0.2, 0)
button1.Text = "Button 1"
button1.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
button1.Parent = frame
button1.MouseButton1Click:Connect(function()
    print("Button 1 clicked!")
end)

-- Create Button 2
local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(0, 150, 0, 50)
button2.Position = UDim2.new(0.1, 0, 0.4, 0)
button2.Text = "Button 2"
button2.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
button2.Parent = frame
button2.MouseButton1Click:Connect(function()
    print("Button 2 clicked!")
end)

-- Create Button 3
local button3 = Instance.new("TextButton")
button3.Size = UDim2.new(0, 150, 0, 50)
button3.Position = UDim2.new(0.1, 0, 0.6, 0)
button3.Text = "Button 3"
button3.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
button3.Parent = frame
button3.MouseButton1Click:Connect(function()
    print("Button 3 clicked!")
end)

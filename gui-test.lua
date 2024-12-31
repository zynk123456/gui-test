-- Create the ScreenGui object
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a frame for the GUI window
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 200) -- Size of the window
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100) -- Center the window
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mainFrame.Parent = screenGui

-- Add a title label to the GUI
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0, 300, 0, 40)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Zynk GUI"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 24
titleLabel.TextAlign = Enum.TextAnchor.MiddleCenter
titleLabel.Parent = mainFrame

-- Create Button 1
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0, 260, 0, 40)
button1.Position = UDim2.new(0, 20, 0, 50)
button1.Text = "Button 1"
button1.TextColor3 = Color3.fromRGB(255, 255, 255)
button1.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
button1.TextSize = 18
button1.Parent = mainFrame

button1.MouseButton1Click:Connect(function()
    print("Button 1 clicked!")
end)

-- Create Button 2
local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(0, 260, 0, 40)
button2.Position = UDim2.new(0, 20, 0, 100)
button2.Text = "Button 2"
button2.TextColor3 = Color3.fromRGB(255, 255, 255)
button2.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
button2.TextSize = 18
button2.Parent = mainFrame

button2.MouseButton1Click:Connect(function()
    print("Button 2 clicked!")
end)

-- Create Button 3
local button3 = Instance.new("TextButton")
button3.Size = UDim2.new(0, 260, 0, 40)
button3.Position = UDim2.new(0, 20, 0, 150)
button3.Text = "Button 3"
button3.TextColor3 = Color3.fromRGB(255, 255, 255)
button3.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
button3.TextSize = 18
button3.Parent = mainFrame

button3.MouseButton1Click:Connect(function()
    print("Button 3 clicked!")
end)

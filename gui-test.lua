-- Create the GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0, 300, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.Text = "zynk gui"
Title.TextSize = 24
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Title.Parent = Frame

-- Button 1
local Button1 = Instance.new("TextButton")
Button1.Size = UDim2.new(0, 200, 0, 50)
Button1.Position = UDim2.new(0.5, -100, 0, 60)
Button1.Text = "Button 1"
Button1.TextSize = 18
Button1.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Button1.Parent = Frame

Button1.MouseButton1Click:Connect(function()
    print("Button 1 clicked!")
end)

-- Button 2
local Button2 = Instance.new("TextButton")
Button2.Size = UDim2.new(0, 200, 0, 50)
Button2.Position = UDim2.new(0.5, -100, 0, 120)
Button2.Text = "Button 2"
Button2.TextSize = 18
Button2.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Button2.Parent = Frame

Button2.MouseButton1Click:Connect(function()
    print("Button 2 clicked!")
end)

-- Button 3
local Button3 = Instance.new("TextButton")
Button3.Size = UDim2.new(0, 200, 0, 50)
Button3.Position = UDim2.new(0.5, -100, 0, 180)
Button3.Text = "Button 3"
Button3.TextSize = 18
Button3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Button3.Parent = Frame

Button3.MouseButton1Click:Connect(function()
    print("Button 3 clicked!")
end)

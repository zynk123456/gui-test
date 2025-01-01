-- Make sure to run this script in a private server with appropriate permissions

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local espEnabled = false  -- Flag to toggle ESP

-- GUI variables
local guiOpen = false
local gui, topBar, checkbox, espButton

-- Create GUI elements
local function createGui()
    -- Create the main GUI container
    gui = Instance.new("ScreenGui")
    gui.Parent = game.Players.LocalPlayer.PlayerGui

    -- Create the top bar for the GUI
    topBar = Instance.new("Frame")
    topBar.Size = UDim2.new(0, 300, 0, 40)
    topBar.Position = UDim2.new(0.5, -150, 0, 50)
    topBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    topBar.Parent = gui

    local topBarText = Instance.new("TextLabel")
    topBarText.Text = "ZynkESP"
    topBarText.Size = UDim2.new(1, 0, 1, 0)
    topBarText.TextColor3 = Color3.fromRGB(255, 255, 255)
    topBarText.BackgroundTransparency = 1
    topBarText.Parent = topBar

    -- Create the Enable ESP button and checkbox
    local espButton = Instance.new("TextButton")
    espButton.Size = UDim2.new(0, 200, 0, 30)
    espButton.Position = UDim2.new(0.5, -100, 0, 100)
    espButton.Text = "Enable ESP"
    espButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    espButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    espButton.Parent = gui

    checkbox = Instance.new("TextButton")
    checkbox.Size = UDim2.new(0, 20, 0, 20)
    checkbox.Position = UDim2.new(0.5, 40, 0, 100)
    checkbox.Text = "X"
    checkbox.TextColor3 = Color3.fromRGB(255, 255, 255)
    checkbox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    checkbox.Parent = gui

    -- Toggle ESP when the button is clicked
    espButton.MouseButton1Click:Connect(function()
        espEnabled = not espEnabled
        if espEnabled then
            checkbox.Text = "✓"  -- Checkbox checked
        else
            checkbox.Text = "X"  -- Checkbox unchecked
        end
    end)
end

-- Function to create ESP box around players
local function createEspBox(player)
    local box = Instance.new("Frame")
    box.Size = UDim2.new(0, 100, 0, 100) -- Default size for ESP box
    box.Position = UDim2.new(0, player.Character.HumanoidRootPart.Position.X, 0, player.Character.HumanoidRootPart.Position.Y)
    box.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green color for ESP
    box.Parent = gui
end

-- Update the ESP box position for all players
local function updateEsp()
    for _, player in ipairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local box = createEspBox(player)
            -- You can update the position of the box based on the player's position
            box.Position = UDim2.new(0, player.Character.HumanoidRootPart.Position.X, 0, player.Character.HumanoidRootPart.Position.Y)
        end
    end
end

-- Toggle the GUI open/close when "V" is pressed
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.V then
        guiOpen = not guiOpen
        gui.Enabled = guiOpen
    end
end)

-- Create the GUI when the script runs
createGui()

-- Continuously update ESP if enabled
RunService.Heartbeat:Connect(function()
    if espEnabled then
        updateEsp()
    end
end)

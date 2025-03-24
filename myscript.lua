local player = game.Players.LocalPlayer
local rs = game.ReplicatedStorage
local playerGui = player.PlayerGui
local userInputService = game:GetService("UserInputService")

local gui = Instance.new("ScreenGui", playerGui)
local frame = Instance.new("Frame", gui)

local guns = rs.Items.gun
guns:FindFirstChild("M24").TextureId = "rbxassetid://73387965982603"
guns:FindFirstChild("Crossbow").TextureId = "rbxassetid://89240642376715"
guns:FindFirstChild("Double Barrel").TextureId = "rbxassetid://83625765638039"
guns:FindFirstChild("Firework Launcher").TextureId = "rbxassetid://88284317820274"
guns:FindFirstChild("Remington").TextureId = "rbxassetid://101271375930409"
guns:FindFirstChild("Sawnoff").TextureId = "rbxassetid://90588305892707"
guns:FindFirstChild("RPG").TextureId = "rbxassetid://138426000142807"
guns:FindFirstChild("Hunting Rifle").TextureId = "rbxassetid://81547704965153"

gui.Name = "Goofy"

local uiCorner1 = Instance.new("UICorner")

uiCorner1.Parent = frame
uiCorner1.CornerRadius = UDim.new(.05, 0)

frame.Size = UDim2.new(0.2, 0, 0.35, 0)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(0, 100, 255)

local scrollingFrame = Instance.new("ScrollingFrame")
local exit = Instance.new("TextButton")
local gridLayout = Instance.new("UIGridLayout")


scrollingFrame.Size = UDim2.new(.9, 0, .9, 0) 
scrollingFrame.CanvasSize = UDim2.new(0, 0, 2, 0) 
scrollingFrame.Position = UDim2.new(0.05, 0, 0.05, 0)
scrollingFrame.ScrollBarThickness = 5 
scrollingFrame.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
scrollingFrame.Parent = frame

local uiCorner2 = Instance.new("UICorner")
uiCorner2.Parent = exit
uiCorner2.CornerRadius = UDim.new(.3, 0)

exit.Size = UDim2.new(.1, 0, .1, 0)
exit.Position = UDim2.new(.95, 0, -.04, 0)
exit.TextScaled = true
exit.Font = Enum.Font.SourceSansBold
exit.Text = "X"
exit.TextColor3 = Color3.fromRGB(255, 255, 255)
exit.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exit.Parent = frame

gridLayout.CellSize = UDim2.new(0.4, 0, 0.10, 0) 
gridLayout.CellPadding = UDim2.new(0.023, 0, 0.025, 0) 
gridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
gridLayout.Parent = scrollingFrame

local gunFolder = rs:FindFirstChild("Items") and rs.Items:FindFirstChild("gun")
if gunFolder then
    for _, v in ipairs(gunFolder:GetChildren()) do
        local gunFrame = Instance.new("TextButton")
        local gunImage = Instance.new("ImageLabel")
        local gunText = Instance.new("TextLabel")
        local uiCorner = Instance.new("UICorner")
        gunFrame.Name = v.Name .. " Frame"
        gunFrame.TextTransparency = 1
        gunFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        gunFrame.Size = UDim2.new(0.5, 0, 0.5, 0)
        gunFrame.Parent = scrollingFrame

        gunText.TextColor3 = Color3.fromRGB(255, 255, 255)
        gunText.TextScaled = true
        gunText.Position = UDim2.new(.24, 0, 0, 0)
        gunText.BackgroundTransparency = 1
        gunText.Text = v.Name
        gunText.Font = Enum.Font.SourceSansBold 
        gunText.Size = UDim2.new(0.5, 0, 0.5, 0)
        gunText.Parent = gunFrame

        gunImage.Size = UDim2.new(0.5, 0, 0.7, 0)
        gunImage.Position = UDim2.new(.24, 0, .32, 0)
        gunImage.BackgroundTransparency = 1
        gunImage.Image = v.TextureId
        gunImage.Parent = gunFrame

        uiCorner.Parent = gunFrame
        uiCorner.CornerRadius = UDim.new(.15, 0)

        gunFrame.MouseButton1Click:Connect(function()
            v:Clone().Parent = player.Backpack
        end)
    end
else
    warn("rs.Items.gun not found!")
end

exit.MouseButton1Click:Connect(function()
    gui.Enabled = false
end)

local isDragging = false
local dragStart = nil
local startPos = nil

frame.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        dragStart = input.Position
        startPos = frame.Position
    elseif input.UserInputType == Enum.KeyCode.RightShift then
       gui.Enabled = not gui.Enabled
    end
end)

frame.InputChanged:Connect(function(input)
    if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
    end
end)

userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Enum.KeyCode.RightShift then
       gui.Enabled = not gui.Enabled
    end
end)
